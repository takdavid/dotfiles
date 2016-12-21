history | perl -ane 's/^[\s\d]*//; print if ($#F > 1 && $F[1] =~ m/brew|pip|pip3|port|easy_install|npm|xcode-select/);' | uniq
