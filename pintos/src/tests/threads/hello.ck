# -*- perl -*-
use strict;
use warnings;
use tests::tests;
check_expected ([<<'EOF']);
(hello) begin
Hello Pintos
(hello) end
EOF
pass;