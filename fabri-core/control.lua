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
    ores = {
      iron_ore = 1,
      copper_ore = 1,
      coal = 1
    },
    trees = 1,
    power_distribution = 1,
    conveyor_belts = 1,
    inserters = 1,
    fluid_dynamics = {
      oil_tanks = 1,
      pipes = 1,
      pumps = 1
    }, 
    rails = {
      railroad_tracks = 1,
      locomotives = 1,
      locomotive_wagons = 1
    },
    lamps = 1,
    wires = 1,
    stone_bricks = 1,
    concrete = 1,
    power_generation = {
      boilers = 1,
      steam_engine = 1,
      solar_panel = 1,
      accumulator = 1,
      nuclear_reactor = 1,
      heat_pipes = 1,
      heat_exchanger = 1,
      steam_turbine = 1
    },
    pumpjack = 1,
    furnace = 1,
    oil_refinery = 1,
    chemical_plant = 1,
    centrifuge = 1,
    rocket_silo = 1,
    satellite = 1,
    oil_refining = {
      sulfuric_acid = 1,
      petroleum_gas = 1,
      light_oil = 1,
      heavy_oil = 1
    }
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
    element.add { type = "label", caption = { "coal.text14" } }
    element.add { type = "label", caption = { "coal.text15" } }
    element.add { type = "label", caption = { "coal.text16" } }
    element.add { type = "label", caption = { "coal.text17" } }
    element.add { type = "label", caption = { "coal.text18" } }
    element.add { type = "label", caption = { "coal.text19" } }
    element.add { type = "label", caption = { "coal.text20" } }
    element.add { type = "label", caption = { "coal.text21" } }
    element.add { type = "label", caption = { "coal.text22" } }
    element.add { type = "label", caption = { "coal.text23" } }
    element.add { type = "label", caption = { "coal.text24" } }
    element.add { type = "label", caption = { "coal.text25" } }
    element.add { type = "label", caption = { "coal.text26" } }
    element.add { type = "label", caption = { "coal.text27" } }
    element.add { type = "label", caption = { "coal.text28" } }
    element.add { type = "label", caption = { "coal.text29" } }
    element.add { type = "label", caption = { "coal.text30" } }
    element.add { type = "label", caption = { "coal.label9" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal.text31" } }
    element.add { type = "label", caption = { "coal.text32" } }
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

  if page_name == "railroad_tracks" then
    element.add { type = "label", caption = { "railroad_tracks.text1" } }
    element.add { type = "label", caption = { "railroad_tracks.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "railroad_tracks.text2" } }
    element.add { type = "label", caption = { "railroad_tracks.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "railroad_tracks.text3" } }
    element.add { type = "label", caption = { "railroad_tracks.text4" } }
    element.add { type = "label", caption = { "railroad_tracks.text5" } }
    element.add { type = "label", caption = { "railroad_tracks.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "railroad_tracks.text6" } }
    element.add { type = "label", caption = { "railroad_tracks.text7" } }
    element.add { type = "label", caption = { "railroad_tracks.text8" } }
    element.add { type = "label", caption = { "railroad_tracks.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "railroad_tracks.text9" } }
    element.add { type = "label", caption = { "railroad_tracks.text10" } }
    element.add { type = "label", caption = { "railroad_tracks.text11" } }
    element.add { type = "label", caption = { "railroad_tracks.text12" } }
  end

  if page_name == "locomotives" then
    element.add { type = "label", caption = { "locomotives.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text1" } }
    element.add { type = "label", caption = { "locomotives.text2" } }
    element.add { type = "label", caption = { "locomotives.text3" } }
    element.add { type = "label", caption = { "locomotives.text4" } }
    element.add { type = "label", caption = { "locomotives.text5" } }
    element.add { type = "label", caption = { "locomotives.text6" } }
    element.add { type = "label", caption = { "locomotives.text7" } }
    element.add { type = "label", caption = { "locomotives.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text8" } }
    element.add { type = "label", caption = { "locomotives.text9" } }
    element.add { type = "label", caption = { "locomotives.text10" } }
    element.add { type = "label", caption = { "locomotives.text11" } }
    element.add { type = "label", caption = { "locomotives.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text12" } }
    element.add { type = "label", caption = { "locomotives.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text13" } }
    element.add { type = "label", caption = { "locomotives.text14" } }
    element.add { type = "label", caption = { "locomotives.text15" } }
    element.add { type = "label", caption = { "locomotives.text16" } }
    element.add { type = "label", caption = { "locomotives.text17" } }
    element.add { type = "label", caption = { "locomotives.text18" } }
    element.add { type = "label", caption = { "locomotives.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text19" } }
    element.add { type = "label", caption = { "locomotives.text20" } }
    element.add { type = "label", caption = { "locomotives.text21" } }
    element.add { type = "label", caption = { "locomotives.text22" } }
    element.add { type = "label", caption = { "locomotives.text23" } }
    element.add { type = "label", caption = { "locomotives.text24" } }
    element.add { type = "label", caption = { "locomotives.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text25" } }
    element.add { type = "label", caption = { "locomotives.text26" } }
    element.add { type = "label", caption = { "locomotives.text27" } }
    element.add { type = "label", caption = { "locomotives.text28" } }
    element.add { type = "label", caption = { "locomotives.text29" } }
    element.add { type = "label", caption = { "locomotives.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text30" } }
    element.add { type = "label", caption = { "locomotives.text31" } }
    element.add { type = "label", caption = { "locomotives.text32" } }
    element.add { type = "label", caption = { "locomotives.text33" } }
    element.add { type = "label", caption = { "locomotives.text34" } }
    element.add { type = "label", caption = { "locomotives.label8" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text35" } }
    element.add { type = "label", caption = { "locomotives.text36" } }
    element.add { type = "label", caption = { "locomotives.text37" } }
    element.add { type = "label", caption = { "locomotives.text38" } }
    element.add { type = "label", caption = { "locomotives.text39" } }
    element.add { type = "label", caption = { "locomotives.label9" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotives.text40" } }
    element.add { type = "label", caption = { "locomotives.text41" } }
    element.add { type = "label", caption = { "locomotives.text42" } }
    element.add { type = "label", caption = { "locomotives.text43" } }
    element.add { type = "label", caption = { "locomotives.text44" } }
    element.add { type = "label", caption = { "locomotives.text45" } }
  end

  if page_name == "locomotive_wagons" then
    element.add { type = "label", caption = { "locomotive_wagons.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotive_wagons.text1" } }
    element.add { type = "label", caption = { "locomotive_wagons.text2" } }
    element.add { type = "label", caption = { "locomotive_wagons.text3" } }
    element.add { type = "label", caption = { "locomotive_wagons.text4" } }
    element.add { type = "label", caption = { "locomotive_wagons.text5" } }
    element.add { type = "label", caption = { "locomotive_wagons.text6" } }
    element.add { type = "label", caption = { "locomotive_wagons.text7" } }
    element.add { type = "label", caption = { "locomotive_wagons.text8" } }
    element.add { type = "label", caption = { "locomotive_wagons.text9" } }
    element.add { type = "label", caption = { "locomotive_wagons.text10" } }
    element.add { type = "label", caption = { "locomotive_wagons.text11" } }
    element.add { type = "label", caption = { "locomotive_wagons.text12" } }
    element.add { type = "label", caption = { "locomotive_wagons.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotive_wagons.text13" } }
    element.add { type = "label", caption = { "locomotive_wagons.text14" } }
    element.add { type = "label", caption = { "locomotive_wagons.text15" } }
    element.add { type = "label", caption = { "locomotive_wagons.text16" } }
    element.add { type = "label", caption = { "locomotive_wagons.text17" } }
    element.add { type = "label", caption = { "locomotive_wagons.text18" } }
    element.add { type = "label", caption = { "locomotive_wagons.text19" } }
    element.add { type = "label", caption = { "locomotive_wagons.text20" } }
    element.add { type = "label", caption = { "locomotive_wagons.text21" } }
    element.add { type = "label", caption = { "locomotive_wagons.text22" } }
    element.add { type = "label", caption = { "locomotive_wagons.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "locomotive_wagons.text23" } }
    element.add { type = "label", caption = { "locomotive_wagons.text24" } }
    element.add { type = "label", caption = { "locomotive_wagons.text25" } }
    element.add { type = "label", caption = { "locomotive_wagons.text26" } }
  end

  if page_name == "lamps" then
    element.add { type = "label", caption = { "lamps.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "lamps.text1" } }
    element.add { type = "label", caption = { "lamps.text2" } }
    element.add { type = "label", caption = { "lamps.text3" } }
    element.add { type = "label", caption = { "lamps.text4" } }
    element.add { type = "label", caption = { "lamps.text5" } }
    element.add { type = "label", caption = { "lamps.text6" } }
    element.add { type = "label", caption = { "lamps.text7" } }
    element.add { type = "label", caption = { "lamps.text8" } }
    element.add { type = "label", caption = { "lamps.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "lamps.text9" } }
    element.add { type = "label", caption = { "lamps.text10" } }
    element.add { type = "label", caption = { "lamps.text11" } }
    element.add { type = "label", caption = { "lamps.text12" } }
    element.add { type = "label", caption = { "lamps.text13" } }
    element.add { type = "label", caption = { "lamps.text14" } }
    element.add { type = "label", caption = { "lamps.text15" } }
    element.add { type = "label", caption = { "lamps.text16" } }
    element.add { type = "label", caption = { "lamps.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "lamps.text17" } }
    element.add { type = "label", caption = { "lamps.text18" } }
    element.add { type = "label", caption = { "lamps.text19" } }
    element.add { type = "label", caption = { "lamps.text20" } }
    element.add { type = "label", caption = { "lamps.text21" } }
    element.add { type = "label", caption = { "lamps.text22" } }
    element.add { type = "label", caption = { "lamps.text23" } }
    element.add { type = "label", caption = { "lamps.text24" } }
  end

  if page_name == "wires" then
    element.add { type = "label", caption = { "wires.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "wires.text1" } }
    element.add { type = "label", caption = { "wires.text2" } }
    element.add { type = "label", caption = { "wires.text3" } }
    element.add { type = "label", caption = { "wires.text4" } }
    element.add { type = "label", caption = { "wires.text5" } }
    element.add { type = "label", caption = { "wires.text6" } }
    element.add { type = "label", caption = { "wires.text7" } }
    element.add { type = "label", caption = { "wires.text8" } }
    element.add { type = "label", caption = { "wires.text9" } }
    element.add { type = "label", caption = { "wires.text10" } }
    element.add { type = "label", caption = { "wires.text11" } }
    element.add { type = "label", caption = { "wires.text12" } }
    element.add { type = "label", caption = { "wires.text13" } }
    element.add { type = "label", caption = { "wires.text14" } }
    element.add { type = "label", caption = { "wires.text15" } }
    element.add { type = "label", caption = { "wires.text16" } }
    element.add { type = "label", caption = { "wires.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "wires.text17" } }
    element.add { type = "label", caption = { "wires.text18" } }
    element.add { type = "label", caption = { "wires.text19" } }
    element.add { type = "label", caption = { "wires.text20" } }
    element.add { type = "label", caption = { "wires.text21" } }
    element.add { type = "label", caption = { "wires.text22" } }
  end

  if page_name == "stone_bricks" then
    element.add { type = "label", caption = { "stone_bricks.text1" } }
    element.add { type = "label", caption = { "stone_bricks.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "stone_bricks.text2" } }
    element.add { type = "label", caption = { "stone_bricks.text3" } }
    element.add { type = "label", caption = { "stone_bricks.text4" } }
    element.add { type = "label", caption = { "stone_bricks.text5" } }
    element.add { type = "label", caption = { "stone_bricks.text6" } }
    element.add { type = "label", caption = { "stone_bricks.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "stone_bricks.text7" } }
    element.add { type = "label", caption = { "stone_bricks.text8" } }
    element.add { type = "label", caption = { "stone_bricks.text9" } }
    element.add { type = "label", caption = { "stone_bricks.text10" } }
    element.add { type = "label", caption = { "stone_bricks.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "stone_bricks.text11" } }
    element.add { type = "label", caption = { "stone_bricks.text12" } }
    element.add { type = "label", caption = { "stone_bricks.text13" } }
    element.add { type = "label", caption = { "stone_bricks.text14" } }
    element.add { type = "label", caption = { "stone_bricks.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "stone_bricks.text15" } }
    element.add { type = "label", caption = { "stone_bricks.text16" } }
    element.add { type = "label", caption = { "stone_bricks.text17" } }
    element.add { type = "label", caption = { "stone_bricks.text18" } }
    element.add { type = "label", caption = { "stone_bricks.text19" } }
    element.add { type = "label", caption = { "stone_bricks.text20" } }
    element.add { type = "label", caption = { "stone_bricks.text21" } }
    element.add { type = "label", caption = { "stone_bricks.text22" } }
    element.add { type = "label", caption = { "stone_bricks.text23" } }
  end

  if page_name == "concrete" then
    element.add { type = "label", caption = { "concrete.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text1" } }
    element.add { type = "label", caption = { "concrete.text2" } }
    element.add { type = "label", caption = { "concrete.text3" } }
    element.add { type = "label", caption = { "concrete.text4" } }
    element.add { type = "label", caption = { "concrete.text5" } }
    element.add { type = "label", caption = { "concrete.text6" } }
    element.add { type = "label", caption = { "concrete.text7" } }
    element.add { type = "label", caption = { "concrete.text8" } }
    element.add { type = "label", caption = { "concrete.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text9" } }
    element.add { type = "label", caption = { "concrete.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text10" } }
    element.add { type = "label", caption = { "concrete.text11" } }
    element.add { type = "label", caption = { "concrete.text12" } }
    element.add { type = "label", caption = { "concrete.text13" } }
    element.add { type = "label", caption = { "concrete.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text14" } }
    element.add { type = "label", caption = { "concrete.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text15" } }
    element.add { type = "label", caption = { "concrete.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text16" } }
    element.add { type = "label", caption = { "concrete.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text17" } }
    element.add { type = "label", caption = { "concrete.label8" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text18" } }
    element.add { type = "label", caption = { "concrete.label9" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text19" } }
    element.add { type = "label", caption = { "concrete.label10" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "concrete.text20" } }
    element.add { type = "label", caption = { "concrete.text21" } }
    element.add { type = "label", caption = { "concrete.text22" } }
    element.add { type = "label", caption = { "concrete.text23" } }
    element.add { type = "label", caption = { "concrete.text24" } }
    element.add { type = "label", caption = { "concrete.text25" } }
    element.add { type = "label", caption = { "concrete.text26" } }
    element.add { type = "label", caption = { "concrete.text27" } }
    element.add { type = "label", caption = { "concrete.text28" } }
    element.add { type = "label", caption = { "concrete.text29" } }
  end
  
  if page_name == "boilers" then
    element.add { type = "label", caption = { "boilers.text1" } }
    element.add { type = "label", caption = { "boilers.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "boilers.text2" } }
    element.add { type = "label", caption = { "boilers.text3" } }
    element.add { type = "label", caption = { "boilers.text4" } }
    element.add { type = "label", caption = { "boilers.text5" } }
    element.add { type = "label", caption = { "boilers.text6" } }
    element.add { type = "label", caption = { "boilers.text7" } }
    element.add { type = "label", caption = { "boilers.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "boilers.text8" } }
    element.add { type = "label", caption = { "boilers.text9" } }
    element.add { type = "label", caption = { "boilers.text10" } }
    element.add { type = "label", caption = { "boilers.text11" } }
    element.add { type = "label", caption = { "boilers.text12" } }
    element.add { type = "label", caption = { "boilers.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "boilers.text13" } }
    element.add { type = "label", caption = { "boilers.text14" } }
    element.add { type = "label", caption = { "boilers.text15" } }
    element.add { type = "label", caption = { "boilers.text16" } }
    element.add { type = "label", caption = { "boilers.text17" } }
    element.add { type = "label", caption = { "boilers.text18" } }
    element.add { type = "label", caption = { "boilers.text19" } }
  end

  if page_name == "steam_engine" then
    element.add { type = "label", caption = { "steam_engine.text1" } }
    element.add { type = "label", caption = { "steam_engine.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steam_engine.text2" } }
    element.add { type = "label", caption = { "steam_engine.text3" } }
    element.add { type = "label", caption = { "steam_engine.text4" } }
    element.add { type = "label", caption = { "steam_engine.text5" } }
    element.add { type = "label", caption = { "steam_engine.text6" } }
    element.add { type = "label", caption = { "steam_engine.text7" } }
    element.add { type = "label", caption = { "steam_engine.text8" } }
    element.add { type = "label", caption = { "steam_engine.text9" } }
    element.add { type = "label", caption = { "steam_engine.text10" } }
    element.add { type = "label", caption = { "steam_engine.text11" } }
    element.add { type = "label", caption = { "steam_engine.text12" } }
    element.add { type = "label", caption = { "steam_engine.text13" } }
    element.add { type = "label", caption = { "steam_engine.text14" } }
    element.add { type = "label", caption = { "steam_engine.text15" } }
    element.add { type = "label", caption = { "steam_engine.text16" } }
    element.add { type = "label", caption = { "steam_engine.text17" } }
    element.add { type = "label", caption = { "steam_engine.text18" } }
    element.add { type = "label", caption = { "steam_engine.text19" } }
    element.add { type = "label", caption = { "steam_engine.text20" } }
    element.add { type = "label", caption = { "steam_engine.text21" } }
    element.add { type = "label", caption = { "steam_engine.text22" } }
    element.add { type = "label", caption = { "steam_engine.text23" } }
    element.add { type = "label", caption = { "steam_engine.text24" } }
    element.add { type = "label", caption = { "steam_engine.text25" } }
    element.add { type = "label", caption = { "steam_engine.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steam_engine.text26" } }
    element.add { type = "label", caption = { "steam_engine.text27" } }
    element.add { type = "label", caption = { "steam_engine.text28" } }
    element.add { type = "label", caption = { "steam_engine.text29" } }
    element.add { type = "label", caption = { "steam_engine.text30" } }
    element.add { type = "label", caption = { "steam_engine.text31" } }
    element.add { type = "label", caption = { "steam_engine.text32" } }
    element.add { type = "label", caption = { "steam_engine.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steam_engine.text33" } }
    element.add { type = "label", caption = { "steam_engine.text34" } }
    element.add { type = "label", caption = { "steam_engine.text35" } }
    element.add { type = "label", caption = { "steam_engine.text36" } }
    element.add { type = "label", caption = { "steam_engine.text37" } }
    element.add { type = "label", caption = { "steam_engine.text38" } }
    element.add { type = "label", caption = { "steam_engine.text39" } }
    element.add { type = "label", caption = { "steam_engine.text40" } }
    element.add { type = "label", caption = { "steam_engine.text41" } }
  end

  if page_name == "solar_panel" then
    element.add { type = "label", caption = { "solar_panel.text1" } }
    element.add { type = "label", caption = { "solar_panel.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solar_panel.text2" } }
    element.add { type = "label", caption = { "solar_panel.text3" } }
    element.add { type = "label", caption = { "solar_panel.text4" } }
    element.add { type = "label", caption = { "solar_panel.text5" } }
    element.add { type = "label", caption = { "solar_panel.text6" } }
    element.add { type = "label", caption = { "solar_panel.text7" } }
    element.add { type = "label", caption = { "solar_panel.text8" } }
    element.add { type = "label", caption = { "solar_panel.text9" } }
    element.add { type = "label", caption = { "solar_panel.text10" } }
    element.add { type = "label", caption = { "solar_panel.text11" } }
    element.add { type = "label", caption = { "solar_panel.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solar_panel.text12" } }
    element.add { type = "label", caption = { "solar_panel.text13" } }
    element.add { type = "label", caption = { "solar_panel.text14" } }
    element.add { type = "label", caption = { "solar_panel.text15" } }
    element.add { type = "label", caption = { "solar_panel.text16" } }
    element.add { type = "label", caption = { "solar_panel.text17" } }
    element.add { type = "label", caption = { "solar_panel.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solar_panel.text18" } }
    element.add { type = "label", caption = { "solar_panel.text19" } }
    element.add { type = "label", caption = { "solar_panel.text20" } }
    element.add { type = "label", caption = { "solar_panel.text21" } }
    element.add { type = "label", caption = { "solar_panel.text22" } }
    element.add { type = "label", caption = { "solar_panel.text23" } }
    element.add { type = "label", caption = { "solar_panel.text24" } }
    element.add { type = "label", caption = { "solar_panel.text25" } }
    element.add { type = "label", caption = { "solar_panel.text26" } }
    element.add { type = "label", caption = { "solar_panel.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solar_panel.text27" } }
    element.add { type = "label", caption = { "solar_panel.text28" } }
    element.add { type = "label", caption = { "solar_panel.text29" } }
    element.add { type = "label", caption = { "solar_panel.text30" } }
    element.add { type = "label", caption = { "solar_panel.text31" } }
  end

  if page_name == "accumulator" then
    element.add { type = "label", caption = { "accumulator.text1" } }
    element.add { type = "label", caption = { "accumulator.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "accumulator.text2" } }
    element.add { type = "label", caption = { "accumulator.text3" } }
    element.add { type = "label", caption = { "accumulator.text4" } }
    element.add { type = "label", caption = { "accumulator.text5" } }
    element.add { type = "label", caption = { "accumulator.text6" } }
    element.add { type = "label", caption = { "accumulator.text7" } }
    element.add { type = "label", caption = { "accumulator.text8" } }
    element.add { type = "label", caption = { "accumulator.text9" } }
    element.add { type = "label", caption = { "accumulator.text10" } }
    element.add { type = "label", caption = { "accumulator.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "accumulator.text11" } }
    element.add { type = "label", caption = { "accumulator.text12" } }
    element.add { type = "label", caption = { "accumulator.text13" } }
    element.add { type = "label", caption = { "accumulator.text14" } }
    element.add { type = "label", caption = { "accumulator.text15" } }
  end

  if page_name == "nuclear_reactor" then
    element.add { type = "label", caption = { "nuclear_reactor.text1" } }
    element.add { type = "label", caption = { "nuclear_reactor.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nuclear_reactor.text2" } }
    element.add { type = "label", caption = { "nuclear_reactor.text3" } }
    element.add { type = "label", caption = { "nuclear_reactor.text4" } }
    element.add { type = "label", caption = { "nuclear_reactor.text5" } }
    element.add { type = "label", caption = { "nuclear_reactor.text6" } }
    element.add { type = "label", caption = { "nuclear_reactor.text7" } }
    element.add { type = "label", caption = { "nuclear_reactor.text8" } }
    element.add { type = "label", caption = { "nuclear_reactor.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nuclear_reactor.text9" } }
    element.add { type = "label", caption = { "nuclear_reactor.text10" } }
    element.add { type = "label", caption = { "nuclear_reactor.text11" } }
    element.add { type = "label", caption = { "nuclear_reactor.text12" } }
    element.add { type = "label", caption = { "nuclear_reactor.text13" } }
    element.add { type = "label", caption = { "nuclear_reactor.text14" } }
    element.add { type = "label", caption = { "nuclear_reactor.text15" } }
    element.add { type = "label", caption = { "nuclear_reactor.text16" } }
    element.add { type = "label", caption = { "nuclear_reactor.text17" } }
    element.add { type = "label", caption = { "nuclear_reactor.text18" } }
    element.add { type = "label", caption = { "nuclear_reactor.text19" } }
    element.add { type = "label", caption = { "nuclear_reactor.text20" } }
    element.add { type = "label", caption = { "nuclear_reactor.text21" } }
    element.add { type = "label", caption = { "nuclear_reactor.text22" } }
    element.add { type = "label", caption = { "nuclear_reactor.text23" } }
    element.add { type = "label", caption = { "nuclear_reactor.text24" } }
    element.add { type = "label", caption = { "nuclear_reactor.text25" } }
    element.add { type = "label", caption = { "nuclear_reactor.text26" } }
    element.add { type = "label", caption = { "nuclear_reactor.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nuclear_reactor.text27" } }
    element.add { type = "label", caption = { "nuclear_reactor.text28" } }
    element.add { type = "label", caption = { "nuclear_reactor.text29" } }
    element.add { type = "label", caption = { "nuclear_reactor.text30" } }
    element.add { type = "label", caption = { "nuclear_reactor.text31" } }
    element.add { type = "label", caption = { "nuclear_reactor.text32" } }
    element.add { type = "label", caption = { "nuclear_reactor.text33" } }
    element.add { type = "label", caption = { "nuclear_reactor.text34" } }
    element.add { type = "label", caption = { "nuclear_reactor.text35" } }
  end

  if page_name == "heat_pipes" then
    element.add { type = "label", caption = { "heat_pipes.text1" } }
    element.add { type = "label", caption = { "heat_pipes.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heat_pipes.text2" } }
    element.add { type = "label", caption = { "heat_pipes.text3" } }
    element.add { type = "label", caption = { "heat_pipes.text4" } }
    element.add { type = "label", caption = { "heat_pipes.text5" } }
    element.add { type = "label", caption = { "heat_pipes.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heat_pipes.text6" } }
    element.add { type = "label", caption = { "heat_pipes.text7" } }
    element.add { type = "label", caption = { "heat_pipes.text8" } }
    element.add { type = "label", caption = { "heat_pipes.text9" } }
    element.add { type = "label", caption = { "heat_pipes.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heat_pipes.text10" } }
    element.add { type = "label", caption = { "heat_pipes.text11" } }
    element.add { type = "label", caption = { "heat_pipes.text12" } }
    element.add { type = "label", caption = { "heat_pipes.text13" } }
    element.add { type = "label", caption = { "heat_pipes.text14" } }
    element.add { type = "label", caption = { "heat_pipes.text15" } }
    element.add { type = "label", caption = { "heat_pipes.text16" } }
    element.add { type = "label", caption = { "heat_pipes.text17" } }
    element.add { type = "label", caption = { "heat_pipes.text18" } }
    element.add { type = "label", caption = { "heat_pipes.text19" } }
    element.add { type = "label", caption = { "heat_pipes.text20" } }
    element.add { type = "label", caption = { "heat_pipes.text21" } }
    element.add { type = "label", caption = { "heat_pipes.text22" } }
    element.add { type = "label", caption = { "heat_pipes.text23" } }
    element.add { type = "label", caption = { "heat_pipes.text24" } }
  end

  if page_name == "heat_exchanger" then
    element.add { type = "label", caption = { "heat_exchanger.text1" } }
    element.add { type = "label", caption = { "heat_exchanger.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heat_exchanger.text2" } }
    element.add { type = "label", caption = { "heat_exchanger.text3" } }
    element.add { type = "label", caption = { "heat_exchanger.text4" } }
    element.add { type = "label", caption = { "heat_exchanger.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heat_exchanger.text5" } }
    element.add { type = "label", caption = { "heat_exchanger.text6" } }
    element.add { type = "label", caption = { "heat_exchanger.text7" } }
    element.add { type = "label", caption = { "heat_exchanger.text8" } }
    element.add { type = "label", caption = { "heat_exchanger.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heat_exchanger.text9" } }
    element.add { type = "label", caption = { "heat_exchanger.text10" } }
    element.add { type = "label", caption = { "heat_exchanger.text11" } }
    element.add { type = "label", caption = { "heat_exchanger.text12" } }
    element.add { type = "label", caption = { "heat_exchanger.text13" } }
    element.add { type = "label", caption = { "heat_exchanger.text14" } }
    element.add { type = "label", caption = { "heat_exchanger.text15" } }
    element.add { type = "label", caption = { "heat_exchanger.text16" } }
  end

  if page_name == "steam_turbine" then
    element.add { type = "label", caption = { "steam_turbine.text1" } }
    element.add { type = "label", caption = { "steam_turbine.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steam_turbine.text2" } }
    element.add { type = "label", caption = { "steam_turbine.text3" } }
    element.add { type = "label", caption = { "steam_turbine.text4" } }
    element.add { type = "label", caption = { "steam_turbine.text5" } }
    element.add { type = "label", caption = { "steam_turbine.text6" } }
    element.add { type = "label", caption = { "steam_turbine.text7" } }
    element.add { type = "label", caption = { "steam_turbine.text8" } }
    element.add { type = "label", caption = { "steam_turbine.text9" } }
    element.add { type = "label", caption = { "steam_turbine.text10" } }
    element.add { type = "label", caption = { "steam_turbine.text11" } }
    element.add { type = "label", caption = { "steam_turbine.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steam_turbine.text12" } }
    element.add { type = "label", caption = { "steam_turbine.text13" } }
    element.add { type = "label", caption = { "steam_turbine.text14" } }
    element.add { type = "label", caption = { "steam_turbine.text15" } }
    element.add { type = "label", caption = { "steam_turbine.text16" } }
    element.add { type = "label", caption = { "steam_turbine.text17" } }
    element.add { type = "label", caption = { "steam_turbine.text18" } }
    element.add { type = "label", caption = { "steam_turbine.text19" } }
    element.add { type = "label", caption = { "steam_turbine.text20" } }
    element.add { type = "label", caption = { "steam_turbine.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steam_turbine.text21" } }
    element.add { type = "label", caption = { "steam_turbine.text22" } }
    element.add { type = "label", caption = { "steam_turbine.text23" } }
    element.add { type = "label", caption = { "steam_turbine.text24" } }
    element.add { type = "label", caption = { "steam_turbine.text25" } }
    element.add { type = "label", caption = { "steam_turbine.text26" } }
    element.add { type = "label", caption = { "steam_turbine.text27" } }
    element.add { type = "label", caption = { "steam_turbine.text28" } }
    element.add { type = "label", caption = { "steam_turbine.text29" } }
    element.add { type = "label", caption = { "steam_turbine.text30" } }
    element.add { type = "label", caption = { "steam_turbine.text31" } }
  end

  if page_name == "pumpjack" then
    element.add { type = "label", caption = { "pumpjack.text1" } }
    element.add { type = "label", caption = { "pumpjack.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumpjack.text2" } }
    element.add { type = "label", caption = { "pumpjack.text3" } }
    element.add { type = "label", caption = { "pumpjack.text4" } }
    element.add { type = "label", caption = { "pumpjack.text5" } }
    element.add { type = "label", caption = { "pumpjack.text6" } }
    element.add { type = "label", caption = { "pumpjack.text7" } }
    element.add { type = "label", caption = { "pumpjack.text8" } }
    element.add { type = "label", caption = { "pumpjack.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumpjack.text9" } }
    element.add { type = "label", caption = { "pumpjack.text10" } }
    element.add { type = "label", caption = { "pumpjack.text11" } }
    element.add { type = "label", caption = { "pumpjack.text12" } }
    element.add { type = "label", caption = { "pumpjack.text13" } }
    element.add { type = "label", caption = { "pumpjack.text14" } }
    element.add { type = "label", caption = { "pumpjack.text15" } }
    element.add { type = "label", caption = { "pumpjack.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pumpjack.text16" } }
    element.add { type = "label", caption = { "pumpjack.text17" } }
    element.add { type = "label", caption = { "pumpjack.text18" } }
    element.add { type = "label", caption = { "pumpjack.text19" } }
    element.add { type = "label", caption = { "pumpjack.text20" } }
    element.add { type = "label", caption = { "pumpjack.text21" } }
    element.add { type = "label", caption = { "pumpjack.text22" } }
    element.add { type = "label", caption = { "pumpjack.text23" } }
  end
  
  if page_name == "furnace" then
    element.add { type = "label", caption = { "furnace.text1" } }
    element.add { type = "label", caption = { "furnace.text2" } }
    element.add { type = "label", caption = { "furnace.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "furnace.text3" } }
    element.add { type = "label", caption = { "furnace.text4" } }
    element.add { type = "label", caption = { "furnace.text5" } }
    element.add { type = "label", caption = { "furnace.text6" } }
    element.add { type = "label", caption = { "furnace.text7" } }
    element.add { type = "label", caption = { "furnace.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "furnace.text8" } }
    element.add { type = "label", caption = { "furnace.text9" } }
    element.add { type = "label", caption = { "furnace.text10" } }
    element.add { type = "label", caption = { "furnace.text11" } }
    element.add { type = "label", caption = { "furnace.text12" } }
    element.add { type = "label", caption = { "furnace.text13" } }
    element.add { type = "label", caption = { "furnace.text14" } }
    element.add { type = "label", caption = { "furnace.text15" } }
    element.add { type = "label", caption = { "furnace.text16" } }
    element.add { type = "label", caption = { "furnace.text17" } }
    element.add { type = "label", caption = { "furnace.text18" } }
    element.add { type = "label", caption = { "furnace.text19" } }
    element.add { type = "label", caption = { "furnace.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "furnace.text20" } }
    element.add { type = "label", caption = { "furnace.text21" } }
    element.add { type = "label", caption = { "furnace.text22" } }
    element.add { type = "label", caption = { "furnace.text23" } }
    element.add { type = "label", caption = { "furnace.text24" } }
    element.add { type = "label", caption = { "furnace.text25" } }
    element.add { type = "label", caption = { "furnace.text26" } }
    element.add { type = "label", caption = { "furnace.text27" } }
    element.add { type = "label", caption = { "furnace.text28" } }
    element.add { type = "label", caption = { "furnace.text29" } }
    element.add { type = "label", caption = { "furnace.text30" } }
    element.add { type = "label", caption = { "furnace.text31" } }
  end
  
  if page_name == "oil_refinery" then
    element.add { type = "label", caption = { "oil_refinery.text1" } }
    element.add { type = "label", caption = { "oil_refinery.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "oil_refinery.text2" } }
    element.add { type = "label", caption = { "oil_refinery.text3" } }
    element.add { type = "label", caption = { "oil_refinery.text4" } }
    element.add { type = "label", caption = { "oil_refinery.text5" } }
    element.add { type = "label", caption = { "oil_refinery.text6" } }
    element.add { type = "label", caption = { "oil_refinery.text7" } }
    element.add { type = "label", caption = { "oil_refinery.text8" } }
    element.add { type = "label", caption = { "oil_refinery.text9" } }
    element.add { type = "label", caption = { "oil_refinery.text10" } }
    element.add { type = "label", caption = { "oil_refinery.text11" } }
    element.add { type = "label", caption = { "oil_refinery.text12" } }
    element.add { type = "label", caption = { "oil_refinery.text13" } }
    element.add { type = "label", caption = { "oil_refinery.text14" } }
    element.add { type = "label", caption = { "oil_refinery.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "oil_refinery.text15" } }
    element.add { type = "label", caption = { "oil_refinery.text16" } }
    element.add { type = "label", caption = { "oil_refinery.text17" } }
    element.add { type = "label", caption = { "oil_refinery.text18" } }
    element.add { type = "label", caption = { "oil_refinery.text19" } }
    element.add { type = "label", caption = { "oil_refinery.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "oil_refinery.text20" } }
    element.add { type = "label", caption = { "oil_refinery.text21" } }
    element.add { type = "label", caption = { "oil_refinery.text22" } }
    element.add { type = "label", caption = { "oil_refinery.text23" } }
    element.add { type = "label", caption = { "oil_refinery.text24" } }
    element.add { type = "label", caption = { "oil_refinery.text25" } }
    element.add { type = "label", caption = { "oil_refinery.text26" } }
    element.add { type = "label", caption = { "oil_refinery.text27" } }
    element.add { type = "label", caption = { "oil_refinery.text28" } }
    element.add { type = "label", caption = { "oil_refinery.text29" } }
    element.add { type = "label", caption = { "oil_refinery.text30" } }
    element.add { type = "label", caption = { "oil_refinery.text31" } }
    element.add { type = "label", caption = { "oil_refinery.text32" } }
    element.add { type = "label", caption = { "oil_refinery.text33" } }
  end
  
  if page_name == "chemical_plant" then
    element.add { type = "label", caption = { "chemical_plant.text1" } }
    element.add { type = "label", caption = { "chemical_plant.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "chemical_plant.text2" } }
    element.add { type = "label", caption = { "chemical_plant.text3" } }
    element.add { type = "label", caption = { "chemical_plant.text4" } }
    element.add { type = "label", caption = { "chemical_plant.text5" } }
    element.add { type = "label", caption = { "chemical_plant.text6" } }
    element.add { type = "label", caption = { "chemical_plant.text7" } }
    element.add { type = "label", caption = { "chemical_plant.text8" } }
    element.add { type = "label", caption = { "chemical_plant.text9" } }
    element.add { type = "label", caption = { "chemical_plant.text10" } }
    element.add { type = "label", caption = { "chemical_plant.text11" } }
    element.add { type = "label", caption = { "chemical_plant.text12" } }
    element.add { type = "label", caption = { "chemical_plant.text13" } }
    element.add { type = "label", caption = { "chemical_plant.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "chemical_plant.text14" } }
    element.add { type = "label", caption = { "chemical_plant.text15" } }
    element.add { type = "label", caption = { "chemical_plant.text16" } }
    element.add { type = "label", caption = { "chemical_plant.text17" } }
    element.add { type = "label", caption = { "chemical_plant.text18" } }
    element.add { type = "label", caption = { "chemical_plant.text19" } }
    element.add { type = "label", caption = { "chemical_plant.text20" } }
    element.add { type = "label", caption = { "chemical_plant.text21" } }
    element.add { type = "label", caption = { "chemical_plant.text22" } }
    element.add { type = "label", caption = { "chemical_plant.text23" } }
    element.add { type = "label", caption = { "chemical_plant.text24" } }
    element.add { type = "label", caption = { "chemical_plant.text25" } }
    element.add { type = "label", caption = { "chemical_plant.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "chemical_plant.text26" } }
    element.add { type = "label", caption = { "chemical_plant.text27" } }
    element.add { type = "label", caption = { "chemical_plant.text28" } }
    element.add { type = "label", caption = { "chemical_plant.text29" } }
    element.add { type = "label", caption = { "chemical_plant.text30" } }
    element.add { type = "label", caption = { "chemical_plant.text31" } }
    element.add { type = "label", caption = { "chemical_plant.text32" } }
    element.add { type = "label", caption = { "chemical_plant.text33" } }
    element.add { type = "label", caption = { "chemical_plant.text34" } }
    element.add { type = "label", caption = { "chemical_plant.text35" } }
    element.add { type = "label", caption = { "chemical_plant.text36" } }
    element.add { type = "label", caption = { "chemical_plant.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "chemical_plant.text37" } }
    element.add { type = "label", caption = { "chemical_plant.text38" } }
    element.add { type = "label", caption = { "chemical_plant.text39" } }
    element.add { type = "label", caption = { "chemical_plant.text40" } }
    element.add { type = "label", caption = { "chemical_plant.text41" } }
    element.add { type = "label", caption = { "chemical_plant.text42" } }
    element.add { type = "label", caption = { "chemical_plant.text43" } }
  end
  
  if page_name == "centrifuge" then
    element.add { type = "label", caption = { "centrifuge.text1" } }
    element.add { type = "label", caption = { "centrifuge.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "centrifuge.text2" } }
    element.add { type = "label", caption = { "centrifuge.text3" } }
    element.add { type = "label", caption = { "centrifuge.text4" } }
    element.add { type = "label", caption = { "centrifuge.text5" } }
    element.add { type = "label", caption = { "centrifuge.text6" } }
    element.add { type = "label", caption = { "centrifuge.text7" } }
    element.add { type = "label", caption = { "centrifuge.text8" } }
    element.add { type = "label", caption = { "centrifuge.text9" } }
    element.add { type = "label", caption = { "centrifuge.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "centrifuge.text10" } }
    element.add { type = "label", caption = { "centrifuge.text11" } }
    element.add { type = "label", caption = { "centrifuge.text12" } }
    element.add { type = "label", caption = { "centrifuge.text13" } }
    element.add { type = "label", caption = { "centrifuge.text14" } }
    element.add { type = "label", caption = { "centrifuge.text15" } }
    element.add { type = "label", caption = { "centrifuge.text16" } }
    element.add { type = "label", caption = { "centrifuge.text17" } }
    element.add { type = "label", caption = { "centrifuge.text18" } }
    element.add { type = "label", caption = { "centrifuge.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "centrifuge.text19" } }
    element.add { type = "label", caption = { "centrifuge.text20" } }
    element.add { type = "label", caption = { "centrifuge.text21" } }
    element.add { type = "label", caption = { "centrifuge.text22" } }
    element.add { type = "label", caption = { "centrifuge.text23" } }
    element.add { type = "label", caption = { "centrifuge.text24" } }
    element.add { type = "label", caption = { "centrifuge.text25" } }
    element.add { type = "label", caption = { "centrifuge.text26" } }
  end
  
  if page_name == "rocket_silo" then
    element.add { type = "label", caption = { "rocket_silo.text1" } }
    element.add { type = "label", caption = { "rocket_silo.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "rocket_silo.text2" } }
    element.add { type = "label", caption = { "rocket_silo.text3" } }
    element.add { type = "label", caption = { "rocket_silo.text4" } }
    element.add { type = "label", caption = { "rocket_silo.text5" } }
    element.add { type = "label", caption = { "rocket_silo.text6" } }
    element.add { type = "label", caption = { "rocket_silo.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "rocket_silo.text7" } }
    element.add { type = "label", caption = { "rocket_silo.text8" } }
    element.add { type = "label", caption = { "rocket_silo.text9" } }
    element.add { type = "label", caption = { "rocket_silo.text10" } }
    element.add { type = "label", caption = { "rocket_silo.text11" } }
    element.add { type = "label", caption = { "rocket_silo.text12" } }
    element.add { type = "label", caption = { "rocket_silo.text13" } }
    element.add { type = "label", caption = { "rocket_silo.text14" } }
    element.add { type = "label", caption = { "rocket_silo.text15" } }
    element.add { type = "label", caption = { "rocket_silo.text16" } }
    element.add { type = "label", caption = { "rocket_silo.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "rocket_silo.text17" } }
    element.add { type = "label", caption = { "rocket_silo.text18" } }
    element.add { type = "label", caption = { "rocket_silo.text19" } }
    element.add { type = "label", caption = { "rocket_silo.text20" } }
    element.add { type = "label", caption = { "rocket_silo.text21" } }
    element.add { type = "label", caption = { "rocket_silo.text22" } }
    element.add { type = "label", caption = { "rocket_silo.text23" } }
    element.add { type = "label", caption = { "rocket_silo.text24" } }
    element.add { type = "label", caption = { "rocket_silo.text25" } }
    element.add { type = "label", caption = { "rocket_silo.text26" } }
    element.add { type = "label", caption = { "rocket_silo.text27" } }
    element.add { type = "label", caption = { "rocket_silo.text28" } }
    element.add { type = "label", caption = { "rocket_silo.text29" } }
    element.add { type = "label", caption = { "rocket_silo.text30" } }
  end
  
  if page_name == "satellite" then
    element.add { type = "label", caption = { "satellite.text1" } }
    element.add { type = "label", caption = { "satellite.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "satellite.text2" } }
    element.add { type = "label", caption = { "satellite.text3" } }
    element.add { type = "label", caption = { "satellite.text4" } }
    element.add { type = "label", caption = { "satellite.text5" } }
    element.add { type = "label", caption = { "satellite.text6" } }
    element.add { type = "label", caption = { "satellite.text7" } }
    element.add { type = "label", caption = { "satellite.text8" } }
    element.add { type = "label", caption = { "satellite.text9" } }
    element.add { type = "label", caption = { "satellite.text10" } }
    element.add { type = "label", caption = { "satellite.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "satellite.text11" } }
    element.add { type = "label", caption = { "satellite.text12" } }
    element.add { type = "label", caption = { "satellite.text13" } }
    element.add { type = "label", caption = { "satellite.text14" } }
    element.add { type = "label", caption = { "satellite.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "satellite.text15" } }
    element.add { type = "label", caption = { "satellite.text16" } }
    element.add { type = "label", caption = { "satellite.text17" } }
    element.add { type = "label", caption = { "satellite.text18" } }
    element.add { type = "label", caption = { "satellite.text19" } }
    element.add { type = "label", caption = { "satellite.text20" } }
    element.add { type = "label", caption = { "satellite.text21" } }
    element.add { type = "label", caption = { "satellite.text22" } }
    element.add { type = "label", caption = { "satellite.text23" } }
    element.add { type = "label", caption = { "satellite.text24" } }
    element.add { type = "label", caption = { "satellite.text25" } }
  end
  
  if page_name == "sulfuric_acid" then
    element.add { type = "label", caption = { "sulfuric_acid.text1" } }
    element.add { type = "label", caption = { "sulfuric_acid.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfuric_acid.text2" } }
    element.add { type = "label", caption = { "sulfuric_acid.text3" } }
    element.add { type = "label", caption = { "sulfuric_acid.text4" } }
    element.add { type = "label", caption = { "sulfuric_acid.text5" } }
    element.add { type = "label", caption = { "sulfuric_acid.text6" } }
    element.add { type = "label", caption = { "sulfuric_acid.text7" } }
    element.add { type = "label", caption = { "sulfuric_acid.text8" } }
    element.add { type = "label", caption = { "sulfuric_acid.text9" } }
    element.add { type = "label", caption = { "sulfuric_acid.text10" } }
    element.add { type = "label", caption = { "sulfuric_acid.text11" } }
    element.add { type = "label", caption = { "sulfuric_acid.text12" } }
    element.add { type = "label", caption = { "sulfuric_acid.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfuric_acid.text13" } }
    element.add { type = "label", caption = { "sulfuric_acid.text14" } }
    element.add { type = "label", caption = { "sulfuric_acid.text15" } }
    element.add { type = "label", caption = { "sulfuric_acid.text16" } }
    element.add { type = "label", caption = { "sulfuric_acid.text17" } }
    element.add { type = "label", caption = { "sulfuric_acid.text18" } }
    element.add { type = "label", caption = { "sulfuric_acid.text19" } }
    element.add { type = "label", caption = { "sulfuric_acid.text20" } }
    element.add { type = "label", caption = { "sulfuric_acid.text21" } }
    element.add { type = "label", caption = { "sulfuric_acid.text22" } }
    element.add { type = "label", caption = { "sulfuric_acid.text23" } }
    element.add { type = "label", caption = { "sulfuric_acid.text24" } }
    element.add { type = "label", caption = { "sulfuric_acid.text25" } }
    element.add { type = "label", caption = { "sulfuric_acid.text26" } }
    element.add { type = "label", caption = { "sulfuric_acid.text27" } }
    element.add { type = "label", caption = { "sulfuric_acid.text28" } }
  end
  
  if page_name == "petroleum_gas" then
    element.add { type = "label", caption = { "petroleum_gas.text1" } }
    element.add { type = "label", caption = { "petroleum_gas.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "petroleum_gas.text2" } }
    element.add { type = "label", caption = { "petroleum_gas.text3" } }
    element.add { type = "label", caption = { "petroleum_gas.text4" } }
    element.add { type = "label", caption = { "petroleum_gas.text5" } }
    element.add { type = "label", caption = { "petroleum_gas.text6" } }
    element.add { type = "label", caption = { "petroleum_gas.text7" } }
    element.add { type = "label", caption = { "petroleum_gas.text8" } }
    element.add { type = "label", caption = { "petroleum_gas.text9" } }
    element.add { type = "label", caption = { "petroleum_gas.text10" } }
    element.add { type = "label", caption = { "petroleum_gas.text11" } }
    element.add { type = "label", caption = { "petroleum_gas.text12" } }
    element.add { type = "label", caption = { "petroleum_gas.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "petroleum_gas.text13" } }
    element.add { type = "label", caption = { "petroleum_gas.text14" } }
    element.add { type = "label", caption = { "petroleum_gas.text15" } }
    element.add { type = "label", caption = { "petroleum_gas.text16" } }
    element.add { type = "label", caption = { "petroleum_gas.text17" } }
    element.add { type = "label", caption = { "petroleum_gas.text18" } }
    element.add { type = "label", caption = { "petroleum_gas.text19" } }
    element.add { type = "label", caption = { "petroleum_gas.text20" } }
    element.add { type = "label", caption = { "petroleum_gas.text21" } }
    element.add { type = "label", caption = { "petroleum_gas.text22" } }
    element.add { type = "label", caption = { "petroleum_gas.text23" } }
    element.add { type = "label", caption = { "petroleum_gas.text24" } }
    element.add { type = "label", caption = { "petroleum_gas.text25" } }
    element.add { type = "label", caption = { "petroleum_gas.text26" } }
    element.add { type = "label", caption = { "petroleum_gas.text27" } }
  end
  
  if page_name == "light_oil" then
    element.add { type = "label", caption = { "light_oil.text1" } }
    element.add { type = "label", caption = { "light_oil.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "light_oil.text2" } }
    element.add { type = "label", caption = { "light_oil.text3" } }
    element.add { type = "label", caption = { "light_oil.text4" } }
    element.add { type = "label", caption = { "light_oil.text5" } }
    element.add { type = "label", caption = { "light_oil.text6" } }
    element.add { type = "label", caption = { "light_oil.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "light_oil.text7" } }
    element.add { type = "label", caption = { "light_oil.text8" } }
    element.add { type = "label", caption = { "light_oil.text9" } }
  end
  
  if page_name == "heavy_oil" then
    element.add { type = "label", caption = { "heavy_oil.text1" } }
    element.add { type = "label", caption = { "heavy_oil.text2" } }
    element.add { type = "label", caption = { "heavy_oil.text3" } }
    element.add { type = "label", caption = { "heavy_oil.text4" } }
    element.add { type = "label", caption = { "heavy_oil.text5" } }
    element.add { type = "label", caption = { "heavy_oil.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.text6" } }
    element.add { type = "label", caption = { "heavy_oil.text7" } }
    element.add { type = "label", caption = { "heavy_oil.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.text8" } }
    element.add { type = "label", caption = { "heavy_oil.text9" } }
    element.add { type = "label", caption = { "heavy_oil.text10" } }
    element.add { type = "label", caption = { "heavy_oil.text11" } }
    element.add { type = "label", caption = { "heavy_oil.text12" } }
    element.add { type = "label", caption = { "heavy_oil.text13" } }
    element.add { type = "label", caption = { "heavy_oil.text14" } }
    element.add { type = "label", caption = { "heavy_oil.text15" } }
    element.add { type = "label", caption = { "heavy_oil.text16" } }
    element.add { type = "label", caption = { "heavy_oil.text17" } }
    element.add { type = "label", caption = { "heavy_oil.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.text18" } }
    element.add { type = "label", caption = { "heavy_oil.text19" } }
    element.add { type = "label", caption = { "heavy_oil.text20" } }
    element.add { type = "label", caption = { "heavy_oil.text21" } }
    element.add { type = "label", caption = { "heavy_oil.text22" } }
    element.add { type = "label", caption = { "heavy_oil.text23" } }
    element.add { type = "label", caption = { "heavy_oil.text24" } }
    element.add { type = "label", caption = { "heavy_oil.text25" } }
    element.add { type = "label", caption = { "heavy_oil.text26" } }
    element.add { type = "label", caption = { "heavy_oil.text27" } }
    element.add { type = "label", caption = { "heavy_oil.text28" } }
    element.add { type = "label", caption = { "heavy_oil.text29" } }
    element.add { type = "label", caption = { "heavy_oil.text30" } }
    element.add { type = "label", caption = { "heavy_oil.text31" } }
    element.add { type = "label", caption = { "heavy_oil.text32" } }
    element.add { type = "label", caption = { "heavy_oil.text33" } }
    element.add { type = "label", caption = { "heavy_oil.text34" } }
    element.add { type = "label", caption = { "heavy_oil.text35" } }
    element.add { type = "label", caption = { "heavy_oil.text36" } }
    element.add { type = "label", caption = { "heavy_oil.text37" } }
    element.add { type = "label", caption = { "heavy_oil.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.text38" } }
    element.add { type = "label", caption = { "heavy_oil.text39" } }
    element.add { type = "label", caption = { "heavy_oil.text40" } }
    element.add { type = "label", caption = { "heavy_oil.text41" } }
    element.add { type = "label", caption = { "heavy_oil.text42" } }
    element.add { type = "label", caption = { "heavy_oil.text43" } }
    element.add { type = "label", caption = { "heavy_oil.text44" } }
    element.add { type = "label", caption = { "heavy_oil.text45" } }
    element.add { type = "label", caption = { "heavy_oil.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.text46" } }
    element.add { type = "label", caption = { "heavy_oil.text47" } }
    element.add { type = "label", caption = { "heavy_oil.text48" } }
    element.add { type = "label", caption = { "heavy_oil.text49" } }
    element.add { type = "label", caption = { "heavy_oil.text50" } }
    element.add { type = "label", caption = { "heavy_oil.text51" } }
    element.add { type = "label", caption = { "heavy_oil.text52" } }
    element.add { type = "label", caption = { "heavy_oil.text53" } }
    element.add { type = "label", caption = { "heavy_oil.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil.text54" } }
    element.add { type = "label", caption = { "heavy_oil.text55" } }
    element.add { type = "label", caption = { "heavy_oil.text56" } }
    element.add { type = "label", caption = { "heavy_oil.text57" } }
    element.add { type = "label", caption = { "heavy_oil.text58" } }
    element.add { type = "label", caption = { "heavy_oil.text59" } }
    element.add { type = "label", caption = { "heavy_oil.text60" } }
    element.add { type = "label", caption = { "heavy_oil.text61" } }
    element.add { type = "label", caption = { "heavy_oil.text62" } }
  end
  
end
