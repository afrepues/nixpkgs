args @ { fetchurl, ... }:
rec {
  baseName = ''stumpwm'';
  version = ''20181018-git'';

  description = ''A tiling, keyboard driven window manager'';

  deps = [ args."alexandria" args."cl-ppcre" args."clx" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/stumpwm/2018-10-18/stumpwm-20181018-git.tgz'';
    sha256 = ''0h05crsl7h229h02b2h3vqydjhfbvbwgqnra12bw26agv34c7m7d'';
  };

  packageName = "stumpwm";

  asdFilesToKeep = ["stumpwm.asd"];
  overrides = x: x;
}
/* (SYSTEM stumpwm DESCRIPTION A tiling, keyboard driven window manager SHA256
    0h05crsl7h229h02b2h3vqydjhfbvbwgqnra12bw26agv34c7m7d URL
    http://beta.quicklisp.org/archive/stumpwm/2018-10-18/stumpwm-20181018-git.tgz
    MD5 655e447719ce9ad0532cc68006041b8b NAME stumpwm FILENAME stumpwm DEPS
    ((NAME alexandria FILENAME alexandria) (NAME cl-ppcre FILENAME cl-ppcre)
     (NAME clx FILENAME clx))
    DEPENDENCIES (alexandria cl-ppcre clx) VERSION 20181018-git SIBLINGS
    (stumpwm-tests) PARASITES NIL) */
