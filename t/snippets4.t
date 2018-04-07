# **This script was automatically generated**
# Created with: ./make_t.pl
# Thu Apr  5 07:31:23 2018

# To locate test #13 for example, search for the string '#13'

use strict;
use Test;
use Carp;
use Perl::Tidy;
my $rparams;
my $rsources;
my $rtests;

BEGIN {

    #####################################
    # SECTION 1: Parameter combinations #
    #####################################
    $rparams = {
        'def'  => "",
        'gnu'  => "-gnu",
        'html' => <<'----------',
-fmt="html"
-nts
----------
        'iscl' => "-iscl",
    };

    ######################
    # SECTION 2: Sources #
    ######################
    $rsources = {

        'gnu2' => <<'----------',
$search_mb = $menu_bar->Menubutton(
    '-text'        => 'Search',
    '-relief'      => 'raised',
    '-borderwidth' => 2,
)->pack(
    '-side' => 'left',
    '-padx' => 2
);
----------

        'gnu3' => <<'----------',
$output_rules .= &file_contents_with_transform( 's/\@TEXI\@/' . $info_cursor . '/g; ' . 's/\@VTI\@/' . $vti . '/g; ' . 's/\@VTEXI\@/' . $vtexi . '/g;' . 's,\@MDDIR\@,' . $conf_pat . ',g;', 'texi-vers');
----------

        'gnu4' => <<'----------',
my $mzef = Bio::Tools::MZEF->new( '-file' => Bio::Root::IO->catfile("t", "genomic-seq.mzef"));
----------

        'hanging_side_comments1' => <<'----------',
$valuestr .= $value . " " ;    # with a trailing space in case there are multiple values
   # for this tag (allowed in GFF2 and .ace format)
----------

        'hanging_side_comments2' => <<'----------',
# keep '=' lined up even with hanging side comments
$ax=1;# side comment
 # hanging side comment
$boondoggle=5;# side comment
$beetle=5;# side comment
 # hanging side comment
$d=3;
----------

        'hash1' => <<'----------',
%TV=(flintstones=>{series=>"flintstones",nights=>[qw(monday thursday friday)],
members=>[{name=>"fred",role=>"lead",age=>36,},{name=>"wilma",role=>"wife",
age=>31,},{name=>"pebbles",role=>"kid",age=>4,},],},jetsons=>{series=>"jetsons",
nights=>[qw(wednesday saturday)],members=>[{name=>"george",role=>"lead",age=>41,
},{name=>"jane",role=>"wife",age=>39,},{name=>"elroy",role=>"kid",age=>9,},],},
simpsons=>{series=>"simpsons",nights=>[qw(monday)],members=>[{name=>"homer",
role=>"lead",age=>34,},{name=>"marge",role=>"wife",age=>37,},{name=>"bart",
role=>"kid",age=>11,},],},);
----------

        'hashbang' => <<'----------',
#!/usr/bin/perl
----------

        'here1' => <<'----------',
is( <<~`END`, "ok\n", '<<~`HEREDOC`' );
  $Perl -le "print 'ok'"
  END
----------

        'html1' => <<'----------',
if   ( $editlblk eq 1 ) { $editlblk = "on";  $editlblkchecked = "checked" }
else                    { $editlblk = "off"; $editlblkchecked = "unchecked" }
----------

        'ident1' => <<'----------',
package A;
sub new  {
   print "A::new! $_[0] $_[1]\n";
   return 1;
}
package main;
my $scanner = new A::() ;
$scanner = new A::;
$scanner = new A 'a';
----------

        'if1' => <<'----------',
# one-line blocks
if ( $editlblk eq 1 ) { $editlblk = "on"; $editlblkchecked = "checked" }
else { $editlblk = "off"; $editlblkchecked = "unchecked" }
----------

        'iscl1' => <<'----------',
	# -iscl will not allow alignment of hanging side comments (currently)
        $gsmatch = ( $sub >= 50 ) ? "equal" : "lequal"; # Force an equal match for
               # dev, but be more forgiving
               # for releases
----------

        'label1' => <<'----------',
INIT : { 
$a++;
print "looping with label INIT:, a=$a\n";
  if ($a<10) {goto INIT}
}
package: {
    print "hello!\n";
}
sub: {
    print "hello!\n";
}
----------

        'lextest1' => <<'----------',
$_= <<'EOL';
   $url = new URI::URL "http://www/";   die if $url eq "xXx";
EOL
LOOP:{print(" digits"),redo LOOP if/\G\d+\b[,.;]?\s*/gc;print(" lowercase"),
redo LOOP if/\G[a-z]+\b[,.;]?\s*/gc;print(" UPPERCASE"), redo 
LOOP if/\G[A-Z]+\b[,.;]?\s*/gc;print(" Capitalized"),
redo LOOP if/\G[A-Z][a-z]+\b[,.;]?\s*/gc;
print(" MiXeD"),redo LOOP if/\G[A-Za-z]+\b[,.;]?\s*/gc;print(
" alphanumeric"),redo LOOP if/\G[A-Za-z0-9]+\b[,.;]?\s*/gc;print(" line-noise"
),redo LOOP if/\G[^A-Za-z0-9]+/gc;print". That's all!\n";}
----------

        'list1' => <<'----------',
%height=("letter",27.9, "legal",35.6, "arche",121.9, "archd",91.4, "archc",61,
 "archb",45.7, "archa",30.5, "flsa",33, "flse",33, "halfletter",21.6,
 "11x17",43.2, "ledger",27.9);
%width=("letter",21.6, "legal",21.6, "arche",91.4, "archd",61, "archc",45.7,
 "archb",30.5, "archa",22.9, "flsa",21.6, "flse",21.6, "halfletter",14,
 "11x17",27.9, "ledger",43.2);
----------
    };

    ##############################
    # SECTION 3: Expected output #
    ##############################
    $rtests = {

        'gnu2.def' => {
            source => "gnu2",
            params => "def",
            expect => <<'#1...........',
$search_mb = $menu_bar->Menubutton(
    '-text'        => 'Search',
    '-relief'      => 'raised',
    '-borderwidth' => 2,
)->pack(
    '-side' => 'left',
    '-padx' => 2
);
#1...........
        },

        'gnu2.gnu' => {
            source => "gnu2",
            params => "gnu",
            expect => <<'#2...........',
$search_mb = $menu_bar->Menubutton(
                                   '-text'        => 'Search',
                                   '-relief'      => 'raised',
                                   '-borderwidth' => 2,
  )->pack('-side' => 'left',
          '-padx' => 2);
#2...........
        },

        'gnu3.def' => {
            source => "gnu3",
            params => "def",
            expect => <<'#3...........',
$output_rules .= &file_contents_with_transform(
    's/\@TEXI\@/'
      . $info_cursor . '/g; '
      . 's/\@VTI\@/'
      . $vti . '/g; '
      . 's/\@VTEXI\@/'
      . $vtexi . '/g;'
      . 's,\@MDDIR\@,'
      . $conf_pat . ',g;',
    'texi-vers'
);
#3...........
        },

        'gnu3.gnu' => {
            source => "gnu3",
            params => "gnu",
            expect => <<'#4...........',
$output_rules .=
  &file_contents_with_transform(
                                's/\@TEXI\@/'
                                  . $info_cursor . '/g; '
                                  . 's/\@VTI\@/'
                                  . $vti . '/g; '
                                  . 's/\@VTEXI\@/'
                                  . $vtexi . '/g;'
                                  . 's,\@MDDIR\@,'
                                  . $conf_pat . ',g;',
                                'texi-vers'
                               );
#4...........
        },

        'gnu4.def' => {
            source => "gnu4",
            params => "def",
            expect => <<'#5...........',
my $mzef = Bio::Tools::MZEF->new(
    '-file' => Bio::Root::IO->catfile( "t", "genomic-seq.mzef" ) );
#5...........
        },

        'gnu4.gnu' => {
            source => "gnu4",
            params => "gnu",
            expect => <<'#6...........',
my $mzef = Bio::Tools::MZEF->new(
                    '-file' => Bio::Root::IO->catfile("t", "genomic-seq.mzef"));
#6...........
        },

        'hanging_side_comments1.def' => {
            source => "hanging_side_comments1",
            params => "def",
            expect => <<'#7...........',
$valuestr .=
  $value . " ";    # with a trailing space in case there are multiple values
                   # for this tag (allowed in GFF2 and .ace format)
#7...........
        },

        'hanging_side_comments2.def' => {
            source => "hanging_side_comments2",
            params => "def",
            expect => <<'#8...........',
# keep '=' lined up even with hanging side comments
$ax         = 1;    # side comment
                    # hanging side comment
$boondoggle = 5;    # side comment
$beetle     = 5;    # side comment
                    # hanging side comment
$d          = 3;
#8...........
        },

        'hash1.def' => {
            source => "hash1",
            params => "def",
            expect => <<'#9...........',
%TV = (
    flintstones => {
        series  => "flintstones",
        nights  => [qw(monday thursday friday)],
        members => [
            { name => "fred", role => "lead", age => 36, },
            {
                name => "wilma",
                role => "wife",
                age  => 31,
            },
            { name => "pebbles", role => "kid", age => 4, },
        ],
    },
    jetsons => {
        series  => "jetsons",
        nights  => [qw(wednesday saturday)],
        members => [
            {
                name => "george",
                role => "lead",
                age  => 41,
            },
            { name => "jane",  role => "wife", age => 39, },
            { name => "elroy", role => "kid",  age => 9, },
        ],
    },
    simpsons => {
        series  => "simpsons",
        nights  => [qw(monday)],
        members => [
            {
                name => "homer",
                role => "lead",
                age  => 34,
            },
            { name => "marge", role => "wife", age => 37, },
            {
                name => "bart",
                role => "kid",
                age  => 11,
            },
        ],
    },
);
#9...........
        },

        'hashbang.def' => {
            source => "hashbang",
            params => "def",
            expect => <<'#10...........',
#!/usr/bin/perl
#10...........
        },

        'here1.def' => {
            source => "here1",
            params => "def",
            expect => <<'#11...........',
is( <<~`END`, "ok\n", '<<~`HEREDOC`' );
  $Perl -le "print 'ok'"
  END
#11...........
        },

        'html1.def' => {
            source => "html1",
            params => "def",
            expect => <<'#12...........',
if   ( $editlblk eq 1 ) { $editlblk = "on";  $editlblkchecked = "checked" }
else                    { $editlblk = "off"; $editlblkchecked = "unchecked" }
#12...........
        },

        'html1.html' => {
            source => "html1",
            params => "html",
            expect => <<'#13...........',
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Generated by perltidy  -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>perltidy</title>
<style type="text/css">
<!--
/* default style sheet generated by perltidy */
body {background: #FFFFFF; color: #000000}
pre { color: #000000; 
      background: #FFFFFF;
      font-family: courier;
    } 

.c  { color: #228B22;} /* comment */
.cm { color: #000000;} /* comma */
.co { color: #000000;} /* colon */
.h  { color: #CD5555; font-weight:bold;} /* here-doc-target */
.hh { color: #CD5555; font-style:italic;} /* here-doc-text */
.i  { color: #00688B;} /* identifier */
.j  { color: #CD5555; font-weight:bold;} /* label */
.k  { color: #8B008B; font-weight:bold;} /* keyword */
.m  { color: #FF0000; font-weight:bold;} /* subroutine */
.n  { color: #B452CD;} /* numeric */
.p  { color: #000000;} /* paren */
.pd { color: #228B22; font-style:italic;} /* pod-text */
.pu { color: #000000;} /* punctuation */
.q  { color: #CD5555;} /* quote */
.s  { color: #000000;} /* structure */
.sc { color: #000000;} /* semicolon */
.v  { color: #B452CD;} /* v-string */
.w  { color: #000000;} /* bareword */
-->
</style>
</head>
<body>
<a name="-top-"></a>
<h1>perltidy</h1>
<hr />
<!-- contents of filename: perltidy -->
<pre>
<span class="k">if</span>   <span class="s">(</span> <span class="i">$editlblk</span> <span class="k">eq</span> <span class="n">1</span> <span class="s">)</span> <span class="s">{</span> <span class="i">$editlblk</span> = <span class="q">&quot;on&quot;</span><span class="sc">;</span>  <span class="i">$editlblkchecked</span> = <span class="q">&quot;checked&quot;</span> <span class="s">}</span>
<span class="k">else</span>                    <span class="s">{</span> <span class="i">$editlblk</span> = <span class="q">&quot;off&quot;</span><span class="sc">;</span> <span class="i">$editlblkchecked</span> = <span class="q">&quot;unchecked&quot;</span> <span class="s">}</span>
</pre>
</body>
</html>
#13...........
        },

        'ident1.def' => {
            source => "ident1",
            params => "def",
            expect => <<'#14...........',
package A;

sub new {
    print "A::new! $_[0] $_[1]\n";
    return 1;
}

package main;
my $scanner = new A::();
$scanner = new A::;
$scanner = new A 'a';
#14...........
        },

        'if1.def' => {
            source => "if1",
            params => "def",
            expect => <<'#15...........',
# one-line blocks
if   ( $editlblk eq 1 ) { $editlblk = "on";  $editlblkchecked = "checked" }
else                    { $editlblk = "off"; $editlblkchecked = "unchecked" }
#15...........
        },

        'iscl1.def' => {
            source => "iscl1",
            params => "def",
            expect => <<'#16...........',
        # -iscl will not allow alignment of hanging side comments (currently)
        $gsmatch =
          ( $sub >= 50 ) ? "equal" : "lequal";    # Force an equal match for
                                                  # dev, but be more forgiving
                                                  # for releases
#16...........
        },

        'iscl1.iscl' => {
            source => "iscl1",
            params => "iscl",
            expect => <<'#17...........',
        # -iscl will not allow alignment of hanging side comments (currently)
        $gsmatch = ( $sub >= 50 ) ? "equal" : "lequal"; # Force an equal match for
               # dev, but be more forgiving
               # for releases
#17...........
        },

        'label1.def' => {
            source => "label1",
            params => "def",
            expect => <<'#18...........',
INIT: {
    $a++;
    print "looping with label INIT:, a=$a\n";
    if ( $a < 10 ) { goto INIT }
}
package: {
    print "hello!\n";
}
sub: {
    print "hello!\n";
}
#18...........
        },

        'lextest1.def' => {
            source => "lextest1",
            params => "def",
            expect => <<'#19...........',
$_ = <<'EOL';
   $url = new URI::URL "http://www/";   die if $url eq "xXx";
EOL
LOOP: {
    print(" digits"),       redo LOOP if /\G\d+\b[,.;]?\s*/gc;
    print(" lowercase"),    redo LOOP if /\G[a-z]+\b[,.;]?\s*/gc;
    print(" UPPERCASE"),    redo LOOP if /\G[A-Z]+\b[,.;]?\s*/gc;
    print(" Capitalized"),  redo LOOP if /\G[A-Z][a-z]+\b[,.;]?\s*/gc;
    print(" MiXeD"),        redo LOOP if /\G[A-Za-z]+\b[,.;]?\s*/gc;
    print(" alphanumeric"), redo LOOP if /\G[A-Za-z0-9]+\b[,.;]?\s*/gc;
    print(" line-noise"),   redo LOOP if /\G[^A-Za-z0-9]+/gc;
    print ". That's all!\n";
}
#19...........
        },

        'list1.def' => {
            source => "list1",
            params => "def",
            expect => <<'#20...........',
%height = (
    "letter",     27.9, "legal", 35.6, "arche",  121.9,
    "archd",      91.4, "archc", 61,   "archb",  45.7,
    "archa",      30.5, "flsa",  33,   "flse",   33,
    "halfletter", 21.6, "11x17", 43.2, "ledger", 27.9
);
%width = (
    "letter",     21.6, "legal", 21.6, "arche",  91.4,
    "archd",      61,   "archc", 45.7, "archb",  30.5,
    "archa",      22.9, "flsa",  21.6, "flse",   21.6,
    "halfletter", 14,   "11x17", 27.9, "ledger", 43.2
);
#20...........
        },
    };

    my $ntests = 0 + keys %{$rtests};
    plan tests => $ntests;
}

foreach my $key ( sort keys %{$rtests} ) {
    my $output;
    my $sname  = $rtests->{$key}->{source};
    my $expect = $rtests->{$key}->{expect};
    my $pname  = $rtests->{$key}->{params};
    my $source = $rsources->{$sname};
    my $params = defined($pname) ? $rparams->{$pname} : "";
    my $stderr_string;
    my $errorfile_string;
    my $err = Perl::Tidy::perltidy(
        source      => \$source,
        destination => \$output,
        perltidyrc  => \$params,
        argv        => '',             # for safety; hide any ARGV from perltidy
        stderr      => \$stderr_string,
        errorfile => \$errorfile_string,    # not used when -se flag is set
    );
    if ( $err || $stderr_string || $errorfile_string ) {
        if ($err) {
            print STDERR
"This error received calling Perl::Tidy with '$sname' + '$pname'\n";
            ok( !$err );
        }
        if ($stderr_string) {
            print STDERR "---------------------\n";
            print STDERR "<<STDERR>>\n$stderr_string\n";
            print STDERR "---------------------\n";
            print STDERR
"This error received calling Perl::Tidy with '$sname' + '$pname'\n";
            ok( !$stderr_string );
        }
        if ($errorfile_string) {
            print STDERR "---------------------\n";
            print STDERR "<<.ERR file>>\n$errorfile_string\n";
            print STDERR "---------------------\n";
            print STDERR
"This error received calling Perl::Tidy with '$sname' + '$pname'\n";
            ok( !$errorfile_string );
        }
    }
    else {
        ok( $output, $expect );
    }
}