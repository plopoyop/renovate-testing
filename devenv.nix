{ pkgs, lib, config, inputs, ... }:

{
  packages = [
    pkgs.git
    pkgs.go-task
    pkgs.yamllint
  ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  # https://devenv.sh/scripts/
  scripts.hello.exec = ''
    echo hello from $GREET
  '';

  enterShell = ''
    hello
    git --version
  '';

}
