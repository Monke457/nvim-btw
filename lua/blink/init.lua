require("blink.remap")
require("blink.lazy_init")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.opt.number = true
vim.opt['tabstop'] = 4
vim.opt['shiftwidth'] = 4
vim.opt.relativenumber = true

require("lazy").setup("blink.lazy")

local client = vim.lsp.start_client {
	name = "bormlsp",
	cmd = { "/home/unix/projects/borm-lsp/main" },
}

if not client then
	vim.notify "hey, you didn't do the client thing good"
	return
end

vim.filetype.add({
	extension = {
		sct = "bormscript"
	}
})

vim.api.nvim_create_autocmd("FileType",  {
	pattern = "bormscript",
	callback = function()
		vim.lsp.buf_attach_client(0, client)
	end
})
