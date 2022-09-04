vim.api.nvim_create_user_command("CdGitRoot",function ()
  require("find-git-root").cd_git_root()
end, {})
