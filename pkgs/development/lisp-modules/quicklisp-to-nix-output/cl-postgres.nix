args @ { fetchurl, ... }:
rec {
  baseName = ''cl-postgres'';
  version = ''postmodern-20181018-git'';

  parasites = [ "cl-postgres/simple-date-tests" "cl-postgres/tests" ];

  description = ''Low-level client library for PostgreSQL'';

  deps = [ args."fiveam" args."md5" args."simple-date_slash_postgres-glue" args."split-sequence" args."usocket" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/postmodern/2018-10-18/postmodern-20181018-git.tgz'';
    sha256 = ''031wcmqxcr25mbfphjy6klbbw4y8c6wk6d4870p65jz7ay5cra6m'';
  };

  packageName = "cl-postgres";

  asdFilesToKeep = ["cl-postgres.asd"];
  overrides = x: x;
}
/* (SYSTEM cl-postgres DESCRIPTION Low-level client library for PostgreSQL
    SHA256 031wcmqxcr25mbfphjy6klbbw4y8c6wk6d4870p65jz7ay5cra6m URL
    http://beta.quicklisp.org/archive/postmodern/2018-10-18/postmodern-20181018-git.tgz
    MD5 9f5dfbbfad75900274f321f4468f670c NAME cl-postgres FILENAME cl-postgres
    DEPS
    ((NAME fiveam FILENAME fiveam) (NAME md5 FILENAME md5)
     (NAME simple-date/postgres-glue FILENAME simple-date_slash_postgres-glue)
     (NAME split-sequence FILENAME split-sequence)
     (NAME usocket FILENAME usocket))
    DEPENDENCIES (fiveam md5 simple-date/postgres-glue split-sequence usocket)
    VERSION postmodern-20181018-git SIBLINGS (postmodern s-sql simple-date)
    PARASITES (cl-postgres/simple-date-tests cl-postgres/tests)) */
