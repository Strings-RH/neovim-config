if vim.fn.has("wsl") == 1 then
	if vim.fn.executable("clip.exe") == 1 then
		vim.g.clipboard = {
			name= 'WslClipboard',
			copy= {
				['+']= 'clip.exe',
				['*']= 'clip.exe',
			},
			paste= {
				['+']= 'powershell.exe -Command [Console]::Out.Write($(Get Clipboard -Raw).toString().replace("`r", ""))',
				['*']= 'powershell.exe -Command [Console]::Out.Write($(Get Clipboard -Raw).toString().replace("`r", ""))',
			},
			cache_enable= false,
		}
	end
end
