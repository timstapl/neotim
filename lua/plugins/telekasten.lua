return {
	'renerocksai/telekasten.nvim',
	dependencies = {
		'nvim-telescope/telescope.nvim',
		'nvim-telekasten/calendar-vim',
	},
	config = function ()
		require('telekasten').setup({
			home = vim.fn.expand("~/notes/docs"), -- Put the name of your notes directory here
      dailies = vim.fn.expand("~/notes/docs/daily"),       -- path to daily notes
      weeklies = vim.fn.expand("~/notes/docs/weekly"),       -- path to weekly notes
      templates = vim.fn.expand("~/notes/docs/templates"),       -- path to templates

      -- template_new_note = '/path/to/file',    -- template for new notes
      template_new_daily = vim.fn.expand("~/notes/docs/templates/daily.md"),   -- template for new daily notes
      -- template_new_weekly = '/path/to/file',  -- template for new weekly notes
		  take_over_my_home = false,
			auto_set_filetype = false,
			auto_set_syntax = true,
      image_subdir = "attachments",
      -- Generate note filenames. One of:
        -- "title" (default) - Use title if supplied, uuid otherwise
        -- "uuid" - Use uuid
        -- "uuid-title" - Prefix title by uuid
        -- "title-uuid" - Suffix title with uuid
      new_note_filename = "title-uuid",
      -- file uuid type ("rand" or input for os.date such as "%Y%m%d%H%M")
      uuid_type = "rand",
      -- UUID separator
      uuid_sep = "-",

      -- Flags for creating non-existing notes
      -- follow_creates_nonexisting = true,    -- create non-existing on follow
      -- dailies_create_nonexisting = true,    -- create non-existing dailies
      -- weeklies_create_nonexisting = true,   -- create non-existing weeklies

      -- skip telescope prompt for goto_today and goto_thisweek
      journal_auto_open = true,

      -- Image link style",
        -- wiki:     ![[image name]]
        -- markdown: ![](image_subdir/xxxxx.png)
      -- image_link_style = "wiki",

      -- Default sort option: 'filename', 'modified'
      -- sort = "filename",

      -- Make syntax available to markdown buffers and telescope previewers
      install_syntax = true,

      -- Tag notation: '#tag', '@tag', ':tag:', 'yaml-bare'
      tag_notation = "#tag",

      -- When linking to a note in subdir/, create a [[subdir/title]] link
      -- instead of a [[title only]] link
      -- subdirs_in_links = true,

      -- Command palette theme: dropdown (window) or ivy (bottom panel)
      -- command_palette_theme = "ivy",

      -- Tag list theme:
        -- get_cursor (small tag list at cursor)
        -- dropdown (window)
        -- ivy (bottom panel)
      -- show_tags_theme = "ivy",

      -- Previewer for media files (images mostly)
        -- "telescope-media-files" if you have telescope-media-files.nvim installed
        -- "catimg-previewer" if you have catimg installed
        -- "viu-previewer" if you have viu installed
      media_previewer = "viu-previewer",

      -- Customize insert image and preview image files list. This is useful
      -- to add optional filetypes into filtered list (for example
      -- telescope-media-files optionally supporting svg preview)
      -- media_extensions = {
        -- ".png",
        -- ".jpg",
        -- ".bmp",
        -- ".gif",
        -- ".pdf",
        -- ".mp4",
        -- ".webm",
        -- ".webp",
      -- },

      -- Calendar integration
      -- plug_into_calendar = true,         -- use calendar integration
      -- calendar_opts = {
        -- weeknm = 4,                      -- calendar week display mode:
                                         --   1 .. 'WK01'
                                         --   2 .. 'WK 1'
                                         --   3 .. 'KW01'
                                         --   4 .. 'KW 1'
                                         --   5 .. '1'

        -- calendar_monday = 1,             -- use monday as first day of week:
                                         --   1 .. true
                                         --   0 .. false

        -- calendar_mark = 'left-fit',      -- calendar mark placement
                                         -- where to put mark for marked days:
                                         --   'left'
                                         --   'right'
                                         --   'left-fit'
      -- },

      -- vaults = {
        -- personal = {
          -- configuration for personal vault. E.g.:
          -- home = "/home/user/vaults/personal",
        -- }
      -- },

      -- Specify a clipboard program to use
      -- clipboard_program = "", -- xsel, xclip, wl-paste, osascript
		})
	end
}
