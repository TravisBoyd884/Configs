function OutputLeaderMappings()
	-- Open a file for writing
	local output_file = vim.fn.expand("~/.config/nvim/lua/travis/custom/README.md")

	-- Capture the output of leader mappings
	local handle = io.popen('nvim -c "map <leader>" -c "qa!"')
	if not handle then
		print("Error: Could not open handle to capture mappings")
		return
	end

	local mappings = handle:read("*a")
	handle:close()

	-- Remove ANSI color escape sequences
	local clean_mappings = mappings:gsub("\27%[[%d;]*[a-zA-Z]", ""):gsub("%c", "")

	-- Open the file for writing
	local file = io.open(output_file, "w")
	if file then
		-- Write a header and the clean mappings
		file:write("# Neovim Leader Mappings\n\n")
		file:write("```\n")
		file:write(clean_mappings)
		file:write("```\n")
		file:close()
		print("Leader mappings saved to " .. output_file)
	else
		print("Error: Could not open file for writing")
	end
end

-- Create a command to trigger the output
vim.api.nvim_create_user_command("OutputLeaderMappings", OutputLeaderMappings, {})
keymap("n", "<leader>om", OutputLeaderMappings, { noremap = true, silent = true })
