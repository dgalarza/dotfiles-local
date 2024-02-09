local cmp = require("cmp")
local lspkind = require("lspkind")

local formatting = {
	format = lspkind.cmp_format(),
}

local mapping = {
  ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
  ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
	["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
	["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
	["<C-c>"] = cmp.mapping({
		i = cmp.mapping.abort(),
		c = cmp.mapping.close(),
	}),
}

cmp.setup({
	formatting = formatting,
	mapping = mapping,
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline("/", {
	formatting = formatting,
	mapping = mapping,
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	formatting = formatting,
	mapping = mapping,
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
