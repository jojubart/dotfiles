require("backseat").setup({
            openai_api_key = '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', -- Get yours from platform.openai.com/account/api-keys
            openai_model_id = 'gpt-3.5-turbo', --gpt-4

            -- split_threshold = 100,
            additional_instruction = "Respond in concise and lighthearted manner", -- (GPT-3 will probably deny this request, but GPT-4 complies)
            -- highlight = {
            --     icon = '', -- ''
            --     group = 'Comment',
            -- }
        })
