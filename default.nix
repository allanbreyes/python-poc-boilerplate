with import <nixpkgs> { };

let
  py = python3Packages;
in pkgs.mkShell rec {
  name = "impurePythonVirtualEnvironment";
  venvDir = "./venv";
  buildInputs = [
    # Python requirements
    py.python
    py.venvShellHook

    # System requirements
    taglib
    openssl
    git
    libxml2
    libxslt
    libzip
    zlib

    # Tooling
    go-task
  ];

  postVenvCreation = ''
    unset SOURCE_DATE_EPOCH
    pip install -r requirements.txt
  '';

  postShellHook = ''
    unset SOURCE_DATE_EPOCH
  '';

}
