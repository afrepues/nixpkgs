args @ { fetchurl, ... }:
rec {
  baseName = ''closer-mop'';
  version = ''20181018-git'';

  description = ''Closer to MOP is a compatibility layer that rectifies many of the absent or incorrect CLOS MOP features across a broad range of Common Lisp implementations.'';

  deps = [ ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/closer-mop/2018-10-18/closer-mop-20181018-git.tgz'';
    sha256 = ''1ikjgwc5clfcpvq98l08ppjkbnhkdfwh97fwpykq7bvswr8r6vn5'';
  };

  packageName = "closer-mop";

  asdFilesToKeep = ["closer-mop.asd"];
  overrides = x: x;
}
/* (SYSTEM closer-mop DESCRIPTION
    Closer to MOP is a compatibility layer that rectifies many of the absent or incorrect CLOS MOP features across a broad range of Common Lisp implementations.
    SHA256 1ikjgwc5clfcpvq98l08ppjkbnhkdfwh97fwpykq7bvswr8r6vn5 URL
    http://beta.quicklisp.org/archive/closer-mop/2018-10-18/closer-mop-20181018-git.tgz
    MD5 5d903de59d1510778851e2cb15c860c4 NAME closer-mop FILENAME closer-mop
    DEPS NIL DEPENDENCIES NIL VERSION 20181018-git SIBLINGS NIL PARASITES NIL) */
