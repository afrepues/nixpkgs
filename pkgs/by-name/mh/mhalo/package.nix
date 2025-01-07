{ lib
, stdenv
, fetchFromGitHub
, meson
, ninja
, pkg-config
, pixman
, tllist
, wayland
, wayland-protocols
}:

stdenv.mkDerivation rec {
  pname = "mhalo";
  version = "2024-09-14";

  src = fetchFromGitHub {
    owner = "progandy";
    repo = "mhalo";
    rev = "3088f5152f66360828df0e7935b020f6500f540b";
    hash = "sha256-AKardcq/vkU+bMsWSdPXQlrQgl3eer0xJdPvQvy0IVo=";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    wayland-protocols
  ];

  buildInputs = [
    pixman
    tllist
    wayland
  ];

  meta = {
    description = "Mouse highlighter for wayland";
    longDescription = ''
      Super simple mouse halo application to find your cursor on large
      monitors implementing the layer-shell protocol.

      MHalo uses a layer-shell overlay to darken the screen and show a
      bright circle around the mouse cursor.
    '';
    homepage = "https://github.com/progandy/mhalo";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ servilio ];
  };
}
