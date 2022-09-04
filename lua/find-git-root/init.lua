local M = {}

function M.find_git_root()

	local d = vim.fn.expand("%:p:h")
	for _ = 1, 10 do
		if vim.fn.isdirectory(d..".git") then
			return d
		end
		d = "../" .. d
	end
	return nil
end

function M.cd_git_root()
  local git_root = M.find_git_root()

  if not git_root then
    print("No git root found")
    return
  end

  vim.cmd("cd "..git_root)
end

return M
