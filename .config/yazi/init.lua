
require("bookmarks"):setup({
	last_directory = { enable = true, persist = true},
	persist = "all",
	desc_format = "full",
	file_pick_mode = "parent",
	notify = {
		enable = false,
		timeout = 1,
		message = {
			new = "New bookmark '<key>' -> '<folder>'",
			delete = "Deleted bookmark in '<key>'",
			delete_all = "Deleted all bookmarks",
		},
	},
})

function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then
		time = ""
	elseif os.date("%Y", time) == os.date("%Y") then
		time = os.date("%b %d %H:%M", time)
	else
		time = os.date("%b %d  %Y", time)
	end

	local size = self._file:size()
	return string.format("%s %s", size and ya.readable_size(size) or "-", time)
end

--require("gvfs"):setup({
--  -- (Optional) disable/enable remember passwords using keyring. Default: true
--  enabled_keyring = false,
--  -- (Optional) save password automatically after mounting. Default: false
--  save_password_autoconfirm = true,
--})

require("git"):setup()
