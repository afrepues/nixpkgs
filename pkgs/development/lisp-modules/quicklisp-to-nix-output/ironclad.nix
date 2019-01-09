args @ { fetchurl, ... }:
rec {
  baseName = ''ironclad'';
  version = ''v0.43'';

  parasites = [ "ironclad/tests" ];

  description = ''A cryptographic toolkit written in pure Common Lisp'';

  deps = [ args."nibbles" args."rt" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/ironclad/2018-10-18/ironclad-v0.43.tgz'';
    sha256 = ''0cg3891vq9qvizfmn12zh02n96xswv7f5xb9wkzadi1fc400dz4i'';
  };

  packageName = "ironclad";

  asdFilesToKeep = ["ironclad.asd"];
  overrides = x: x;
}
/* (SYSTEM ironclad DESCRIPTION
    A cryptographic toolkit written in pure Common Lisp SHA256
    0cg3891vq9qvizfmn12zh02n96xswv7f5xb9wkzadi1fc400dz4i URL
    http://beta.quicklisp.org/archive/ironclad/2018-10-18/ironclad-v0.43.tgz
    MD5 5f70c962fc49666a96646a442072ce4a NAME ironclad FILENAME ironclad DEPS
    ((NAME nibbles FILENAME nibbles) (NAME rt FILENAME rt)) DEPENDENCIES
    (nibbles rt) VERSION v0.43 SIBLINGS (ironclad-text) PARASITES
    (ironclad/tests)) */
