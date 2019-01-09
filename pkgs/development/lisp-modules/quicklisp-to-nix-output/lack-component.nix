args @ { fetchurl, ... }:
rec {
  baseName = ''lack-component'';
  version = ''lack-20181018-git'';

  description = '''';

  deps = [ ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/lack/2018-10-18/lack-20181018-git.tgz'';
    sha256 = ''005cnxsvfsn3422sgshbvkpah95m3zmahfbxbcwp80gvmxjh0qja'';
  };

  packageName = "lack-component";

  asdFilesToKeep = ["lack-component.asd"];
  overrides = x: x;
}
/* (SYSTEM lack-component DESCRIPTION NIL SHA256
    005cnxsvfsn3422sgshbvkpah95m3zmahfbxbcwp80gvmxjh0qja URL
    http://beta.quicklisp.org/archive/lack/2018-10-18/lack-20181018-git.tgz MD5
    8ff6d78aee1476836689cd7839b23400 NAME lack-component FILENAME
    lack-component DEPS NIL DEPENDENCIES NIL VERSION lack-20181018-git SIBLINGS
    (lack-middleware-accesslog lack-middleware-auth-basic
     lack-middleware-backtrace lack-middleware-csrf lack-middleware-mount
     lack-middleware-session lack-middleware-static lack-request lack-response
     lack-session-store-dbi lack-session-store-redis lack-test
     lack-util-writer-stream lack-util lack t-lack-component
     t-lack-middleware-accesslog t-lack-middleware-auth-basic
     t-lack-middleware-backtrace t-lack-middleware-csrf t-lack-middleware-mount
     t-lack-middleware-session t-lack-middleware-static t-lack-request
     t-lack-session-store-dbi t-lack-session-store-redis t-lack-util t-lack)
    PARASITES NIL) */
