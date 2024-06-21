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
    pipes = 1,
    pumps = 1
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
    element.add { type = "label", caption = { "iron_ore.text1" } }
    element.add { type = "label", caption = { "iron_ore.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text2" } }
    element.add { type = "label", caption = { "iron_ore.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text3" } }
    element.add { type = "label", caption = { "iron_ore.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text4" } }
    element.add { type = "label", caption = { "iron_ore.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text5" } }
    element.add { type = "label", caption = { "iron_ore.text6" } }
    element.add { type = "label", caption = { "iron_ore.text7" } }
    element.add { type = "label", caption = { "iron_ore.text8" } }
    element.add { type = "label", caption = { "iron_ore.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text9" } }
    element.add { type = "label", caption = { "iron_ore.text10" } }
  end

  if page_name == "copper_ore" then
    element.add { type = "label", caption = { "copper_ore.text1" } }
    element.add { type = "label", caption = { "copper_ore.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text2" } }
    element.add { type = "label", caption = { "copper_ore.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text3" } }
    element.add { type = "label", caption = { "copper_ore.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text4" } }
    element.add { type = "label", caption = { "copper_ore.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text5" } }
    element.add { type = "label", caption = { "copper_ore.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text6" } }
    element.add { type = "label", caption = { "copper_ore.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text7" } }
    element.add { type = "label", caption = { "copper_ore.text8" } }
    element.add { type = "label", caption = { "copper_ore.text9" } }
    element.add { type = "label", caption = { "copper_ore.text10" } }
    element.add { type = "label", caption = { "copper_ore.text11" } }
  end

  if page_name == "coal" then
    element.add { type = "label", caption = { "coal.text1" } }
    element.add { type = "label", caption = { "coal.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text2" } }
    element.add { type = "label", caption = { "coal.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text3" } }
    element.add { type = "label", caption = { "coal.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text4" } }
    element.add { type = "label", caption = { "coal.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text5" } }
    element.add { type = "label", caption = { "coal.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text6" } }
    element.add { type = "label", caption = { "coal.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text7" } }
    element.add { type = "label", caption = { "coal.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text8" } }
    element.add { type = "label", caption = { "coal.text9" } }
    element.add { type = "label", caption = { "coal.text10" } }
    element.add { type = "label", caption = { "coal.label8" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text11" } }
    element.add { type = "label", caption = { "coal.text12" } }
    element.add { type = "label", caption = { "coal.text13" } }
    element.add { type = "label", caption = { "coal.label9" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text14" } }
    element.add { type = "label", caption = { "coal.text15" } }
    element.add { type = "label", caption = { "coal.text16" } }
    element.add { type = "label", caption = { "coal.label10" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text17" } }
    element.add { type = "label", caption = { "coal.text18" } }
  end  

  if page_name == "trees" then
    element.add { type = "label", caption = { "trees.text1" } }
    element.add { type = "label", caption = { "trees.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "trees.text2" } }
    element.add { type = "label", caption = { "trees.text3" } }
    element.add { type = "label", caption = { "trees.text4" } }
    element.add { type = "label", caption = { "trees.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "trees.text5" } }
    element.add { type = "label", caption = { "trees.text6" } }
    element.add { type = "label", caption = { "trees.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "trees.text7" } }
    element.add { type = "label", caption = { "trees.text8" } }
    element.add { type = "label", caption = { "trees.text9" } }
    element.add { type = "label", caption = { "trees.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "trees.text10" } }
    element.add { type = "label", caption = { "trees.text11" } }
    element.add { type = "label", caption = { "trees.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "trees.text12" } }
    element.add { type = "label", caption = { "trees.text13" } }
    element.add { type = "label", caption = { "trees.text14" } }
  end

  if page_name == "power_distribution" then
    element.add { type = "label", caption = { "power_distribution.text1" } }
    element.add { type = "label", caption = { "power_distribution.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "power_distribution.text2" } }
    element.add { type = "label", caption = { "power_distribution.text3" } }
    element.add { type = "label", caption = { "power_distribution.text4" } }
    element.add { type = "label", caption = { "power_distribution.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "power_distribution.text5" } }
    element.add { type = "label", caption = { "power_distribution.text6" } }
    element.add { type = "label", caption = { "power_distribution.text7" } }
    element.add { type = "label", caption = { "power_distribution.text8" } }
    element.add { type = "label", caption = { "power_distribution.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "power_distribution.text9" } }
    element.add { type = "label", caption = { "power_distribution.text10" } }
    element.add { type = "label", caption = { "power_distribution.text11" } }
    element.add { type = "label", caption = { "power_distribution.text12" } }
    element.add { type = "label", caption = { "power_distribution.text13" } }
    element.add { type = "label", caption = { "power_distribution.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "power_distribution.text14" } }
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

  if page_name == "pumps" then
    element.add { type = "label", caption = { "pumps.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumps.text1" } }
    element.add { type = "label", caption = { "pumps.text2" } }
    element.add { type = "label", caption = { "pumps.text3" } }
    element.add { type = "label", caption = { "pumps.text4" } }
    element.add { type = "label", caption = { "pumps.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumps.text5" } }
    element.add { type = "label", caption = { "pumps.text6" } }
    element.add { type = "label", caption = { "pumps.text7" } }
    element.add { type = "label", caption = { "pumps.text8" } }
    element.add { type = "label", caption = { "pumps.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumps.text9" } }
    element.add { type = "label", caption = { "pumps.text10" } }
    element.add { type = "label", caption = { "pumps.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumps.text11" } }
    element.add { type = "label", caption = { "pumps.text12" } }
    element.add { type = "label", caption = { "pumps.text13" } }
    element.add { type = "label", caption = { "pumps.text14" } }
    element.add { type = "label", caption = { "pumps.text15" } }
    element.add { type = "label", caption = { "pumps.text16" } }
    element.add { type = "label", caption = { "pumps.text17" } }
    element.add { type = "label", caption = { "pumps.text18" } }
  end

end
