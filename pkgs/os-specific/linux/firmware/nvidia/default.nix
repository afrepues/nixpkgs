{ stdenv, fetchurl, python2Packages, which, xz }:

let
  extractor = fetchurl {
    url = https://raw.githubusercontent.com/imirkin/re-vp2/d19d818d1e05c7c68afb052073cc8a487cac8f5d/extract_firmware.py;
    sha256 = "03dd1il0cjs8xi411pkckkfjga348j0cgd6dix20gd4kwmlvyjqm";
  };

  chipModel = [
    { chip = "nve4"; model = "gk104"; }
    { chip = "nve6"; model = "gk106"; }
    { chip = "nve7"; model = "gk107"; }
  ];

in stdenv.mkDerivation rec {
  pname = "linux-firmware-nvidia";
  version = "325.15";

  src = fetchurl {
    url = "http://us.download.nvidia.com/XFree86/Linux-x86/${version}/NVIDIA-Linux-x86-${version}.run";
    sha256 = "0xc7w2ia2fnkn20s6aq1f4ib2ljxmd2931vnrkvl2injzr5hwy9x";
  };

  phases = [ "installPhase" ];

  nativeBuildInputs = [ which xz ];

  installPhase = ''
    runHook preInstall

    dir=$out/lib/firmware
    NV_SKIP=$(
        awk -v RS= 'NR == 1 { print; exit; }' ${src} |\
            awk -v FS="=" '/^skip=[[:alnum:]]+$/ { print $2 }'
    )
    NV_TARGET_DIR=$(
        awk -v RS= 'NR == 1 { print; exit; }' ${src} |\
            awk -v FS="=" '/^targetdir=[-.[:alnum:]]+$/ { print $2 }'
    )

    mkdir -p $NV_TARGET_DIR
    tail -n +$NV_SKIP ${src} | xz -d | tar xv -C $NV_TARGET_DIR
    ${python2Packages.python.interpreter} ${extractor}

    mkdir -p $dir/{nouveau,nvidia}
    cp -rd nv* vuc-* $dir/nouveau

    ${stdenv.lib.concatStringsSep "\n" (map (entry: ''
      mkdir -p $dir/nvidia/${entry.model}

      ln -rs $dir/nouveau/${entry.chip}_fuc409c $dir/nvidia/${entry.model}/fecs_inst.bin
      ln -rs $dir/nouveau/${entry.chip}_fuc409d $dir/nvidia/${entry.model}/fecs_data.bin
      ln -rs $dir/nouveau/${entry.chip}_fuc41ac $dir/nvidia/${entry.model}/gpccs_inst.bin
      ln -rs $dir/nouveau/${entry.chip}_fuc41ad $dir/nvidia/${entry.model}/gpccs_data.bin
    '') chipModel)}

    runHook postInstall
  '';

  # Firmware blobs do not need fixing and should not be modified
  dontFixup = true;

  meta = with stdenv.lib; {
    description = "Binary firmware for nVidia cards";
    longDescription = ''
      This package contains proprietary firmware blobs for nVidia graphics cards
      up to and including the "Kepler" range.

      If you card is supported but not handled by this package, please find your
      here https://nouveau.freedesktop.org/wiki/CodeNames/ and let us know.
    '';
    homepage = http://nvidia.com;
    hydraPlatforms = [];
    license = licenses.unfree;
    platforms = platforms.linux;
    maintainers = with maintainers; [ peterhoeg ];
  };
}
