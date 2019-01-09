args @ { fetchurl, ... }:
rec {
  baseName = ''woo'';
  version = ''20181018-git'';

  description = ''An asynchronous HTTP server written in Common Lisp'';

  deps = [ args."alexandria" args."babel" args."bordeaux-threads" args."cffi" args."cffi-grovel" args."cffi-toolchain" args."cl-utilities" args."clack-socket" args."fast-http" args."fast-io" args."flexi-streams" args."lev" args."proc-parse" args."quri" args."smart-buffer" args."split-sequence" args."static-vectors" args."swap-bytes" args."trivial-features" args."trivial-gray-streams" args."trivial-utf-8" args."vom" args."xsubseq" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/woo/2018-10-18/woo-20181018-git.tgz'';
    sha256 = ''1iv44b9j64j9z5wpiwdbbbgyaw7i5pfy7mdv92gh9kx75014kdzk'';
  };

  packageName = "woo";

  asdFilesToKeep = ["woo.asd"];
  overrides = x: x;
}
/* (SYSTEM woo DESCRIPTION An asynchronous HTTP server written in Common Lisp
    SHA256 1iv44b9j64j9z5wpiwdbbbgyaw7i5pfy7mdv92gh9kx75014kdzk URL
    http://beta.quicklisp.org/archive/woo/2018-10-18/woo-20181018-git.tgz MD5
    e58d7c8873629eacf95e1fff0b6a4982 NAME woo FILENAME woo DEPS
    ((NAME alexandria FILENAME alexandria) (NAME babel FILENAME babel)
     (NAME bordeaux-threads FILENAME bordeaux-threads)
     (NAME cffi FILENAME cffi) (NAME cffi-grovel FILENAME cffi-grovel)
     (NAME cffi-toolchain FILENAME cffi-toolchain)
     (NAME cl-utilities FILENAME cl-utilities)
     (NAME clack-socket FILENAME clack-socket)
     (NAME fast-http FILENAME fast-http) (NAME fast-io FILENAME fast-io)
     (NAME flexi-streams FILENAME flexi-streams) (NAME lev FILENAME lev)
     (NAME proc-parse FILENAME proc-parse) (NAME quri FILENAME quri)
     (NAME smart-buffer FILENAME smart-buffer)
     (NAME split-sequence FILENAME split-sequence)
     (NAME static-vectors FILENAME static-vectors)
     (NAME swap-bytes FILENAME swap-bytes)
     (NAME trivial-features FILENAME trivial-features)
     (NAME trivial-gray-streams FILENAME trivial-gray-streams)
     (NAME trivial-utf-8 FILENAME trivial-utf-8) (NAME vom FILENAME vom)
     (NAME xsubseq FILENAME xsubseq))
    DEPENDENCIES
    (alexandria babel bordeaux-threads cffi cffi-grovel cffi-toolchain
     cl-utilities clack-socket fast-http fast-io flexi-streams lev proc-parse
     quri smart-buffer split-sequence static-vectors swap-bytes
     trivial-features trivial-gray-streams trivial-utf-8 vom xsubseq)
    VERSION 20181018-git SIBLINGS (clack-handler-woo woo-test) PARASITES NIL) */
