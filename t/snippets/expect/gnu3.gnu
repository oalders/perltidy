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
