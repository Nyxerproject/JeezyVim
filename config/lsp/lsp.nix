{pkgs, ...}: {
  plugins.lsp = {
    enable = pkgs.lib.mkDefault true;
    servers = {
      markdown_oxide.enable = pkgs.lib.mkDefault true;
      clangd.enable = pkgs.lib.mkDefault true;
      bashls.enable = pkgs.lib.mkDefault true;
      cmake.enable = pkgs.lib.mkDefualt true;
      dockerls.enable = pkgs.lib.mkDefault true;
      gopls.enable = pkgs.lib.mkDefault true;
      jsonls.enable = pkgs.lib.mkDefault true;
      nil_ls.enable = pkgs.lib.mkDefault true;
      pyright.enable = pkgs.lib.mkDefault true;
      lua_ls.enable = pkgs.lib.mkDefault true;
      rust_analyzer = {
        enable = pkgs.lib.mkDefault true;
        installCargo = pkgs.lib.mkDefault false;
        installRustc = pkgs.lib.mkDefault false;
      };
      html.enable = pkgs.lib.mkDefault true;
      yamlls.enable = pkgs.lib.mkDefault true;
      taplo.enable = pkgs.lib.mkDefault true;
    };
  };

  plugins.lsp-format.enable = pkgs.lib.mkDefault true;
}
