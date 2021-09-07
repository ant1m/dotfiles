local function isempty(str)
	return str == '' or str == nil
end

local add_char_to_column = function(char)
	local colorcol = vim.o.colorcolumn
	if isempty(colorcol) then
		colorcol = 120
	end
	local wincol = vim.fn.wincol()
	local str =" " .. string.rep(char,  colorcol - wincol)
	vim.api.nvim_put({str}, "c", true, false)
end

local insert_date_log = function()
	vim.api.nvim_put({vim.fn.strftime("%c")}, "c", true, false)
	add_char_to_column("-")
end

return {
	add_char_to_column=add_char_to_column,
	insert_date_log=insert_date_log,
}

