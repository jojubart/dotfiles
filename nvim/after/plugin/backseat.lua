require("backseat").setup({
	openai_api_key = "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", -- Get yours from platform.openai.com/account/api-keys
	openai_model_id = "gpt-4", --gpt-4
	-- split_threshold = 100,
	additional_instruction = "You are an expert software engineer. I'm an experienced developer. Be concise. ", -- (GPT-3 will probably deny this request, but GPT-4 complies)
	-- highlight = {
	--     icon = '', -- ''
	--     group = 'Comment',
	-- }
})
