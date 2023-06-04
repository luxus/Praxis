{
  enable = true;
  interactiveOnly = false;
  settings = {
    cmd_duration.min_time = 1000;
    command_timeout = 1000;
    directory = {
      fish_style_pwd_dir_length = 1;
      read_only = " ";
      truncate_to_repo = false;
    };
    nix_shell.symbol = " ";
  };
}
