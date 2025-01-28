return {
  {
    "echasnovski/mini.pairs",
    event = "VeryLazy", -- Carga el plugin de manera diferida
    config = function()
      require("mini.pairs").setup()
    end,
  },
}

