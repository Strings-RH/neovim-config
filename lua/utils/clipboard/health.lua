local M = {}

M.check = function()
	vim.health.report_start("Windows SubSystem Clipboard")
	if vim.fn.has("wsl") == 0 then
		vim.health.report_ok("Nothing to do when WSL is not detected")
	else
		vim.health.report_info("INFO_MSG")
		vim.health.report_warn("WARN_MSG", {"ADVICE-1","ADVICE-2"})
		vim.health.report_error("ERROR_MSG", {"ADVICE-1","ADVICE-2"})
		vim.health.report_ok("OK_MSG")
	end
end

return M
