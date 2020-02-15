{ stdenv, fetchFromGitHub }:
stdenv.mkDerivation rec {
  pname = "crchack";
  version = "1.2";

  src = fetchFromGitHub {
    owner = "resilar";
    repo = "crchack";
    rev = "b1e4d0af038f837f4de3854a1135e87684b505b2";
    sha256 = "1zws02jq78d0a623mvdjf46h589n0y5hy06c47jq98n2qdbs1vmv";
  };
  
  installPhase = ''
    mkdir -p $out/bin
    cp ./crchack $out/bin
  '';

}
