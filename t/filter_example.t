# Test use of prefilter and postfilter parameters 
use strict;
use Carp;
use Perl::Tidy;
use Test;

BEGIN {
    plan tests => 1;
}

my $source = <<'ENDS';
use Method::Signatures::Simple;

 method foo1 { $self->bar }

       # with signature
    method foo2($bar, %opts) { $self->bar(reverse $bar) if $opts{rev};
    }

    # attributes
    method foo3 : lvalue { $self->{foo} 
}

 # change invocant name
    method 
foo4 ($class: $bar) { $class->bar($bar) }
ENDS

my $expect = <<'ENDE';
use Method::Signatures::Simple;
method foo1 { $self->bar }

# with signature
method foo2 ( $bar, %opts ) {
    $self->bar( reverse $bar ) if $opts{rev};
}

# attributes
method foo3 : lvalue {
    $self->{foo};
}

# change invocant name
method foo4 ($class: $bar) { $class->bar($bar) }
ENDE

my $output;
my $stderr_string;
my $errorfile_string;
my $err = Perl::Tidy::perltidy(
    argv => '',
    prefilter =>
      sub { $_ = $_[0]; s/^\s*method\s+(\w.*)/sub METHOD_$1/gm; return $_ },
    postfilter  => sub { $_ = $_[0]; s/sub\s+METHOD_/method /gm; return $_ },
    source      => \$source,
    destination => \$output,
    argv      => '',                   # for safety; hide any ARGV from perltidy
    stderr    => \$stderr_string,
    errorfile => \$errorfile_string,   # not used when -se flag is set
);
if ( $err || $stderr_string || $errorfile_string ) {
    ok(0);
}
else {
    ok( $output, $expect );
}