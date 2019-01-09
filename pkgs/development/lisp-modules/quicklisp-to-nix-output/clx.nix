args @ { fetchurl, ... }:
rec {
  baseName = ''clx'';
  version = ''20181018-git'';

  parasites = [ "clx/test" ];

  description = ''An implementation of the X Window System protocol in Lisp.'';

  deps = [ args."fiasco" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/clx/2018-10-18/clx-20181018-git.tgz'';
    sha256 = ''0hzr4kinp85j0z2vxymxkvwxkg105bmna1wyavxfpl3l08nv2shg'';
  };

  packageName = "clx";

  asdFilesToKeep = ["clx.asd"];
  overrides = x: x;
}
/* (SYSTEM clx DESCRIPTION
    An implementation of the X Window System protocol in Lisp. SHA256
    0hzr4kinp85j0z2vxymxkvwxkg105bmna1wyavxfpl3l08nv2shg URL
    http://beta.quicklisp.org/archive/clx/2018-10-18/clx-20181018-git.tgz MD5
    0f3f15cf651ffa2fa812f70c17d5b06c NAME clx FILENAME clx DEPS
    ((NAME fiasco FILENAME fiasco)) DEPENDENCIES (fiasco) VERSION 20181018-git
    SIBLINGS NIL PARASITES (clx/test)) */
