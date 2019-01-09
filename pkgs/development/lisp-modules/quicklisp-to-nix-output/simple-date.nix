args @ { fetchurl, ... }:
rec {
  baseName = ''simple-date'';
  version = ''postmodern-20181018-git'';

  parasites = [ "simple-date/postgres-glue" "simple-date/tests" ];

  description = '''';

  deps = [ args."cl-postgres" args."fiveam" args."md5" args."usocket" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/postmodern/2018-10-18/postmodern-20181018-git.tgz'';
    sha256 = ''031wcmqxcr25mbfphjy6klbbw4y8c6wk6d4870p65jz7ay5cra6m'';
  };

  packageName = "simple-date";

  asdFilesToKeep = ["simple-date.asd"];
  overrides = x: x;
}
/* (SYSTEM simple-date DESCRIPTION NIL SHA256
    031wcmqxcr25mbfphjy6klbbw4y8c6wk6d4870p65jz7ay5cra6m URL
    http://beta.quicklisp.org/archive/postmodern/2018-10-18/postmodern-20181018-git.tgz
    MD5 9f5dfbbfad75900274f321f4468f670c NAME simple-date FILENAME simple-date
    DEPS
    ((NAME cl-postgres FILENAME cl-postgres) (NAME fiveam FILENAME fiveam)
     (NAME md5 FILENAME md5) (NAME usocket FILENAME usocket))
    DEPENDENCIES (cl-postgres fiveam md5 usocket) VERSION
    postmodern-20181018-git SIBLINGS (cl-postgres postmodern s-sql) PARASITES
    (simple-date/postgres-glue simple-date/tests)) */
