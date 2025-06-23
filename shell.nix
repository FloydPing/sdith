with import <nixpkgs> {};
{}:
gccStdenv.mkDerivation {
  name = "sdith";
  src = ./.;
  buildInputs = with pkgs; [ 
    gnumake 
    cmake 
    clang
    clang-tools
    gcc
    pkg-config
    openssl
  ] ++ (lib.optionals pkgs.stdenv.isLinux ([
    gdb
    #valgrind
    #linuxKernel.packages.linux_6_6.perf
  ]));
}
