args @ { fetchurl, ... }:
rec {
  baseName = ''quri'';
  version = ''20181018-git'';

  description = ''Yet another URI library for Common Lisp'';

  deps = [ args."alexandria" args."babel" args."cl-utilities" args."split-sequence" args."trivial-features" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/quri/2018-10-18/quri-20181018-git.tgz'';
    sha256 = ''07malj5vy993hp1jk3p9m5c21d806h43qpv0546pz303sbin350x'';
  };

  packageName = "quri";

  asdFilesToKeep = ["quri.asd"];
  overrides = x: x;
}
/* (SYSTEM quri DESCRIPTION Yet another URI library for Common Lisp SHA256
    07malj5vy993hp1jk3p9m5c21d806h43qpv0546pz303sbin350x URL
    http://beta.quicklisp.org/archive/quri/2018-10-18/quri-20181018-git.tgz MD5
    68b364f864d95f1e2abcede1fd1627b3 NAME quri FILENAME quri DEPS
    ((NAME alexandria FILENAME alexandria) (NAME babel FILENAME babel)
     (NAME cl-utilities FILENAME cl-utilities)
     (NAME split-sequence FILENAME split-sequence)
     (NAME trivial-features FILENAME trivial-features))
    DEPENDENCIES
    (alexandria babel cl-utilities split-sequence trivial-features) VERSION
    20181018-git SIBLINGS (quri-test) PARASITES NIL) */
