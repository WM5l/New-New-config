return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Iconos bonitos
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Banner personalizado (ASCII ART)
      dashboard.section.header.val = {
        "                              NEOVIM                                   ",
        "                                                                      ",
        -- "                                  %**                                 ",
        -- "                         *----::::::::=++****                         ",
        -- "                        =::::::::::::::::::::-#                       ",
        -- "                    *=--:::::::::::::::::::::::=                      ",
        -- "                  %-::::::::::::::::::::::::::::-#                    ",
        -- "                  -:::::::::::::::::::::::::::::::+                   ",
        -- "                 +::::::::::::::::::::::::::::::::::*                 ",
        -- "                #:::::::::::::::::::::::::::::::::::-                 ",
        "                 -::::::::::::::::::::::::::::::::::=                 ",
        "                 +-:::::::::::::::::::::::::::::::-*                  ",
        "                    #+===-:::::::::::::::::::=#*:-                    ",
        "                            #+=-:::::::-*                             ",
        "                                *-:::::#                              ",
        "                                  -::::*                              ",
        "                                #=::::::*                             ",
        "               #%              =:::::::::-# #=%                       ",
        "              #::+      #==  *-:::::::::::- *::*    *                 ",
        "               +::*    +:::-=::::::::::::::=*:::+  %:#                ",
        "                =:-   *:::::::::::::::::::::::::-  +:#                ",
        "                *-:+  =::::::::::::::::::::::::::  ::%                ",
        "                #-:-  =-:::::::::::-:--:::::::::: +:=                 ",
        "                 *-:+ =:::::::::::-*:+*-::::::::+ ::#                 ",
        "                  #:-=-:-:::::::::::::::::::::::*+:=                  ",
        "                   +:::::::::::-++++++=-:::::::::::#                  ",
        "                    -:::::::::+##++     *+-::::::-#                   ",
        "                    *:::::::-%*-=*%   %%#=*-::::=                     ",
        "                    #:::::::*=::::::::::::-+:::=                      ",
        "                     ::::::-#::::::::::::::+=:=                       ",
        "                     *::-::++::::::::::::::-#-%                       ",
        "                      *-:::*+--::::::::::::===                        ",
        "                        *-:--:::::::::::::::-#                        ",
        -- "                          +::::::::::::::::=                          ",
        -- "                           #+==-:----::-=+#                           ",
        -- "                                %                                     ",
        -- "                                                                      ",
        "                                                                      ",
      }

      -- Accesos rápidos personalizados
      dashboard.section.buttons.val = {
        dashboard.button("e", "📄  Nuevo archivo", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "🔍  Buscar archivo", ":Telescope find_files<CR>"),
        dashboard.button("r", "📂  Archivos recientes", ":Telescope oldfiles<CR>"),
        dashboard.button("q", "❌  Salir", ":qa<CR>"),
      }

      -- Mensaje al final
      dashboard.section.footer.val = " Configurado por Aron "

      -- Aplicar configuración
      alpha.setup(dashboard.config)
    end
  }
}

