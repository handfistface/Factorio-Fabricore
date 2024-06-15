--control.lua

-- Remote interface
remote.add_interface("fabricore", {
  informatron_menu = function(data)
    return fabricore_menu(data.player_index)
  end,
  informatron_page_content = function(data)
    return fabricore_page_content(data.page_name, data.player_index, data.element)
  end
})

function fabricore_menu(player_index)
  return {
    iron_ore = 1,
    copper_ore = 1,
    coal = 1,
    trees = 1,
    power_distribution = 1,
    conveyor_belts = 1,
    inserters = 1,
    oil_tanks = 1,
    pipes = 1
  }
end

---Creates the contents of Informatron's pages.
---@param player_index uint Player index
---@param element LuaGuiElement Content scroll pane to place elements inside
---@param page_name string Page name
function fabricore_page_content(page_name, player_index, element)
  local player = game.get_player(player_index) --[[@as LuaPlayer]]
  -- main page
  if page_name == "fabricore" then
    element.add { type = "label", name = "main_page", caption = { "fabricore.main-page" } }
  end

  if page_name == "iron_ore" then
    element.add { type = "label", name = "iron-ore.text1", caption = { "iron-ore.text1" } }
    element.add { type = "label", name = "iron-ore.label2", caption = { "iron-ore.label2" }, style = "heading_1_label" }
    element.add { type = "label", name = "iron-ore.text2", caption = { "iron-ore.text2" } }

    element.add { type = "label", name = "iron-ore.label3", caption = { "iron-ore.label3" }, style = "heading_1_label" }
    element.add { type = "label", name = "iron-ore.text3", caption = { "iron-ore.text3" } }

    element.add { type = "label", name = "iron-ore.label4", caption = { "iron-ore.label4" }, style = "heading_1_label" }
    element.add { type = "label", name = "iron-ore.text4", caption = { "iron-ore.text4" } }

    element.add { type = "label", name = "iron-ore.label5", caption = { "iron-ore.label5" }, style = "heading_1_label" }
    element.add { type = "label", name = "iron-ore.text5", caption = { "iron-ore.text5" } }
    element.add { type = "label", name = "iron-ore.text6", caption = { "iron-ore.text6" } }
    element.add { type = "label", name = "iron-ore.text7", caption = { "iron-ore.text5" } }
    element.add { type = "label", name = "iron-ore.text8", caption = { "iron-ore.text8" } }

    element.add { type = "label", name = "iron-ore.label9", caption = { "iron-ore.label9" }, style = "heading_1_label" }
    element.add { type = "label", name = "iron-ore.text9", caption = { "iron-ore.text9" } }

    element.add { type = "label", name = "iron-ore.text10", caption = { "iron-ore.text10" } }
  end

  if page_name == "copper_ore" then
    element.add { type = "label", name = "copper-ore.text1", caption = { "copper-ore.text1" } }

    element.add { type = "label", caption = { "copper-ore.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper-ore.text2" } }

    element.add { type = "label", caption = { "copper-ore.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper-ore.text3" } }

    element.add { type = "label", caption = { "copper-ore.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper-ore.text4" } }

    element.add { type = "label", caption = { "copper-ore.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper-ore.text5" } }

    element.add { type = "label", caption = { "copper-ore.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper-ore.text6" } }

    element.add { type = "label", caption = { "copper-ore.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper-ore.text7" } }
    element.add { type = "label", caption = { "copper-ore.text8" } }

    element.add { type = "label", caption = { "copper-ore.text9" } }
    element.add { type = "label", caption = { "copper-ore.text10" } }
    element.add { type = "label", caption = { "copper-ore.text11" } }
  end

  if page_name == "coal" then
    element.add { type = "label", name = "coal.text1", caption = { "coal.text1" } }

    element.add { type = "label", name = "coal.label2", caption = { "coal.label2" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text2", caption = { "coal.text2" } }

    element.add { type = "label", name = "coal.label3", caption = { "coal.label3" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text3", caption = { "coal.text3" } }

    element.add { type = "label", name = "coal.label4", caption = { "coal.label4" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text4", caption = { "coal.text4" } }

    element.add { type = "label", name = "coal.label5", caption = { "coal.label5" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text5", caption = { "coal.text5" } }

    element.add { type = "label", name = "coal.label6", caption = { "coal.label6" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text6", caption = { "coal.text6" } }

    element.add { type = "label", name = "coal.label7", caption = { "coal.label7" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text7", caption = { "coal.text5" } }

    element.add { type = "label", name = "coal.label8", caption = { "coal.label8" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text8", caption = { "coal.text8" } }
    element.add { type = "label", name = "coal.text9", caption = { "coal.text9" } }
    element.add { type = "label", name = "coal.text10", caption = { "coal.text10" } }

    element.add { type = "label", name = "coal.label9", caption = { "coal.label9" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text11", caption = { "coal.text11" } }
    element.add { type = "label", name = "coal.text12", caption = { "coal.text12" } }
    element.add { type = "label", name = "coal.text13", caption = { "coal.text13" } }

    element.add { type = "label", name = "coal.label10", caption = { "coal.label10" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text14", caption = { "coal.text14" } }
    element.add { type = "label", name = "coal.text15", caption = { "coal.text15" } }
    element.add { type = "label", name = "coal.text16", caption = { "coal.text16" } }
    
    element.add { type = "label", name = "coal.label11", caption = { "coal.label11" }, style = "heading_1_label" }
    element.add { type = "label", name = "coal.text17", caption = { "coal.text17" } }
    element.add { type = "label", name = "coal.text18", caption = { "coal.text18" } }
  end

  if page_name == "trees" then
    element.add { type = "label", name = "trees.text1", caption = { "trees.text1" } }

    element.add { type = "label", name = "trees.label2", caption = { "trees.label2" }, style = "heading_1_label" }
    element.add { type = "label", name = "trees.text2", caption = { "trees.text2" } }
    element.add { type = "label", name = "trees.text3", caption = { "trees.text3" } }
    element.add { type = "label", name = "trees.text4", caption = { "trees.text4" } }
    
    element.add { type = "label", name = "trees.label3", caption = { "trees.label3" }, style = "heading_1_label" }
    element.add { type = "label", name = "trees.text7", caption = { "trees.text7" } }
    element.add { type = "label", name = "trees.text8", caption = { "trees.text8" } }
    element.add { type = "label", name = "trees.text9", caption = { "trees.text9" } }

    element.add { type = "label", name = "trees.label4", caption = { "trees.label4" }, style = "heading_1_label" }
    element.add { type = "label", name = "trees.text10", caption = { "trees.text10" } }
    element.add { type = "label", name = "trees.text11", caption = { "trees.text11" } }
    
    element.add { type = "label", name = "trees.label5", caption = { "trees.label5" }, style = "heading_1_label" }
    element.add { type = "label", name = "trees.text12", caption = { "trees.text12" } }
    element.add { type = "label", name = "trees.text13", caption = { "trees.text13" } }
    element.add { type = "label", name = "trees.text14", caption = { "trees.text14" } }
  end

  if page_name == "power_distribution" then
    element.add { type = "label", name = "power_distribution.text1", caption = { "power_distribution.text1" } }

    element.add { type = "label", name = "power_distribution.label1", caption = { "power_distribution.label2" }, style = "heading_1_label" }
    element.add { type = "label", name = "power_distribution.text2", caption = { "power_distribution.text2" } }
    element.add { type = "label", name = "power_distribution.text3", caption = { "power_distribution.text3" } }
    element.add { type = "label", name = "power_distribution.text4", caption = { "power_distribution.text4" } }
    
    element.add { type = "label", name = "power_distribution.label2", caption = { "power_distribution.label3" }, style = "heading_1_label" }
    element.add { type = "label", name = "power_distribution.text5", caption = { "power_distribution.text5" } }
    element.add { type = "label", name = "power_distribution.text6", caption = { "power_distribution.text6" } }
    element.add { type = "label", name = "power_distribution.text7", caption = { "power_distribution.text7" } }
    element.add { type = "label", name = "power_distribution.text8", caption = { "power_distribution.text8" } }
    
    element.add { type = "label", name = "power_distribution.label3", caption = { "power_distribution.label3" }, style = "heading_1_label" }
    element.add { type = "label", name = "power_distribution.text9", caption = { "power_distribution.text9" } }
    element.add { type = "label", name = "power_distribution.text10", caption = { "power_distribution.text10" } }
    element.add { type = "label", name = "power_distribution.text11", caption = { "power_distribution.text11" } }
    element.add { type = "label", name = "power_distribution.text12", caption = { "power_distribution.text12" } }
    element.add { type = "label", name = "power_distribution.text13", caption = { "power_distribution.text13" } }

    element.add { type = "label", name = "power_distribution.label4", caption = { "power_distribution.label4" }, style = "heading_1_label" }
    element.add { type = "label", name = "power_distribution.text14", caption = { "power_distribution.text14" } }
  end

  if page_name == "conveyor_belts" then
    element.add { type = "label", caption = { "conveyor_belts.text1" } }

    element.add { type = "label", caption = { "conveyor_belts.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "conveyor_belts.text2" } }
    element.add { type = "label", caption = { "conveyor_belts.text3" } }
    element.add { type = "label", caption = { "conveyor_belts.text4" } }
    element.add { type = "label", caption = { "conveyor_belts.text5" } }
    element.add { type = "label", caption = { "conveyor_belts.text6" } }
    element.add { type = "label", caption = { "conveyor_belts.text7" } }
    element.add { type = "label", caption = { "conveyor_belts.text8" } }
    element.add { type = "label", caption = { "conveyor_belts.text9" } }
    element.add { type = "label", caption = { "conveyor_belts.text10" } }
    element.add { type = "label", caption = { "conveyor_belts.text11" } }
    element.add { type = "label", caption = { "conveyor_belts.text12" } }
    
    element.add { type = "label", caption = { "conveyor_belts.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "conveyor_belts.text13" } }
    
    element.add { type = "label", caption = { "conveyor_belts.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "conveyor_belts.text14" } }
    element.add { type = "label", caption = { "conveyor_belts.text15" } }
    element.add { type = "label", caption = { "conveyor_belts.text16" } }
    element.add { type = "label", caption = { "conveyor_belts.text17" } }
    element.add { type = "label", caption = { "conveyor_belts.text18" } }
    element.add { type = "label", caption = { "conveyor_belts.text19" } }
  end

  if page_name == "inserters" then
    element.add { type = "label", caption = { "inserters.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "inserters.text1" } }
    
    element.add { type = "label", caption = { "inserters.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "inserters.text2" } }
    element.add { type = "label", caption = { "inserters.text3" } }
    element.add { type = "label", caption = { "inserters.text4" } }
    element.add { type = "label", caption = { "inserters.text5" } }
    element.add { type = "label", caption = { "inserters.text6" } }
    element.add { type = "label", caption = { "inserters.text7" } }
    element.add { type = "label", caption = { "inserters.text8" } }
    element.add { type = "label", caption = { "inserters.text9" } }
    element.add { type = "label", caption = { "inserters.text10" } }

    element.add { type = "label", caption = { "inserters.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "inserters.text11" } }
    element.add { type = "label", caption = { "inserters.text12" } }
    element.add { type = "label", caption = { "inserters.text13" } }
    element.add { type = "label", caption = { "inserters.text14" } }
    element.add { type = "label", caption = { "inserters.text15" } }
    element.add { type = "label", caption = { "inserters.text16" } }
    element.add { type = "label", caption = { "inserters.text17" } }
    element.add { type = "label", caption = { "inserters.text18" } }
  end

  if page_name == "oil_tanks" then
    element.add { type = "label", caption = { "oil_tanks.text1" } }

    element.add { type = "label", caption = { "oil_tanks.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "oil_tanks.text2" } }
    element.add { type = "label", caption = { "oil_tanks.text3" } }
    element.add { type = "label", caption = { "oil_tanks.text4" } }
    element.add { type = "label", caption = { "oil_tanks.text5" } }
    element.add { type = "label", caption = { "oil_tanks.text6" } }
    element.add { type = "label", caption = { "oil_tanks.text7" } }
    
    element.add { type = "label", caption = { "oil_tanks.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "oil_tanks.text8" } }
    element.add { type = "label", caption = { "oil_tanks.text9" } }
    element.add { type = "label", caption = { "oil_tanks.text10" } }
    element.add { type = "label", caption = { "oil_tanks.text11" } }
    element.add { type = "label", caption = { "oil_tanks.text12" } }
    
    element.add { type = "label", caption = { "oil_tanks.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "oil_tanks.text13" } }
    element.add { type = "label", caption = { "oil_tanks.text14" } }
    element.add { type = "label", caption = { "oil_tanks.text15" } }
  end

  if page_name == "pipes" then
    
    element.add { type = "label", caption = { "pipes.text1" } }

    element.add { type = "label", caption = { "pipes.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pipes.text2" } }
    element.add { type = "label", caption = { "pipes.text3" } }
    element.add { type = "label", caption = { "pipes.text4" } }
    
    element.add { type = "label", caption = { "pipes.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pipes.text5" } }
    element.add { type = "label", caption = { "pipes.text6" } }
    element.add { type = "label", caption = { "pipes.text7" } }
    element.add { type = "label", caption = { "pipes.text8" } }

    element.add { type = "label", caption = { "pipes.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pipes.text9" } }
    element.add { type = "label", caption = { "pipes.text10" } }
    element.add { type = "label", caption = { "pipes.text11" } }
    
    element.add { type = "label", caption = { "pipes.text12" } }
  end
end
