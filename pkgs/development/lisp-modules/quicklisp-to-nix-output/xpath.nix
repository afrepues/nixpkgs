args @ { fetchurl, ... }:
rec {
  baseName = ''xpath'';
  version = ''plexippus-20181018-git'';

  parasites = [ "xpath/test" ];

  description = ''An implementation of the XML Path Language (XPath) Version 1.0'';

  deps = [ args."alexandria" args."babel" args."cl-ppcre" args."closure-common" args."cxml" args."parse-number" args."puri" args."trivial-features" args."trivial-gray-streams" args."yacc" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/plexippus-xpath/2018-10-18/plexippus-xpath-20181018-git.tgz'';
    sha256 = ''0jvmhryia9waafp7wizd8ksl24rq4zhhy8j2x28kybkcv64fcrl8'';
  };

  packageName = "xpath";

  asdFilesToKeep = ["xpath.asd"];
  overrides = x: x;
}
/* (SYSTEM xpath DESCRIPTION
    An implementation of the XML Path Language (XPath) Version 1.0 SHA256
    0jvmhryia9waafp7wizd8ksl24rq4zhhy8j2x28kybkcv64fcrl8 URL
    http://beta.quicklisp.org/archive/plexippus-xpath/2018-10-18/plexippus-xpath-20181018-git.tgz
    MD5 4563cbabe0a68bbd24ec2c5b62ae6dd2 NAME xpath FILENAME xpath DEPS
    ((NAME alexandria FILENAME alexandria) (NAME babel FILENAME babel)
     (NAME cl-ppcre FILENAME cl-ppcre)
     (NAME closure-common FILENAME closure-common) (NAME cxml FILENAME cxml)
     (NAME parse-number FILENAME parse-number) (NAME puri FILENAME puri)
     (NAME trivial-features FILENAME trivial-features)
     (NAME trivial-gray-streams FILENAME trivial-gray-streams)
     (NAME yacc FILENAME yacc))
    DEPENDENCIES
    (alexandria babel cl-ppcre closure-common cxml parse-number puri
     trivial-features trivial-gray-streams yacc)
    VERSION plexippus-20181018-git SIBLINGS NIL PARASITES (xpath/test)) */
