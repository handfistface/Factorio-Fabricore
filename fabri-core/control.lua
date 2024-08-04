--control.lua

local Pin = {}

-- Remote interface
remote.add_interface("fabricore", {
  informatron_menu = function(data)
    return fabricore_menu(data.player_index)
  end,
  informatron_page_content = function(data)
    return fabricore_page_content(data.page_name, data.player_index, data.element)
  end,
  
  -- causes Informatron to open to a specific page
  -- informatron_open_to_page = function(data)
  --   if data.player_index and data.interface and data.page_name then
  --     local player = game.get_player(data.player_index)
  --     if player then
  --       Informatron.open(player, {interface=data.interface, page_name=data.page_name})
  --     end
  --   end
  -- end
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
      heavy_oil = 1,
      coal_liquification = 1,
      heavy_oil_cracking = 1,
      solid_fuel = 1,
      lubricant = 1,
      plastic = 1
    },
    steel = 1,
    sulfur = 1,
    battery = 1,
    explosives = 1,
    uranium = 1,
    iron_gear = 1,
    barrel = 1,
    engine = 1,
    electric_motor = 1,
    uranium_and_nuclear = {
      nuclear_reactor = 1,
      uranium_fuel_rod = 1,
      nuclear_fuel_reprocessing = 1,
      kovarex_enrichment_process = 1
    },
    weaponry = {
      pistol = 1,
      submachine_gun = 1,
      shotgun = 1,
      rocket_launcher = 1,
      flamethrower = 1,
      land_mine = 1,
      pistol_ammo = 1,
      shotgun_shell = 1,
      tank_shell = 1,
      artillery_shell = 1,
      grenade = 1,
      nightvision = 1,
      radar = 1
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
    element.add { type = "label", caption = { "iron_ore.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text1" } }
    element.add { type = "label", caption = { "iron_ore.text2" } }
    element.add { type = "label", caption = { "iron_ore.text3" } }
    element.add { type = "label", caption = { "iron_ore.text4" } }
    element.add { type = "label", caption = { "iron_ore.text5" } }
    element.add { type = "label", caption = { "iron_ore.text6" } }
    element.add { type = "label", caption = { "iron_ore.text7" } }
    element.add { type = "label", caption = { "iron_ore.text8" } }
    element.add { type = "label", caption = { "iron_ore.text9" } }
    element.add { type = "label", caption = { "iron_ore.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text10" } }
    element.add { type = "label", caption = { "iron_ore.text11" } }
    element.add { type = "label", caption = { "iron_ore.text12" } }
    element.add { type = "label", caption = { "iron_ore.text13" } }
    element.add { type = "label", caption = { "iron_ore.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text14" } }
    element.add { type = "label", caption = { "iron_ore.text15" } }
    element.add { type = "label", caption = { "iron_ore.text16" } }
    element.add { type = "label", caption = { "iron_ore.text17" } }
    element.add { type = "label", caption = { "iron_ore.text18" } }
    element.add { type = "label", caption = { "iron_ore.text19" } }
    element.add { type = "label", caption = { "iron_ore.text20" } }
    element.add { type = "label", caption = { "iron_ore.text21" } }
    element.add { type = "label", caption = { "iron_ore.text22" } }
    element.add { type = "label", caption = { "iron_ore.text23" } }
    element.add { type = "label", caption = { "iron_ore.text24" } }
    element.add { type = "label", caption = { "iron_ore.text25" } }
    element.add { type = "label", caption = { "iron_ore.text26" } }
    element.add { type = "label", caption = { "iron_ore.text27" } }
    element.add { type = "label", caption = { "iron_ore.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text28" } }
    element.add { type = "label", caption = { "iron_ore.text29" } }
    element.add { type = "label", caption = { "iron_ore.text30" } }
    element.add { type = "label", caption = { "iron_ore.text31" } }
    element.add { type = "label", caption = { "iron_ore.text32" } }
    element.add { type = "label", caption = { "iron_ore.text33" } }
    element.add { type = "label", caption = { "iron_ore.text34" } }
    element.add { type = "label", caption = { "iron_ore.text35" } }
    element.add { type = "label", caption = { "iron_ore.text36" } }
    element.add { type = "label", caption = { "iron_ore.text37" } }
    element.add { type = "label", caption = { "iron_ore.text38" } }
    element.add { type = "label", caption = { "iron_ore.text39" } }
    element.add { type = "label", caption = { "iron_ore.text40" } }
    element.add { type = "label", caption = { "iron_ore.text41" } }
    element.add { type = "label", caption = { "iron_ore.text42" } }
    element.add { type = "label", caption = { "iron_ore.text43" } }
    element.add { type = "label", caption = { "iron_ore.text44" } }
    element.add { type = "label", caption = { "iron_ore.text45" } }
    element.add { type = "label", caption = { "iron_ore.text46" } }
    element.add { type = "label", caption = { "iron_ore.text47" } }
    element.add { type = "label", caption = { "iron_ore.text48" } }
    element.add { type = "label", caption = { "iron_ore.text49" } }
    element.add { type = "label", caption = { "iron_ore.text50" } }
    element.add { type = "label", caption = { "iron_ore.text51" } }
    element.add { type = "label", caption = { "iron_ore.text52" } }
    element.add { type = "label", caption = { "iron_ore.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text53" } }
    element.add { type = "label", caption = { "iron_ore.text54" } }
    element.add { type = "label", caption = { "iron_ore.text55" } }
    element.add { type = "label", caption = { "iron_ore.text56" } }
    element.add { type = "label", caption = { "iron_ore.text57" } }
    element.add { type = "label", caption = { "iron_ore.text58" } }
    element.add { type = "label", caption = { "iron_ore.text59" } }
    element.add { type = "label", caption = { "iron_ore.text60" } }
    element.add { type = "label", caption = { "iron_ore.text61" } }
    element.add { type = "label", caption = { "iron_ore.text62" } }
    element.add { type = "label", caption = { "iron_ore.text63" } }
    element.add { type = "label", caption = { "iron_ore.text64" } }
    element.add { type = "label", caption = { "iron_ore.text65" } }
    element.add { type = "label", caption = { "iron_ore.text66" } }
    element.add { type = "label", caption = { "iron_ore.text67" } }
    element.add { type = "label", caption = { "iron_ore.text68" } }
    element.add { type = "label", caption = { "iron_ore.text69" } }
    element.add { type = "label", caption = { "iron_ore.text70" } }
    element.add { type = "label", caption = { "iron_ore.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text71" } }
    element.add { type = "label", caption = { "iron_ore.text72" } }
    element.add { type = "label", caption = { "iron_ore.text73" } }
    element.add { type = "label", caption = { "iron_ore.text74" } }
    element.add { type = "label", caption = { "iron_ore.text75" } }
    element.add { type = "label", caption = { "iron_ore.text76" } }
    element.add { type = "label", caption = { "iron_ore.text77" } }
    element.add { type = "label", caption = { "iron_ore.text78" } }
    element.add { type = "label", caption = { "iron_ore.text79" } }
    element.add { type = "label", caption = { "iron_ore.text80" } }
    element.add { type = "label", caption = { "iron_ore.text81" } }
    element.add { type = "label", caption = { "iron_ore.text82" } }
    element.add { type = "label", caption = { "iron_ore.text83" } }
    element.add { type = "label", caption = { "iron_ore.text84" } }
    element.add { type = "label", caption = { "iron_ore.text85" } }
    element.add { type = "label", caption = { "iron_ore.text86" } }
    element.add { type = "label", caption = { "iron_ore.text87" } }
    element.add { type = "label", caption = { "iron_ore.text88" } }
    element.add { type = "label", caption = { "iron_ore.text89" } }
    element.add { type = "label", caption = { "iron_ore.text90" } }
    element.add { type = "label", caption = { "iron_ore.text91" } }
    element.add { type = "label", caption = { "iron_ore.text92" } }
    element.add { type = "label", caption = { "iron_ore.text93" } }
    element.add { type = "label", caption = { "iron_ore.text94" } }
    element.add { type = "label", caption = { "iron_ore.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text95" } }
    element.add { type = "label", caption = { "iron_ore.text96" } }
    element.add { type = "label", caption = { "iron_ore.text97" } }
    element.add { type = "label", caption = { "iron_ore.text98" } }
    element.add { type = "label", caption = { "iron_ore.text99" } }
    element.add { type = "label", caption = { "iron_ore.text100" } }
    element.add { type = "label", caption = { "iron_ore.text101" } }
    element.add { type = "label", caption = { "iron_ore.text102" } }
    element.add { type = "label", caption = { "iron_ore.text103" } }
    element.add { type = "label", caption = { "iron_ore.text104" } }
    element.add { type = "label", caption = { "iron_ore.text105" } }
    element.add { type = "label", caption = { "iron_ore.text106" } }
    element.add { type = "label", caption = { "iron_ore.text107" } }
    element.add { type = "label", caption = { "iron_ore.text108" } }
    element.add { type = "label", caption = { "iron_ore.text109" } }
    element.add { type = "label", caption = { "iron_ore.text110" } }
    element.add { type = "label", caption = { "iron_ore.text111" } }
    element.add { type = "label", caption = { "iron_ore.text112" } }
    element.add { type = "label", caption = { "iron_ore.text113" } }
    element.add { type = "label", caption = { "iron_ore.label8" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text114" } }
    element.add { type = "label", caption = { "iron_ore.text115" } }
    element.add { type = "label", caption = { "iron_ore.text116" } }
    element.add { type = "label", caption = { "iron_ore.text117" } }
    element.add { type = "label", caption = { "iron_ore.text118" } }
    element.add { type = "label", caption = { "iron_ore.text119" } }
    element.add { type = "label", caption = { "iron_ore.text120" } }
    element.add { type = "label", caption = { "iron_ore.text121" } }
    element.add { type = "label", caption = { "iron_ore.text122" } }
    element.add { type = "label", caption = { "iron_ore.text123" } }
    element.add { type = "label", caption = { "iron_ore.text124" } }
    element.add { type = "label", caption = { "iron_ore.text125" } }
    element.add { type = "label", caption = { "iron_ore.text126" } }
    element.add { type = "label", caption = { "iron_ore.text127" } }
    element.add { type = "label", caption = { "iron_ore.text128" } }
    element.add { type = "label", caption = { "iron_ore.text129" } }
    element.add { type = "label", caption = { "iron_ore.text130" } }
    element.add { type = "label", caption = { "iron_ore.text131" } }
    element.add { type = "label", caption = { "iron_ore.text132" } }
    element.add { type = "label", caption = { "iron_ore.text133" } }
    element.add { type = "label", caption = { "iron_ore.text134" } }
    element.add { type = "label", caption = { "iron_ore.text135" } }
    element.add { type = "label", caption = { "iron_ore.text136" } }
    element.add { type = "label", caption = { "iron_ore.text137" } }
    element.add { type = "label", caption = { "iron_ore.label9" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text138" } }
    element.add { type = "label", caption = { "iron_ore.text139" } }
    element.add { type = "label", caption = { "iron_ore.text140" } }
    element.add { type = "label", caption = { "iron_ore.text141" } }
    element.add { type = "label", caption = { "iron_ore.text142" } }
    element.add { type = "label", caption = { "iron_ore.text143" } }
    element.add { type = "label", caption = { "iron_ore.text144" } }
    element.add { type = "label", caption = { "iron_ore.text145" } }
    element.add { type = "label", caption = { "iron_ore.text146" } }
    element.add { type = "label", caption = { "iron_ore.text147" } }
    element.add { type = "label", caption = { "iron_ore.text148" } }
    element.add { type = "label", caption = { "iron_ore.text149" } }
    element.add { type = "label", caption = { "iron_ore.text150" } }
    element.add { type = "label", caption = { "iron_ore.text151" } }
    element.add { type = "label", caption = { "iron_ore.label10" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text152" } }
    element.add { type = "label", caption = { "iron_ore.text153" } }
    element.add { type = "label", caption = { "iron_ore.text154" } }
    element.add { type = "label", caption = { "iron_ore.text155" } }
    element.add { type = "label", caption = { "iron_ore.text156" } }
    element.add { type = "label", caption = { "iron_ore.label11" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_ore.text157" } }
    element.add { type = "label", caption = { "iron_ore.text158" } }
    element.add { type = "label", caption = { "iron_ore.text159" } }
    element.add { type = "label", caption = { "iron_ore.text160" } }
    element.add { type = "label", caption = { "iron_ore.text161" } }
    element.add { type = "label", caption = { "iron_ore.text162" } }
    element.add { type = "label", caption = { "iron_ore.text163" } }
    element.add { type = "label", caption = { "iron_ore.text164" } }
    element.add { type = "label", caption = { "iron_ore.text165" } }
    element.add { type = "label", caption = { "iron_ore.text166" } }
    element.add { type = "label", caption = { "iron_ore.text167" } }
  end
  
  if page_name == "copper_ore" then
    element.add { type = "label", caption = { "copper_ore.text1" } }
    element.add { type = "label", caption = { "copper_ore.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text2" } }
    element.add { type = "label", caption = { "copper_ore.text3" } }
    element.add { type = "label", caption = { "copper_ore.text4" } }
    element.add { type = "label", caption = { "copper_ore.text5" } }
    element.add { type = "label", caption = { "copper_ore.text6" } }
    element.add { type = "label", caption = { "copper_ore.text7" } }
    element.add { type = "label", caption = { "copper_ore.text8" } }
    element.add { type = "label", caption = { "copper_ore.text9" } }
    element.add { type = "label", caption = { "copper_ore.text10" } }
    element.add { type = "label", caption = { "copper_ore.text11" } }
    element.add { type = "label", caption = { "copper_ore.text12" } }
    element.add { type = "label", caption = { "copper_ore.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text13" } }
    element.add { type = "label", caption = { "copper_ore.text14" } }
    element.add { type = "label", caption = { "copper_ore.text15" } }
    element.add { type = "label", caption = { "copper_ore.text16" } }
    element.add { type = "label", caption = { "copper_ore.text17" } }
    element.add { type = "label", caption = { "copper_ore.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text18" } }
    element.add { type = "label", caption = { "copper_ore.text19" } }
    element.add { type = "label", caption = { "copper_ore.text20" } }
    element.add { type = "label", caption = { "copper_ore.text21" } }
    element.add { type = "label", caption = { "copper_ore.text22" } }
    element.add { type = "label", caption = { "copper_ore.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text23" } }
    element.add { type = "label", caption = { "copper_ore.text24" } }
    element.add { type = "label", caption = { "copper_ore.text25" } }
    element.add { type = "label", caption = { "copper_ore.text26" } }
    element.add { type = "label", caption = { "copper_ore.text27" } }
    element.add { type = "label", caption = { "copper_ore.text28" } }
    element.add { type = "label", caption = { "copper_ore.text29" } }
    element.add { type = "label", caption = { "copper_ore.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text30" } }
    element.add { type = "label", caption = { "copper_ore.text31" } }
    element.add { type = "label", caption = { "copper_ore.text32" } }
    element.add { type = "label", caption = { "copper_ore.text33" } }
    element.add { type = "label", caption = { "copper_ore.text34" } }
    element.add { type = "label", caption = { "copper_ore.text35" } }
    element.add { type = "label", caption = { "copper_ore.text36" } }
    element.add { type = "label", caption = { "copper_ore.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text37" } }
    element.add { type = "label", caption = { "copper_ore.text38" } }
    element.add { type = "label", caption = { "copper_ore.text39" } }
    element.add { type = "label", caption = { "copper_ore.text40" } }
    element.add { type = "label", caption = { "copper_ore.text41" } }
    element.add { type = "label", caption = { "copper_ore.text42" } }
    element.add { type = "label", caption = { "copper_ore.text43" } }
    element.add { type = "label", caption = { "copper_ore.text44" } }
    element.add { type = "label", caption = { "copper_ore.text45" } }
    element.add { type = "label", caption = { "copper_ore.text46" } }
    element.add { type = "label", caption = { "copper_ore.text47" } }
    element.add { type = "label", caption = { "copper_ore.label7" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text48" } }
    element.add { type = "label", caption = { "copper_ore.text49" } }
    element.add { type = "label", caption = { "copper_ore.text50" } }
    element.add { type = "label", caption = { "copper_ore.text51" } }
    element.add { type = "label", caption = { "copper_ore.text52" } }
    element.add { type = "label", caption = { "copper_ore.text53" } }
    element.add { type = "label", caption = { "copper_ore.text54" } }
    element.add { type = "label", caption = { "copper_ore.label8" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text55" } }
    element.add { type = "label", caption = { "copper_ore.text56" } }
    element.add { type = "label", caption = { "copper_ore.text57" } }
    element.add { type = "label", caption = { "copper_ore.text58" } }
    element.add { type = "label", caption = { "copper_ore.text59" } }
    element.add { type = "label", caption = { "copper_ore.text60" } }
    element.add { type = "label", caption = { "copper_ore.text61" } }
    element.add { type = "label", caption = { "copper_ore.text62" } }
    element.add { type = "label", caption = { "copper_ore.text63" } }
    element.add { type = "label", caption = { "copper_ore.text64" } }
    element.add { type = "label", caption = { "copper_ore.text65" } }
    element.add { type = "label", caption = { "copper_ore.text66" } }
    element.add { type = "label", caption = { "copper_ore.label9" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text67" } }
    element.add { type = "label", caption = { "copper_ore.text68" } }
    element.add { type = "label", caption = { "copper_ore.text69" } }
    element.add { type = "label", caption = { "copper_ore.text70" } }
    element.add { type = "label", caption = { "copper_ore.text71" } }
    element.add { type = "label", caption = { "copper_ore.text72" } }
    element.add { type = "label", caption = { "copper_ore.text73" } }
    element.add { type = "label", caption = { "copper_ore.text74" } }
    element.add { type = "label", caption = { "copper_ore.text75" } }
    element.add { type = "label", caption = { "copper_ore.label10" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "copper_ore.text76" } }
    element.add { type = "label", caption = { "copper_ore.text77" } }
    element.add { type = "label", caption = { "copper_ore.text78" } }
    element.add { type = "label", caption = { "copper_ore.text79" } }
    element.add { type = "label", caption = { "copper_ore.text80" } }
    element.add { type = "label", caption = { "copper_ore.text81" } }
    element.add { type = "label", caption = { "copper_ore.text82" } }
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
  
  if page_name == "coal_liquification" then
    element.add { type = "label", caption = { "coal_liquification.text1" } }
    element.add { type = "label", caption = { "coal_liquification.text2" } }
    element.add { type = "label", caption = { "coal_liquification.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal_liquification.text3" } }
    element.add { type = "label", caption = { "coal_liquification.text4" } }
    element.add { type = "label", caption = { "coal_liquification.text5" } }
    element.add { type = "label", caption = { "coal_liquification.text6" } }
    element.add { type = "label", caption = { "coal_liquification.text7" } }
    element.add { type = "label", caption = { "coal_liquification.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal_liquification.text8" } }
    element.add { type = "label", caption = { "coal_liquification.text9" } }
    element.add { type = "label", caption = { "coal_liquification.text10" } }
    element.add { type = "label", caption = { "coal_liquification.text11" } }
    element.add { type = "label", caption = { "coal_liquification.text12" } }
    element.add { type = "label", caption = { "coal_liquification.text13" } }
    element.add { type = "label", caption = { "coal_liquification.text14" } }
    element.add { type = "label", caption = { "coal_liquification.text15" } }
    element.add { type = "label", caption = { "coal_liquification.text16" } }
    element.add { type = "label", caption = { "coal_liquification.text17" } }
    element.add { type = "label", caption = { "coal_liquification.text18" } }
    element.add { type = "label", caption = { "coal_liquification.text19" } }
    element.add { type = "label", caption = { "coal_liquification.text20" } }
    element.add { type = "label", caption = { "coal_liquification.text21" } }
    element.add { type = "label", caption = { "coal_liquification.text22" } }
    element.add { type = "label", caption = { "coal_liquification.text23" } }
    element.add { type = "label", caption = { "coal_liquification.text24" } }
    element.add { type = "label", caption = { "coal_liquification.text25" } }
    element.add { type = "label", caption = { "coal_liquification.text26" } }
    element.add { type = "label", caption = { "coal_liquification.text27" } }
    element.add { type = "label", caption = { "coal_liquification.text28" } }
    element.add { type = "label", caption = { "coal_liquification.text29" } }
    element.add { type = "label", caption = { "coal_liquification.text30" } }
    element.add { type = "label", caption = { "coal_liquification.text31" } }
    element.add { type = "label", caption = { "coal_liquification.text32" } }
    element.add { type = "label", caption = { "coal_liquification.text33" } }
    element.add { type = "label", caption = { "coal_liquification.text34" } }
    element.add { type = "label", caption = { "coal_liquification.text35" } }
    element.add { type = "label", caption = { "coal_liquification.text36" } }
    element.add { type = "label", caption = { "coal_liquification.text37" } }
    element.add { type = "label", caption = { "coal_liquification.text38" } }
    element.add { type = "label", caption = { "coal_liquification.text39" } }
    element.add { type = "label", caption = { "coal_liquification.text40" } }
    element.add { type = "label", caption = { "coal_liquification.text41" } }
    element.add { type = "label", caption = { "coal_liquification.text42" } }
    element.add { type = "label", caption = { "coal_liquification.text43" } }
    element.add { type = "label", caption = { "coal_liquification.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "coal_liquification.text44" } }
    element.add { type = "label", caption = { "coal_liquification.text45" } }
    element.add { type = "label", caption = { "coal_liquification.text46" } }
    element.add { type = "label", caption = { "coal_liquification.text47" } }
    element.add { type = "label", caption = { "coal_liquification.text48" } }
    element.add { type = "label", caption = { "coal_liquification.text49" } }
    element.add { type = "label", caption = { "coal_liquification.text50" } }
    element.add { type = "label", caption = { "coal_liquification.text51" } }
    element.add { type = "label", caption = { "coal_liquification.text52" } }
    element.add { type = "label", caption = { "coal_liquification.text53" } }
    element.add { type = "label", caption = { "coal_liquification.text54" } }
    element.add { type = "label", caption = { "coal_liquification.text55" } }
    element.add { type = "label", caption = { "coal_liquification.text56" } }
    element.add { type = "label", caption = { "coal_liquification.text57" } }
    element.add { type = "label", caption = { "coal_liquification.text58" } }
    element.add { type = "label", caption = { "coal_liquification.text59" } }
    element.add { type = "label", caption = { "coal_liquification.text60" } }
    element.add { type = "label", caption = { "coal_liquification.text61" } }
    element.add { type = "label", caption = { "coal_liquification.text62" } }
    element.add { type = "label", caption = { "coal_liquification.text63" } }
    element.add { type = "label", caption = { "coal_liquification.text64" } }
    element.add { type = "label", caption = { "coal_liquification.text65" } }
    element.add { type = "label", caption = { "coal_liquification.text66" } }
    element.add { type = "label", caption = { "coal_liquification.text67" } }
    element.add { type = "label", caption = { "coal_liquification.text68" } }
    element.add { type = "label", caption = { "coal_liquification.text69" } }
  end
  
  if page_name == "heavy_oil_cracking" then
    element.add { type = "label", caption = { "heavy_oil_cracking.text1" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil_cracking.text2" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text3" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text4" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text5" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text6" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text7" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text8" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text9" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text10" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text11" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text12" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text13" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text14" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text15" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.text16" } }
    element.add { type = "label", caption = { "heavy_oil_cracking.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "heavy_oil_cracking.text17" } }
  end
  
  if page_name == "solid_fuel" then
    element.add { type = "label", caption = { "solid_fuel.text1" } }
    element.add { type = "label", caption = { "solid_fuel.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solid_fuel.text2" } }
    element.add { type = "label", caption = { "solid_fuel.text3" } }
    element.add { type = "label", caption = { "solid_fuel.text4" } }
    element.add { type = "label", caption = { "solid_fuel.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solid_fuel.text5" } }
    element.add { type = "label", caption = { "solid_fuel.text6" } }
    element.add { type = "label", caption = { "solid_fuel.text7" } }
    element.add { type = "label", caption = { "solid_fuel.text8" } }
    element.add { type = "label", caption = { "solid_fuel.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "solid_fuel.text9" } }
    element.add { type = "label", caption = { "solid_fuel.text10" } }
    element.add { type = "label", caption = { "solid_fuel.text11" } }
    element.add { type = "label", caption = { "solid_fuel.text12" } }
    element.add { type = "label", caption = { "solid_fuel.text13" } }
    element.add { type = "label", caption = { "solid_fuel.text14" } }
    element.add { type = "label", caption = { "solid_fuel.text15" } }
    element.add { type = "label", caption = { "solid_fuel.text16" } }
    element.add { type = "label", caption = { "solid_fuel.text17" } }
    element.add { type = "label", caption = { "solid_fuel.text18" } }
    element.add { type = "label", caption = { "solid_fuel.text19" } }
    element.add { type = "label", caption = { "solid_fuel.text20" } }
    element.add { type = "label", caption = { "solid_fuel.text21" } }
    element.add { type = "label", caption = { "solid_fuel.text22" } }
    element.add { type = "label", caption = { "solid_fuel.text23" } }
    element.add { type = "label", caption = { "solid_fuel.text24" } }
    element.add { type = "label", caption = { "solid_fuel.text25" } }
    element.add { type = "label", caption = { "solid_fuel.text26" } }
    element.add { type = "label", caption = { "solid_fuel.text27" } }
    element.add { type = "label", caption = { "solid_fuel.text28" } }
    element.add { type = "label", caption = { "solid_fuel.text29" } }
    element.add { type = "label", caption = { "solid_fuel.text30" } }
  end
  
  if page_name == "lubricant" then
    element.add { type = "label", caption = { "lubricant.text1" } }
    element.add { type = "label", caption = { "lubricant.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "lubricant.text2" } }
    element.add { type = "label", caption = { "lubricant.text3" } }
    element.add { type = "label", caption = { "lubricant.text4" } }
    element.add { type = "label", caption = { "lubricant.text5" } }
    element.add { type = "label", caption = { "lubricant.text6" } }
    element.add { type = "label", caption = { "lubricant.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "lubricant.text7" } }
    element.add { type = "label", caption = { "lubricant.text8" } }
    element.add { type = "label", caption = { "lubricant.text9" } }
    element.add { type = "label", caption = { "lubricant.text10" } }
  end
  
  if page_name == "steel" then
    element.add { type = "label", caption = { "steel.text1" } }
    element.add { type = "label", caption = { "steel.text2" } }
    element.add { type = "label", caption = { "steel.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steel.text3" } }
    element.add { type = "label", caption = { "steel.text4" } }
    element.add { type = "label", caption = { "steel.text5" } }
    element.add { type = "label", caption = { "steel.text6" } }
    element.add { type = "label", caption = { "steel.text7" } }
    element.add { type = "label", caption = { "steel.text8" } }
    element.add { type = "label", caption = { "steel.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "steel.text9" } }
    element.add { type = "label", caption = { "steel.text10" } }
    element.add { type = "label", caption = { "steel.text11" } }
    element.add { type = "label", caption = { "steel.text12" } }
    element.add { type = "label", caption = { "steel.text13" } }
    element.add { type = "label", caption = { "steel.text14" } }
    element.add { type = "label", caption = { "steel.text15" } }
    element.add { type = "label", caption = { "steel.text16" } }
    element.add { type = "label", caption = { "steel.text17" } }
    element.add { type = "label", caption = { "steel.text18" } }
    element.add { type = "label", caption = { "steel.text19" } }
    element.add { type = "label", caption = { "steel.text20" } }
    element.add { type = "label", caption = { "steel.text21" } }
    element.add { type = "label", caption = { "steel.text22" } }
    element.add { type = "label", caption = { "steel.text23" } }
    element.add { type = "label", caption = { "steel.text24" } }
    element.add { type = "label", caption = { "steel.text25" } }
    element.add { type = "label", caption = { "steel.text26" } }
    element.add { type = "label", caption = { "steel.text27" } }
    element.add { type = "label", caption = { "steel.text28" } }
    element.add { type = "label", caption = { "steel.text29" } }
    element.add { type = "label", caption = { "steel.text30" } }
  end
  
  if page_name == "plastic" then
    element.add { type = "label", caption = { "plastic.text1" } }
    element.add { type = "label", caption = { "plastic.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "plastic.text2" } }
    element.add { type = "label", caption = { "plastic.text3" } }
    element.add { type = "label", caption = { "plastic.text4" } }
    element.add { type = "label", caption = { "plastic.text5" } }
    element.add { type = "label", caption = { "plastic.text6" } }
    element.add { type = "label", caption = { "plastic.text7" } }
    element.add { type = "label", caption = { "plastic.text8" } }
    element.add { type = "label", caption = { "plastic.text9" } }
    element.add { type = "label", caption = { "plastic.text10" } }
    element.add { type = "label", caption = { "plastic.text11" } }
    element.add { type = "label", caption = { "plastic.text12" } }
    element.add { type = "label", caption = { "plastic.text13" } }
    element.add { type = "label", caption = { "plastic.text14" } }
    element.add { type = "label", caption = { "plastic.text15" } }
    element.add { type = "label", caption = { "plastic.text16" } }
    element.add { type = "label", caption = { "plastic.text17" } }
    element.add { type = "label", caption = { "plastic.text18" } }
    element.add { type = "label", caption = { "plastic.text19" } }
    element.add { type = "label", caption = { "plastic.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "plastic.text20" } }
    element.add { type = "label", caption = { "plastic.text21" } }
    element.add { type = "label", caption = { "plastic.text22" } }
    element.add { type = "label", caption = { "plastic.text23" } }
    element.add { type = "label", caption = { "plastic.text24" } }
    element.add { type = "label", caption = { "plastic.text25" } }
    element.add { type = "label", caption = { "plastic.text26" } }
    element.add { type = "label", caption = { "plastic.text27" } }
    element.add { type = "label", caption = { "plastic.text28" } }
    element.add { type = "label", caption = { "plastic.text29" } }
    element.add { type = "label", caption = { "plastic.text30" } }
    element.add { type = "label", caption = { "plastic.text31" } }
    element.add { type = "label", caption = { "plastic.text32" } }
    element.add { type = "label", caption = { "plastic.text33" } }
    element.add { type = "label", caption = { "plastic.text34" } }
    element.add { type = "label", caption = { "plastic.text35" } }
    element.add { type = "label", caption = { "plastic.text36" } }
    element.add { type = "label", caption = { "plastic.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "plastic.text37" } }
    element.add { type = "label", caption = { "plastic.text38" } }
    element.add { type = "label", caption = { "plastic.text39" } }
    element.add { type = "label", caption = { "plastic.text40" } }
    element.add { type = "label", caption = { "plastic.text41" } }
    element.add { type = "label", caption = { "plastic.text42" } }
    element.add { type = "label", caption = { "plastic.text43" } }
    element.add { type = "label", caption = { "plastic.text44" } }
    element.add { type = "label", caption = { "plastic.text45" } }
    element.add { type = "label", caption = { "plastic.text46" } }
    element.add { type = "label", caption = { "plastic.text47" } }
    element.add { type = "label", caption = { "plastic.text48" } }
    element.add { type = "label", caption = { "plastic.text49" } }
    element.add { type = "label", caption = { "plastic.text50" } }
    element.add { type = "label", caption = { "plastic.text51" } }
  end
  
  if page_name == "sulfur" then
    element.add { type = "label", caption = { "sulfur.text1" } }
    element.add { type = "label", caption = { "sulfur.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfur.text2" } }
    element.add { type = "label", caption = { "sulfur.text3" } }
    element.add { type = "label", caption = { "sulfur.text4" } }
    element.add { type = "label", caption = { "sulfur.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfur.text5" } }
    element.add { type = "label", caption = { "sulfur.text6" } }
    element.add { type = "label", caption = { "sulfur.text7" } }
    element.add { type = "label", caption = { "sulfur.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfur.text8" } }
    element.add { type = "label", caption = { "sulfur.text9" } }
    element.add { type = "label", caption = { "sulfur.text10" } }
    element.add { type = "label", caption = { "sulfur.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfur.text11" } }
    element.add { type = "label", caption = { "sulfur.text12" } }
    element.add { type = "label", caption = { "sulfur.text13" } }
    element.add { type = "label", caption = { "sulfur.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfur.text14" } }
    element.add { type = "label", caption = { "sulfur.text15" } }
    element.add { type = "label", caption = { "sulfur.text16" } }
    element.add { type = "label", caption = { "sulfur.label6" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "sulfur.text17" } }
    element.add { type = "label", caption = { "sulfur.text18" } }
    element.add { type = "label", caption = { "sulfur.text19" } }
    element.add { type = "label", caption = { "sulfur.text20" } }
    element.add { type = "label", caption = { "sulfur.text21" } }
    element.add { type = "label", caption = { "sulfur.text22" } }
    element.add { type = "label", caption = { "sulfur.text23" } }
    element.add { type = "label", caption = { "sulfur.text24" } }
    element.add { type = "label", caption = { "sulfur.text25" } }
    element.add { type = "label", caption = { "sulfur.text26" } }
    element.add { type = "label", caption = { "sulfur.text27" } }
    element.add { type = "label", caption = { "sulfur.text28" } }
    element.add { type = "label", caption = { "sulfur.text29" } }
    element.add { type = "label", caption = { "sulfur.text30" } }
    element.add { type = "label", caption = { "sulfur.text31" } }
    element.add { type = "label", caption = { "sulfur.text32" } }
  end
  
  if page_name == "battery" then
    element.add { type = "label", caption = { "battery.text1" } }
    element.add { type = "label", caption = { "battery.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "battery.text2" } }
    element.add { type = "label", caption = { "battery.text3" } }
    element.add { type = "label", caption = { "battery.text4" } }
    element.add { type = "label", caption = { "battery.text5" } }
    element.add { type = "label", caption = { "battery.text6" } }
    element.add { type = "label", caption = { "battery.text7" } }
    element.add { type = "label", caption = { "battery.text8" } }
    element.add { type = "label", caption = { "battery.text9" } }
    element.add { type = "label", caption = { "battery.text10" } }
    element.add { type = "label", caption = { "battery.text11" } }
    element.add { type = "label", caption = { "battery.text12" } }
    element.add { type = "label", caption = { "battery.text13" } }
    element.add { type = "label", caption = { "battery.text14" } }
    element.add { type = "label", caption = { "battery.text15" } }
    element.add { type = "label", caption = { "battery.text16" } }
    element.add { type = "label", caption = { "battery.text17" } }
    element.add { type = "label", caption = { "battery.text18" } }
    element.add { type = "label", caption = { "battery.text19" } }
    element.add { type = "label", caption = { "battery.text20" } }
    element.add { type = "label", caption = { "battery.text21" } }
    element.add { type = "label", caption = { "battery.text22" } }
    element.add { type = "label", caption = { "battery.text23" } }
    element.add { type = "label", caption = { "battery.text24" } }
    element.add { type = "label", caption = { "battery.text25" } }
    element.add { type = "label", caption = { "battery.text26" } }
    element.add { type = "label", caption = { "battery.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "battery.text27" } }
    element.add { type = "label", caption = { "battery.text28" } }
    element.add { type = "label", caption = { "battery.text29" } }
    element.add { type = "label", caption = { "battery.text30" } }
    element.add { type = "label", caption = { "battery.text31" } }
    element.add { type = "label", caption = { "battery.text32" } }
    element.add { type = "label", caption = { "battery.text33" } }
    element.add { type = "label", caption = { "battery.text34" } }
    element.add { type = "label", caption = { "battery.text35" } }
    element.add { type = "label", caption = { "battery.text36" } }
    element.add { type = "label", caption = { "battery.text37" } }
    element.add { type = "label", caption = { "battery.text38" } }
    element.add { type = "label", caption = { "battery.text39" } }
    element.add { type = "label", caption = { "battery.text40" } }
    element.add { type = "label", caption = { "battery.text41" } }
    element.add { type = "label", caption = { "battery.text42" } }
    element.add { type = "label", caption = { "battery.text43" } }
    element.add { type = "label", caption = { "battery.text44" } }
    element.add { type = "label", caption = { "battery.text45" } }
    element.add { type = "label", caption = { "battery.text46" } }
    element.add { type = "label", caption = { "battery.text47" } }
    element.add { type = "label", caption = { "battery.text48" } }
    element.add { type = "label", caption = { "battery.text49" } }
    element.add { type = "label", caption = { "battery.text50" } }
    element.add { type = "label", caption = { "battery.text51" } }
    element.add { type = "label", caption = { "battery.text52" } }
    element.add { type = "label", caption = { "battery.text53" } }
    element.add { type = "label", caption = { "battery.text54" } }
    element.add { type = "label", caption = { "battery.text55" } }
    element.add { type = "label", caption = { "battery.text56" } }
    element.add { type = "label", caption = { "battery.text57" } }
    element.add { type = "label", caption = { "battery.text58" } }
    element.add { type = "label", caption = { "battery.text59" } }
    element.add { type = "label", caption = { "battery.text60" } }
    element.add { type = "label", caption = { "battery.text61" } }
    element.add { type = "label", caption = { "battery.text62" } }
    element.add { type = "label", caption = { "battery.text63" } }
    element.add { type = "label", caption = { "battery.text64" } }
    element.add { type = "label", caption = { "battery.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "battery.text65" } }
    element.add { type = "label", caption = { "battery.text66" } }
    element.add { type = "label", caption = { "battery.text67" } }
    element.add { type = "label", caption = { "battery.text68" } }
    element.add { type = "label", caption = { "battery.text69" } }
    element.add { type = "label", caption = { "battery.text70" } }
    element.add { type = "label", caption = { "battery.text71" } }
    element.add { type = "label", caption = { "battery.text72" } }
    element.add { type = "label", caption = { "battery.text73" } }
    element.add { type = "label", caption = { "battery.text74" } }
    element.add { type = "label", caption = { "battery.text75" } }
    element.add { type = "label", caption = { "battery.text76" } }
    element.add { type = "label", caption = { "battery.text77" } }
    element.add { type = "label", caption = { "battery.text78" } }
    element.add { type = "label", caption = { "battery.text79" } }
    element.add { type = "label", caption = { "battery.text80" } }
    element.add { type = "label", caption = { "battery.text81" } }
    element.add { type = "label", caption = { "battery.text82" } }
    element.add { type = "label", caption = { "battery.text83" } }
  end
  
  if page_name == "explosives" then
    element.add { type = "label", caption = { "explosives.text1" } }
    element.add { type = "label", caption = { "explosives.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "explosives.text2" } }
    element.add { type = "label", caption = { "explosives.text3" } }
    element.add { type = "label", caption = { "explosives.text4" } }
    element.add { type = "label", caption = { "explosives.text5" } }
    element.add { type = "label", caption = { "explosives.text6" } }
    element.add { type = "label", caption = { "explosives.text7" } }
    element.add { type = "label", caption = { "explosives.text8" } }
    element.add { type = "label", caption = { "explosives.text9" } }
    element.add { type = "label", caption = { "explosives.text10" } }
    element.add { type = "label", caption = { "explosives.text11" } }
    element.add { type = "label", caption = { "explosives.text12" } }
    element.add { type = "label", caption = { "explosives.text13" } }
    element.add { type = "label", caption = { "explosives.text14" } }
    element.add { type = "label", caption = { "explosives.text15" } }
    element.add { type = "label", caption = { "explosives.text16" } }
    element.add { type = "label", caption = { "explosives.text17" } }
    element.add { type = "label", caption = { "explosives.text18" } }
    element.add { type = "label", caption = { "explosives.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "explosives.text19" } }
    element.add { type = "label", caption = { "explosives.text20" } }
    element.add { type = "label", caption = { "explosives.text21" } }
    element.add { type = "label", caption = { "explosives.text22" } }
    element.add { type = "label", caption = { "explosives.text23" } }
  end
  
  if page_name == "uranium" then
    element.add { type = "label", caption = { "uranium.text1" } }
    element.add { type = "label", caption = { "uranium.text2" } }
    element.add { type = "label", caption = { "uranium.text3" } }
    element.add { type = "label", caption = { "uranium.text4" } }
    element.add { type = "label", caption = { "uranium.text5" } }
    element.add { type = "label", caption = { "uranium.text6" } }
    element.add { type = "label", caption = { "uranium.text7" } }
    element.add { type = "label", caption = { "uranium.text8" } }
    element.add { type = "label", caption = { "uranium.text9" } }
    element.add { type = "label", caption = { "uranium.text10" } }
    element.add { type = "label", caption = { "uranium.text11" } }
    element.add { type = "label", caption = { "uranium.text12" } }
    element.add { type = "label", caption = { "uranium.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "uranium.text13" } }
    element.add { type = "label", caption = { "uranium.text14" } }
    element.add { type = "label", caption = { "uranium.text15" } }
    element.add { type = "label", caption = { "uranium.text16" } }
    element.add { type = "label", caption = { "uranium.text17" } }
    element.add { type = "label", caption = { "uranium.text18" } }
    element.add { type = "label", caption = { "uranium.text19" } }
    element.add { type = "label", caption = { "uranium.text20" } }
    element.add { type = "label", caption = { "uranium.text21" } }
    element.add { type = "label", caption = { "uranium.text22" } }
    element.add { type = "label", caption = { "uranium.text23" } }
    element.add { type = "label", caption = { "uranium.text24" } }
    element.add { type = "label", caption = { "uranium.text25" } }
    element.add { type = "label", caption = { "uranium.text26" } }
    element.add { type = "label", caption = { "uranium.text27" } }
    element.add { type = "label", caption = { "uranium.text28" } }
    element.add { type = "label", caption = { "uranium.text29" } }
    element.add { type = "label", caption = { "uranium.text30" } }
    element.add { type = "label", caption = { "uranium.text31" } }
    element.add { type = "label", caption = { "uranium.text32" } }
    element.add { type = "label", caption = { "uranium.text33" } }
    element.add { type = "label", caption = { "uranium.text34" } }
    element.add { type = "label", caption = { "uranium.text35" } }
    element.add { type = "label", caption = { "uranium.text36" } }
    element.add { type = "label", caption = { "uranium.text37" } }
    element.add { type = "label", caption = { "uranium.text38" } }
    element.add { type = "label", caption = { "uranium.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "uranium.text39" } }
    element.add { type = "label", caption = { "uranium.text40" } }
    element.add { type = "label", caption = { "uranium.text41" } }
    element.add { type = "label", caption = { "uranium.text42" } }
    element.add { type = "label", caption = { "uranium.text43" } }
    element.add { type = "label", caption = { "uranium.text44" } }
    element.add { type = "label", caption = { "uranium.text45" } }
    element.add { type = "label", caption = { "uranium.text46" } }
    element.add { type = "label", caption = { "uranium.text47" } }
    element.add { type = "label", caption = { "uranium.text48" } }
    element.add { type = "label", caption = { "uranium.text49" } }
    element.add { type = "label", caption = { "uranium.text50" } }
    element.add { type = "label", caption = { "uranium.text51" } }
    element.add { type = "label", caption = { "uranium.text52" } }
    element.add { type = "label", caption = { "uranium.text53" } }
    element.add { type = "label", caption = { "uranium.text54" } }
    element.add { type = "label", caption = { "uranium.text55" } }
    element.add { type = "label", caption = { "uranium.text56" } }
  end
  
  if page_name == "iron_gear" then
    element.add { type = "label", caption = { "iron_gear.text1" } }
    element.add { type = "label", caption = { "iron_gear.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_gear.text2" } }
    element.add { type = "label", caption = { "iron_gear.text3" } }
    element.add { type = "label", caption = { "iron_gear.text4" } }
    element.add { type = "label", caption = { "iron_gear.text5" } }
    element.add { type = "label", caption = { "iron_gear.text6" } }
    element.add { type = "label", caption = { "iron_gear.text7" } }
    element.add { type = "label", caption = { "iron_gear.text8" } }
    element.add { type = "label", caption = { "iron_gear.text9" } }
    element.add { type = "label", caption = { "iron_gear.text10" } }
    element.add { type = "label", caption = { "iron_gear.text11" } }
    element.add { type = "label", caption = { "iron_gear.text12" } }
    element.add { type = "label", caption = { "iron_gear.text13" } }
    element.add { type = "label", caption = { "iron_gear.text14" } }
    element.add { type = "label", caption = { "iron_gear.text15" } }
    element.add { type = "label", caption = { "iron_gear.text16" } }
    element.add { type = "label", caption = { "iron_gear.text17" } }
    element.add { type = "label", caption = { "iron_gear.text18" } }
    element.add { type = "label", caption = { "iron_gear.text19" } }
    element.add { type = "label", caption = { "iron_gear.text20" } }
    element.add { type = "label", caption = { "iron_gear.text21" } }
    element.add { type = "label", caption = { "iron_gear.text22" } }
    element.add { type = "label", caption = { "iron_gear.text23" } }
    element.add { type = "label", caption = { "iron_gear.text24" } }
    element.add { type = "label", caption = { "iron_gear.text25" } }
    element.add { type = "label", caption = { "iron_gear.text26" } }
    element.add { type = "label", caption = { "iron_gear.text27" } }
    element.add { type = "label", caption = { "iron_gear.text28" } }
    element.add { type = "label", caption = { "iron_gear.text29" } }
    element.add { type = "label", caption = { "iron_gear.text30" } }
    element.add { type = "label", caption = { "iron_gear.text31" } }
    element.add { type = "label", caption = { "iron_gear.text32" } }
    element.add { type = "label", caption = { "iron_gear.text33" } }
    element.add { type = "label", caption = { "iron_gear.text34" } }
    element.add { type = "label", caption = { "iron_gear.text35" } }
    element.add { type = "label", caption = { "iron_gear.text36" } }
    element.add { type = "label", caption = { "iron_gear.text37" } }
    element.add { type = "label", caption = { "iron_gear.text38" } }
    element.add { type = "label", caption = { "iron_gear.text39" } }
    element.add { type = "label", caption = { "iron_gear.text40" } }
    element.add { type = "label", caption = { "iron_gear.text41" } }
    element.add { type = "label", caption = { "iron_gear.text42" } }
    element.add { type = "label", caption = { "iron_gear.text43" } }
    element.add { type = "label", caption = { "iron_gear.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_gear.text44" } }
    element.add { type = "label", caption = { "iron_gear.text45" } }
    element.add { type = "label", caption = { "iron_gear.text46" } }
    element.add { type = "label", caption = { "iron_gear.text47" } }
    element.add { type = "label", caption = { "iron_gear.text48" } }
    element.add { type = "label", caption = { "iron_gear.text49" } }
    element.add { type = "label", caption = { "iron_gear.text50" } }
    element.add { type = "label", caption = { "iron_gear.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "iron_gear.text51" } }
    element.add { type = "label", caption = { "iron_gear.text52" } }
    element.add { type = "label", caption = { "iron_gear.text53" } }
    element.add { type = "label", caption = { "iron_gear.text54" } }
    element.add { type = "label", caption = { "iron_gear.text55" } }
    element.add { type = "label", caption = { "iron_gear.text56" } }
    element.add { type = "label", caption = { "iron_gear.text57" } }
    element.add { type = "label", caption = { "iron_gear.text58" } }
    element.add { type = "label", caption = { "iron_gear.text59" } }
    element.add { type = "label", caption = { "iron_gear.text60" } }
    element.add { type = "label", caption = { "iron_gear.text61" } }
    element.add { type = "label", caption = { "iron_gear.text62" } }
    element.add { type = "label", caption = { "iron_gear.text63" } }
    element.add { type = "label", caption = { "iron_gear.text64" } }
    element.add { type = "label", caption = { "iron_gear.text65" } }
    element.add { type = "label", caption = { "iron_gear.text66" } }
    element.add { type = "label", caption = { "iron_gear.text67" } }
    element.add { type = "label", caption = { "iron_gear.text68" } }
    element.add { type = "label", caption = { "iron_gear.text69" } }
  end
  
  if page_name == "barrel" then
    element.add { type = "label", caption = { "barrel.text1" } }
    element.add { type = "label", caption = { "barrel.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "barrel.text2" } }
    element.add { type = "label", caption = { "barrel.text3" } }
    element.add { type = "label", caption = { "barrel.text4" } }
    element.add { type = "label", caption = { "barrel.text5" } }
    element.add { type = "label", caption = { "barrel.text6" } }
    element.add { type = "label", caption = { "barrel.text7" } }
    element.add { type = "label", caption = { "barrel.text8" } }
    element.add { type = "label", caption = { "barrel.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "barrel.text9" } }
    element.add { type = "label", caption = { "barrel.text10" } }
    element.add { type = "label", caption = { "barrel.text11" } }
    element.add { type = "label", caption = { "barrel.text12" } }
    element.add { type = "label", caption = { "barrel.text13" } }
    element.add { type = "label", caption = { "barrel.text14" } }
    element.add { type = "label", caption = { "barrel.text15" } }
    element.add { type = "label", caption = { "barrel.text16" } }
    element.add { type = "label", caption = { "barrel.text17" } }
  end
  
  if page_name == "engine" then
    element.add { type = "label", caption = { "engine.text1" } }
    element.add { type = "label", caption = { "engine.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "engine.text2" } }
    element.add { type = "label", caption = { "engine.text3" } }
    element.add { type = "label", caption = { "engine.text4" } }
    element.add { type = "label", caption = { "engine.text5" } }
    element.add { type = "label", caption = { "engine.text6" } }
    element.add { type = "label", caption = { "engine.text7" } }
    element.add { type = "label", caption = { "engine.text8" } }
    element.add { type = "label", caption = { "engine.text9" } }
    element.add { type = "label", caption = { "engine.text10" } }
    element.add { type = "label", caption = { "engine.text11" } }
    element.add { type = "label", caption = { "engine.text12" } }
    element.add { type = "label", caption = { "engine.text13" } }
    element.add { type = "label", caption = { "engine.text14" } }
    element.add { type = "label", caption = { "engine.text15" } }
    element.add { type = "label", caption = { "engine.text16" } }
    element.add { type = "label", caption = { "engine.text17" } }
    element.add { type = "label", caption = { "engine.text18" } }
    element.add { type = "label", caption = { "engine.text19" } }
    element.add { type = "label", caption = { "engine.text20" } }
    element.add { type = "label", caption = { "engine.text21" } }
    element.add { type = "label", caption = { "engine.text22" } }
    element.add { type = "label", caption = { "engine.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "engine.text23" } }
    element.add { type = "label", caption = { "engine.text24" } }
    element.add { type = "label", caption = { "engine.text25" } }
    element.add { type = "label", caption = { "engine.text26" } }
    element.add { type = "label", caption = { "engine.text27" } }
    element.add { type = "label", caption = { "engine.text28" } }
    element.add { type = "label", caption = { "engine.text29" } }
    element.add { type = "label", caption = { "engine.text30" } }
    element.add { type = "label", caption = { "engine.text31" } }
    element.add { type = "label", caption = { "engine.text32" } }
    element.add { type = "label", caption = { "engine.text33" } }
    element.add { type = "label", caption = { "engine.text34" } }
    element.add { type = "label", caption = { "engine.text35" } }
    element.add { type = "label", caption = { "engine.text36" } }
    element.add { type = "label", caption = { "engine.text37" } }
    element.add { type = "label", caption = { "engine.text38" } }
    element.add { type = "label", caption = { "engine.text39" } }
    element.add { type = "label", caption = { "engine.text40" } }
    element.add { type = "label", caption = { "engine.text41" } }
    element.add { type = "label", caption = { "engine.text42" } }
    element.add { type = "label", caption = { "engine.text43" } }
    element.add { type = "label", caption = { "engine.text44" } }
    element.add { type = "label", caption = { "engine.text45" } }
    element.add { type = "label", caption = { "engine.text46" } }
    element.add { type = "label", caption = { "engine.text47" } }
    element.add { type = "label", caption = { "engine.text48" } }
    element.add { type = "label", caption = { "engine.text49" } }
    element.add { type = "label", caption = { "engine.text50" } }
    element.add { type = "label", caption = { "engine.text51" } }
    element.add { type = "label", caption = { "engine.text52" } }
    element.add { type = "label", caption = { "engine.text53" } }
    element.add { type = "label", caption = { "engine.text54" } }
    element.add { type = "label", caption = { "engine.text55" } }
    element.add { type = "label", caption = { "engine.text56" } }
    element.add { type = "label", caption = { "engine.text57" } }
    element.add { type = "label", caption = { "engine.text58" } }
    element.add { type = "label", caption = { "engine.text59" } }
    element.add { type = "label", caption = { "engine.text60" } }
    element.add { type = "label", caption = { "engine.text61" } }
    element.add { type = "label", caption = { "engine.text62" } }
    element.add { type = "label", caption = { "engine.text63" } }
    element.add { type = "label", caption = { "engine.text64" } }
    element.add { type = "label", caption = { "engine.text65" } }
    element.add { type = "label", caption = { "engine.text66" } }
    element.add { type = "label", caption = { "engine.text67" } }
    element.add { type = "label", caption = { "engine.text68" } }
    element.add { type = "label", caption = { "engine.text69" } }
    element.add { type = "label", caption = { "engine.text70" } }
  end
  
  if page_name == "electric_motor" then
    element.add { type = "label", caption = { "electric_motor.text1" } }
    element.add { type = "label", caption = { "electric_motor.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "electric_motor.text2" } }
    element.add { type = "label", caption = { "electric_motor.text3" } }
    element.add { type = "label", caption = { "electric_motor.text4" } }
    element.add { type = "label", caption = { "electric_motor.text5" } }
    element.add { type = "label", caption = { "electric_motor.text6" } }
    element.add { type = "label", caption = { "electric_motor.text7" } }
    element.add { type = "label", caption = { "electric_motor.text8" } }
    element.add { type = "label", caption = { "electric_motor.text9" } }
    element.add { type = "label", caption = { "electric_motor.text10" } }
    element.add { type = "label", caption = { "electric_motor.text11" } }
    element.add { type = "label", caption = { "electric_motor.text12" } }
    element.add { type = "label", caption = { "electric_motor.text13" } }
    element.add { type = "label", caption = { "electric_motor.text14" } }
    element.add { type = "label", caption = { "electric_motor.text15" } }
    element.add { type = "label", caption = { "electric_motor.text16" } }
    element.add { type = "label", caption = { "electric_motor.text17" } }
    element.add { type = "label", caption = { "electric_motor.text18" } }
    element.add { type = "label", caption = { "electric_motor.text19" } }
    element.add { type = "label", caption = { "electric_motor.text20" } }
    element.add { type = "label", caption = { "electric_motor.text21" } }
    element.add { type = "label", caption = { "electric_motor.text22" } }
    element.add { type = "label", caption = { "electric_motor.text23" } }
    element.add { type = "label", caption = { "electric_motor.text24" } }
    element.add { type = "label", caption = { "electric_motor.text25" } }
    element.add { type = "label", caption = { "electric_motor.text26" } }
    element.add { type = "label", caption = { "electric_motor.text27" } }
    element.add { type = "label", caption = { "electric_motor.text28" } }
    element.add { type = "label", caption = { "electric_motor.text29" } }
    element.add { type = "label", caption = { "electric_motor.text30" } }
    element.add { type = "label", caption = { "electric_motor.text31" } }
    element.add { type = "label", caption = { "electric_motor.text32" } }
    element.add { type = "label", caption = { "electric_motor.text33" } }
    element.add { type = "label", caption = { "electric_motor.text34" } }
    element.add { type = "label", caption = { "electric_motor.text35" } }
    element.add { type = "label", caption = { "electric_motor.text36" } }
    element.add { type = "label", caption = { "electric_motor.text37" } }
    element.add { type = "label", caption = { "electric_motor.text38" } }
    element.add { type = "label", caption = { "electric_motor.text39" } }
    element.add { type = "label", caption = { "electric_motor.text40" } }
    element.add { type = "label", caption = { "electric_motor.text41" } }
    element.add { type = "label", caption = { "electric_motor.text42" } }
    element.add { type = "label", caption = { "electric_motor.text43" } }
    element.add { type = "label", caption = { "electric_motor.text44" } }
    element.add { type = "label", caption = { "electric_motor.text45" } }
    element.add { type = "label", caption = { "electric_motor.text46" } }
    element.add { type = "label", caption = { "electric_motor.text47" } }
    element.add { type = "label", caption = { "electric_motor.text48" } }
    element.add { type = "label", caption = { "electric_motor.text49" } }
    element.add { type = "label", caption = { "electric_motor.text50" } }
    element.add { type = "label", caption = { "electric_motor.text51" } }
    element.add { type = "label", caption = { "electric_motor.text52" } }
    element.add { type = "label", caption = { "electric_motor.text53" } }
    element.add { type = "label", caption = { "electric_motor.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "electric_motor.text54" } }
    element.add { type = "label", caption = { "electric_motor.text55" } }
    element.add { type = "label", caption = { "electric_motor.text56" } }
    element.add { type = "label", caption = { "electric_motor.text57" } }
    element.add { type = "label", caption = { "electric_motor.text58" } }
    element.add { type = "label", caption = { "electric_motor.text59" } }
    element.add { type = "label", caption = { "electric_motor.text60" } }
    element.add { type = "label", caption = { "electric_motor.text61" } }
    element.add { type = "label", caption = { "electric_motor.text62" } }
    element.add { type = "label", caption = { "electric_motor.text63" } }
    element.add { type = "label", caption = { "electric_motor.text64" } }
    element.add { type = "label", caption = { "electric_motor.text65" } }
    element.add { type = "label", caption = { "electric_motor.text66" } }
    element.add { type = "label", caption = { "electric_motor.text67" } }
    element.add { type = "label", caption = { "electric_motor.text68" } }
    element.add { type = "label", caption = { "electric_motor.text69" } }
    element.add { type = "label", caption = { "electric_motor.text70" } }
    element.add { type = "label", caption = { "electric_motor.text71" } }
    element.add { type = "label", caption = { "electric_motor.text72" } }
    element.add { type = "label", caption = { "electric_motor.text73" } }
    element.add { type = "label", caption = { "electric_motor.text74" } }
    element.add { type = "label", caption = { "electric_motor.text75" } }
    element.add { type = "label", caption = { "electric_motor.text76" } }
    element.add { type = "label", caption = { "electric_motor.text77" } }
    element.add { type = "label", caption = { "electric_motor.text78" } }
    element.add { type = "label", caption = { "electric_motor.text79" } }
    element.add { type = "label", caption = { "electric_motor.text80" } }
    element.add { type = "label", caption = { "electric_motor.text81" } }
    element.add { type = "label", caption = { "electric_motor.text82" } }
    element.add { type = "label", caption = { "electric_motor.text83" } }
    element.add { type = "label", caption = { "electric_motor.text84" } }
    element.add { type = "label", caption = { "electric_motor.text85" } }
    element.add { type = "label", caption = { "electric_motor.text86" } }
    element.add { type = "label", caption = { "electric_motor.text87" } }
    element.add { type = "label", caption = { "electric_motor.text88" } }
    element.add { type = "label", caption = { "electric_motor.text89" } }
    element.add { type = "label", caption = { "electric_motor.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "electric_motor.text90" } }
    element.add { type = "label", caption = { "electric_motor.text91" } }
    element.add { type = "label", caption = { "electric_motor.text92" } }
    element.add { type = "label", caption = { "electric_motor.text93" } }
    element.add { type = "label", caption = { "electric_motor.text94" } }
    element.add { type = "label", caption = { "electric_motor.text95" } }
    element.add { type = "label", caption = { "electric_motor.text96" } }
    element.add { type = "label", caption = { "electric_motor.text97" } }
    element.add { type = "label", caption = { "electric_motor.text98" } }
    element.add { type = "label", caption = { "electric_motor.text99" } }
    element.add { type = "label", caption = { "electric_motor.text100" } }
    element.add { type = "label", caption = { "electric_motor.text101" } }
    element.add { type = "label", caption = { "electric_motor.text102" } }
    element.add { type = "label", caption = { "electric_motor.text103" } }
    element.add { type = "label", caption = { "electric_motor.text104" } }
    element.add { type = "label", caption = { "electric_motor.text105" } }
    element.add { type = "label", caption = { "electric_motor.text106" } }
    element.add { type = "label", caption = { "electric_motor.text107" } }
    element.add { type = "label", caption = { "electric_motor.text108" } }
    element.add { type = "label", caption = { "electric_motor.text109" } }
    element.add { type = "label", caption = { "electric_motor.text110" } }
    element.add { type = "label", caption = { "electric_motor.text111" } }
    element.add { type = "label", caption = { "electric_motor.text112" } }
    element.add { type = "label", caption = { "electric_motor.text113" } }
    element.add { type = "label", caption = { "electric_motor.text114" } }
  end
  
  if page_name == "uranium_fuel_rod" then
    element.add { type = "label", caption = { "uranium_fuel_rod.text1" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "uranium_fuel_rod.text2" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text3" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text4" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text5" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text6" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text7" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text8" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "uranium_fuel_rod.text9" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text10" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text11" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text12" } }
    element.add { type = "label", caption = { "uranium_fuel_rod.text13" } }
  end
  
  if page_name == "nuclear_fuel_reprocessing" then
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text1" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text2" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text3" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text4" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text5" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text6" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text7" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text8" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text9" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text10" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text11" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text12" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text13" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text14" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text15" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text16" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text17" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text18" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text19" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text20" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text21" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text22" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text23" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text24" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text25" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text26" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text27" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text28" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text29" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text30" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text31" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text32" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text33" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text34" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text35" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text36" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text37" } }
    element.add { type = "label", caption = { "nuclear_fuel_reprocessing.text38" } }
  end
  
  if page_name == "kovarex_enrichment_process" then
    element.add { type = "label", caption = { "kovarex_enrichment_process.text1" } }
    element.add { type = "label", caption = { "kovarex_enrichment_process.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "kovarex_enrichment_process.text2" } }
    element.add { type = "label", caption = { "kovarex_enrichment_process.text3" } }
    element.add { type = "label", caption = { "kovarex_enrichment_process.text4" } }
    element.add { type = "label", caption = { "kovarex_enrichment_process.text5" } }
  end
  
  if page_name == "pistol" then
    element.add { type = "label", caption = { "pistol.text1" } }
    element.add { type = "label", caption = { "pistol.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol.text2" } }
    element.add { type = "label", caption = { "pistol.text3" } }
    element.add { type = "label", caption = { "pistol.text4" } }
    element.add { type = "label", caption = { "pistol.text5" } }
    element.add { type = "label", caption = { "pistol.text6" } }
    element.add { type = "label", caption = { "pistol.text7" } }
    element.add { type = "label", caption = { "pistol.text8" } }
    element.add { type = "label", caption = { "pistol.text9" } }
    element.add { type = "label", caption = { "pistol.text10" } }
    element.add { type = "label", caption = { "pistol.text11" } }
    element.add { type = "label", caption = { "pistol.text12" } }
    element.add { type = "label", caption = { "pistol.text13" } }
    element.add { type = "label", caption = { "pistol.text14" } }
    element.add { type = "label", caption = { "pistol.text15" } }
    element.add { type = "label", caption = { "pistol.text16" } }
    element.add { type = "label", caption = { "pistol.text17" } }
    element.add { type = "label", caption = { "pistol.text18" } }
    element.add { type = "label", caption = { "pistol.text19" } }
    element.add { type = "label", caption = { "pistol.text20" } }
    element.add { type = "label", caption = { "pistol.text21" } }
    element.add { type = "label", caption = { "pistol.text22" } }
    element.add { type = "label", caption = { "pistol.text23" } }
    element.add { type = "label", caption = { "pistol.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol.text24" } }
    element.add { type = "label", caption = { "pistol.text25" } }
    element.add { type = "label", caption = { "pistol.text26" } }
    element.add { type = "label", caption = { "pistol.text27" } }
    element.add { type = "label", caption = { "pistol.text28" } }
    element.add { type = "label", caption = { "pistol.text29" } }
    element.add { type = "label", caption = { "pistol.text30" } }
    element.add { type = "label", caption = { "pistol.text31" } }
    element.add { type = "label", caption = { "pistol.text32" } }
    element.add { type = "label", caption = { "pistol.text33" } }
    element.add { type = "label", caption = { "pistol.text34" } }
    element.add { type = "label", caption = { "pistol.text35" } }
    element.add { type = "label", caption = { "pistol.text36" } }
    element.add { type = "label", caption = { "pistol.text37" } }
    element.add { type = "label", caption = { "pistol.text38" } }
    element.add { type = "label", caption = { "pistol.text39" } }
    element.add { type = "label", caption = { "pistol.text40" } }
    element.add { type = "label", caption = { "pistol.text41" } }
    element.add { type = "label", caption = { "pistol.text42" } }
    element.add { type = "label", caption = { "pistol.text43" } }
    element.add { type = "label", caption = { "pistol.text44" } }
    element.add { type = "label", caption = { "pistol.text45" } }
    element.add { type = "label", caption = { "pistol.text46" } }
    element.add { type = "label", caption = { "pistol.text47" } }
    element.add { type = "label", caption = { "pistol.text48" } }
    element.add { type = "label", caption = { "pistol.text49" } }
    element.add { type = "label", caption = { "pistol.text50" } }
    element.add { type = "label", caption = { "pistol.text51" } }
    element.add { type = "label", caption = { "pistol.text52" } }
    element.add { type = "label", caption = { "pistol.text53" } }
    element.add { type = "label", caption = { "pistol.text54" } }
    element.add { type = "label", caption = { "pistol.text55" } }
    element.add { type = "label", caption = { "pistol.text56" } }
    element.add { type = "label", caption = { "pistol.text57" } }
    element.add { type = "label", caption = { "pistol.text58" } }
    element.add { type = "label", caption = { "pistol.text59" } }
    element.add { type = "label", caption = { "pistol.text60" } }
  end

  if page_name == "submachine_gun" then
    element.add { type = "label", caption = { "submachine_gun.text1" } }
    element.add { type = "label", caption = { "submachine_gun.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "submachine_gun.text2" } }
    element.add { type = "label", caption = { "submachine_gun.text3" } }
    element.add { type = "label", caption = { "submachine_gun.text4" } }
    element.add { type = "label", caption = { "submachine_gun.text5" } }
    element.add { type = "label", caption = { "submachine_gun.text6" } }
    element.add { type = "label", caption = { "submachine_gun.text7" } }
    element.add { type = "label", caption = { "submachine_gun.text8" } }
    element.add { type = "label", caption = { "submachine_gun.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "submachine_gun.text9" } }
    element.add { type = "label", caption = { "submachine_gun.text10" } }
    element.add { type = "label", caption = { "submachine_gun.text11" } }
    element.add { type = "label", caption = { "submachine_gun.text12" } }
    element.add { type = "label", caption = { "submachine_gun.text13" } }
    element.add { type = "label", caption = { "submachine_gun.text14" } }
    element.add { type = "label", caption = { "submachine_gun.text15" } }
    element.add { type = "label", caption = { "submachine_gun.text16" } }
    element.add { type = "label", caption = { "submachine_gun.text17" } }
    element.add { type = "label", caption = { "submachine_gun.text18" } }
    element.add { type = "label", caption = { "submachine_gun.text19" } }
    element.add { type = "label", caption = { "submachine_gun.text20" } }
    element.add { type = "label", caption = { "submachine_gun.text21" } }
    element.add { type = "label", caption = { "submachine_gun.text22" } }
    element.add { type = "label", caption = { "submachine_gun.text23" } }
    element.add { type = "label", caption = { "submachine_gun.text24" } }
    element.add { type = "label", caption = { "submachine_gun.text25" } }
    element.add { type = "label", caption = { "submachine_gun.text26" } }
    element.add { type = "label", caption = { "submachine_gun.text27" } }
    element.add { type = "label", caption = { "submachine_gun.text28" } }
    element.add { type = "label", caption = { "submachine_gun.text29" } }
    element.add { type = "label", caption = { "submachine_gun.text30" } }
    element.add { type = "label", caption = { "submachine_gun.text31" } }
    element.add { type = "label", caption = { "submachine_gun.text32" } }
    element.add { type = "label", caption = { "submachine_gun.text33" } }
    element.add { type = "label", caption = { "submachine_gun.text34" } }
    element.add { type = "label", caption = { "submachine_gun.text35" } }
    element.add { type = "label", caption = { "submachine_gun.text36" } }
    element.add { type = "label", caption = { "submachine_gun.text37" } }
    element.add { type = "label", caption = { "submachine_gun.text38" } }
  end

  if page_name == "shotgun" then
    element.add { type = "label", caption = { "shotgun.text1" } }
    element.add { type = "label", caption = { "shotgun.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "shotgun.text2" } }
    element.add { type = "label", caption = { "shotgun.text3" } }
    element.add { type = "label", caption = { "shotgun.text4" } }
    element.add { type = "label", caption = { "shotgun.text5" } }
    element.add { type = "label", caption = { "shotgun.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "shotgun.text6" } }
    element.add { type = "label", caption = { "shotgun.text7" } }
    element.add { type = "label", caption = { "shotgun.text8" } }
    element.add { type = "label", caption = { "shotgun.text9" } }
    element.add { type = "label", caption = { "shotgun.text10" } }
    element.add { type = "label", caption = { "shotgun.text11" } }
    element.add { type = "label", caption = { "shotgun.text12" } }
    element.add { type = "label", caption = { "shotgun.text13" } }
    element.add { type = "label", caption = { "shotgun.text14" } }
    element.add { type = "label", caption = { "shotgun.text15" } }
    element.add { type = "label", caption = { "shotgun.text16" } }
    element.add { type = "label", caption = { "shotgun.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "shotgun.text17" } }
    element.add { type = "label", caption = { "shotgun.text18" } }
    element.add { type = "label", caption = { "shotgun.text19" } }
    element.add { type = "label", caption = { "shotgun.text20" } }
    element.add { type = "label", caption = { "shotgun.text21" } }
    element.add { type = "label", caption = { "shotgun.text22" } }
    element.add { type = "label", caption = { "shotgun.text23" } }
    element.add { type = "label", caption = { "shotgun.text24" } }
    element.add { type = "label", caption = { "shotgun.text25" } }
    element.add { type = "label", caption = { "shotgun.text26" } }
    element.add { type = "label", caption = { "shotgun.text27" } }
    element.add { type = "label", caption = { "shotgun.text28" } }
    element.add { type = "label", caption = { "shotgun.text29" } }
    element.add { type = "label", caption = { "shotgun.text30" } }
    element.add { type = "label", caption = { "shotgun.text31" } }
    element.add { type = "label", caption = { "shotgun.text32" } }
    element.add { type = "label", caption = { "shotgun.text33" } }
    element.add { type = "label", caption = { "shotgun.text34" } }
    element.add { type = "label", caption = { "shotgun.text35" } }
    element.add { type = "label", caption = { "shotgun.text36" } }
    element.add { type = "label", caption = { "shotgun.text37" } }
    element.add { type = "label", caption = { "shotgun.text38" } }
  end
  
  if page_name == "rocket_launcher" then
    element.add { type = "label", caption = { "rocket_launcher.text1" } }
    element.add { type = "label", caption = { "rocket_launcher.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "rocket_launcher.text2" } }
    element.add { type = "label", caption = { "rocket_launcher.text3" } }
    element.add { type = "label", caption = { "rocket_launcher.text4" } }
    element.add { type = "label", caption = { "rocket_launcher.text5" } }
    element.add { type = "label", caption = { "rocket_launcher.text6" } }
    element.add { type = "label", caption = { "rocket_launcher.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "rocket_launcher.text7" } }
    element.add { type = "label", caption = { "rocket_launcher.text8" } }
    element.add { type = "label", caption = { "rocket_launcher.text9" } }
    element.add { type = "label", caption = { "rocket_launcher.text10" } }
    element.add { type = "label", caption = { "rocket_launcher.text11" } }
    element.add { type = "label", caption = { "rocket_launcher.text12" } }
    element.add { type = "label", caption = { "rocket_launcher.text13" } }
    element.add { type = "label", caption = { "rocket_launcher.text14" } }
    element.add { type = "label", caption = { "rocket_launcher.text15" } }
    element.add { type = "label", caption = { "rocket_launcher.text16" } }
    element.add { type = "label", caption = { "rocket_launcher.text17" } }
    element.add { type = "label", caption = { "rocket_launcher.text18" } }
    element.add { type = "label", caption = { "rocket_launcher.text19" } }
    element.add { type = "label", caption = { "rocket_launcher.text20" } }
    element.add { type = "label", caption = { "rocket_launcher.text21" } }
    element.add { type = "label", caption = { "rocket_launcher.text22" } }
    element.add { type = "label", caption = { "rocket_launcher.text23" } }
    element.add { type = "label", caption = { "rocket_launcher.text24" } }
    element.add { type = "label", caption = { "rocket_launcher.text25" } }
    element.add { type = "label", caption = { "rocket_launcher.text26" } }
    element.add { type = "label", caption = { "rocket_launcher.text27" } }
    element.add { type = "label", caption = { "rocket_launcher.text28" } }
    element.add { type = "label", caption = { "rocket_launcher.text29" } }
    element.add { type = "label", caption = { "rocket_launcher.text30" } }
    element.add { type = "label", caption = { "rocket_launcher.text31" } }
    element.add { type = "label", caption = { "rocket_launcher.text32" } }
    element.add { type = "label", caption = { "rocket_launcher.text33" } }
    element.add { type = "label", caption = { "rocket_launcher.text34" } }
    element.add { type = "label", caption = { "rocket_launcher.text35" } }
    element.add { type = "label", caption = { "rocket_launcher.text36" } }
    element.add { type = "label", caption = { "rocket_launcher.text37" } }
    element.add { type = "label", caption = { "rocket_launcher.text38" } }
    element.add { type = "label", caption = { "rocket_launcher.text39" } }
  end
  
  if page_name == "flamethrower" then
    element.add { type = "label", caption = { "flamethrower.text1" } }
    element.add { type = "label", caption = { "flamethrower.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "flamethrower.text2" } }
    element.add { type = "label", caption = { "flamethrower.text3" } }
    element.add { type = "label", caption = { "flamethrower.text4" } }
    element.add { type = "label", caption = { "flamethrower.text5" } }
    element.add { type = "label", caption = { "flamethrower.text6" } }
    element.add { type = "label", caption = { "flamethrower.text7" } }
    element.add { type = "label", caption = { "flamethrower.text8" } }
    element.add { type = "label", caption = { "flamethrower.text9" } }
    element.add { type = "label", caption = { "flamethrower.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "flamethrower.text10" } }
    element.add { type = "label", caption = { "flamethrower.text11" } }
    element.add { type = "label", caption = { "flamethrower.text12" } }
    element.add { type = "label", caption = { "flamethrower.text13" } }
  end
  
  if page_name == "land_mine" then
    element.add { type = "label", caption = { "land_mine.text1" } }
    element.add { type = "label", caption = { "land_mine.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "land_mine.text2" } }
    element.add { type = "label", caption = { "land_mine.text3" } }
    element.add { type = "label", caption = { "land_mine.text4" } }
    element.add { type = "label", caption = { "land_mine.text5" } }
    element.add { type = "label", caption = { "land_mine.text6" } }
    element.add { type = "label", caption = { "land_mine.text7" } }
    element.add { type = "label", caption = { "land_mine.text8" } }
    element.add { type = "label", caption = { "land_mine.text9" } }
    element.add { type = "label", caption = { "land_mine.text10" } }
    element.add { type = "label", caption = { "land_mine.text11" } }
    element.add { type = "label", caption = { "land_mine.text12" } }
    element.add { type = "label", caption = { "land_mine.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "land_mine.text13" } }
    element.add { type = "label", caption = { "land_mine.text14" } }
    element.add { type = "label", caption = { "land_mine.text15" } }
    element.add { type = "label", caption = { "land_mine.text16" } }
  end
  
  if page_name == "pistol_ammo" then
    element.add { type = "label", caption = { "pistol_ammo.text1" } }
    element.add { type = "label", caption = { "pistol_ammo.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol_ammo.text2" } }
    element.add { type = "label", caption = { "pistol_ammo.text3" } }
    element.add { type = "label", caption = { "pistol_ammo.text4" } }
    element.add { type = "label", caption = { "pistol_ammo.text5" } }
    element.add { type = "label", caption = { "pistol_ammo.text6" } }
    element.add { type = "label", caption = { "pistol_ammo.text7" } }
    element.add { type = "label", caption = { "pistol_ammo.text8" } }
    element.add { type = "label", caption = { "pistol_ammo.text9" } }
    element.add { type = "label", caption = { "pistol_ammo.text10" } }
    element.add { type = "label", caption = { "pistol_ammo.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol_ammo.text11" } }
    element.add { type = "label", caption = { "pistol_ammo.text12" } }
    element.add { type = "label", caption = { "pistol_ammo.text13" } }
    element.add { type = "label", caption = { "pistol_ammo.text14" } }
    element.add { type = "label", caption = { "pistol_ammo.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol_ammo.text15" } }
    element.add { type = "label", caption = { "pistol_ammo.text16" } }
    element.add { type = "label", caption = { "pistol_ammo.text17" } }
    element.add { type = "label", caption = { "pistol_ammo.text18" } }
    element.add { type = "label", caption = { "pistol_ammo.text19" } }
    element.add { type = "label", caption = { "pistol_ammo.text20" } }
    element.add { type = "label", caption = { "pistol_ammo.text21" } }
    element.add { type = "label", caption = { "pistol_ammo.text22" } }
    element.add { type = "label", caption = { "pistol_ammo.label4" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol_ammo.text23" } }
    element.add { type = "label", caption = { "pistol_ammo.text24" } }
    element.add { type = "label", caption = { "pistol_ammo.text25" } }
    element.add { type = "label", caption = { "pistol_ammo.text26" } }
    element.add { type = "label", caption = { "pistol_ammo.text27" } }
    element.add { type = "label", caption = { "pistol_ammo.text28" } }
    element.add { type = "label", caption = { "pistol_ammo.label5" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "pistol_ammo.text29" } }
    element.add { type = "label", caption = { "pistol_ammo.text30" } }
    element.add { type = "label", caption = { "pistol_ammo.text31" } }
    element.add { type = "label", caption = { "pistol_ammo.text32" } }
    element.add { type = "label", caption = { "pistol_ammo.text33" } }
    element.add { type = "label", caption = { "pistol_ammo.text34" } }
    element.add { type = "label", caption = { "pistol_ammo.text35" } }
    element.add { type = "label", caption = { "pistol_ammo.text36" } }
  end
  
  if page_name == "shotgun_shell" then
    element.add { type = "label", caption = { "shotgun_shell.text1" } }
    element.add { type = "label", caption = { "shotgun_shell.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "shotgun_shell.text2" } }
    element.add { type = "label", caption = { "shotgun_shell.text3" } }
    element.add { type = "label", caption = { "shotgun_shell.text4" } }
    element.add { type = "label", caption = { "shotgun_shell.text5" } }
    element.add { type = "label", caption = { "shotgun_shell.text6" } }
    element.add { type = "label", caption = { "shotgun_shell.text7" } }
    element.add { type = "label", caption = { "shotgun_shell.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "shotgun_shell.text8" } }
    element.add { type = "label", caption = { "shotgun_shell.text9" } }
    element.add { type = "label", caption = { "shotgun_shell.text10" } }
    element.add { type = "label", caption = { "shotgun_shell.text11" } }
    element.add { type = "label", caption = { "shotgun_shell.text12" } }
    element.add { type = "label", caption = { "shotgun_shell.text13" } }
    element.add { type = "label", caption = { "shotgun_shell.text14" } }
    element.add { type = "label", caption = { "shotgun_shell.text15" } }
  end
  
  if page_name == "tank_shell" then
    element.add { type = "label", caption = { "tank_shell.text1" } }
    element.add { type = "label", caption = { "tank_shell.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "tank_shell.text2" } }
    element.add { type = "label", caption = { "tank_shell.text3" } }
    element.add { type = "label", caption = { "tank_shell.text4" } }
    element.add { type = "label", caption = { "tank_shell.text5" } }
    element.add { type = "label", caption = { "tank_shell.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "tank_shell.text6" } }
    element.add { type = "label", caption = { "tank_shell.text7" } }
    element.add { type = "label", caption = { "tank_shell.text8" } }
    element.add { type = "label", caption = { "tank_shell.text9" } }
    element.add { type = "label", caption = { "tank_shell.text10" } }
    element.add { type = "label", caption = { "tank_shell.text11" } }
    element.add { type = "label", caption = { "tank_shell.text12" } }
    element.add { type = "label", caption = { "tank_shell.text13" } }
    element.add { type = "label", caption = { "tank_shell.text14" } }
    element.add { type = "label", caption = { "tank_shell.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "tank_shell.text15" } }
    element.add { type = "label", caption = { "tank_shell.text16" } }
    element.add { type = "label", caption = { "tank_shell.text17" } }
    element.add { type = "label", caption = { "tank_shell.text18" } }
    element.add { type = "label", caption = { "tank_shell.text19" } }
    element.add { type = "label", caption = { "tank_shell.text20" } }
    element.add { type = "label", caption = { "tank_shell.text21" } }
  end
  
  if page_name == "artillery_shell" then
    element.add { type = "label", caption = { "artillery_shell.text1" } }
    element.add { type = "label", caption = { "artillery_shell.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "artillery_shell.text2" } }
    element.add { type = "label", caption = { "artillery_shell.text3" } }
    element.add { type = "label", caption = { "artillery_shell.text4" } }
    element.add { type = "label", caption = { "artillery_shell.text5" } }
    element.add { type = "label", caption = { "artillery_shell.text6" } }
    element.add { type = "label", caption = { "artillery_shell.text7" } }
    element.add { type = "label", caption = { "artillery_shell.text8" } }
    element.add { type = "label", caption = { "artillery_shell.text9" } }
    element.add { type = "label", caption = { "artillery_shell.text10" } }
    element.add { type = "label", caption = { "artillery_shell.text11" } }
    element.add { type = "label", caption = { "artillery_shell.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "artillery_shell.text12" } }
    element.add { type = "label", caption = { "artillery_shell.text13" } }
    element.add { type = "label", caption = { "artillery_shell.text14" } }
    element.add { type = "label", caption = { "artillery_shell.text15" } }
    element.add { type = "label", caption = { "artillery_shell.text16" } }
    element.add { type = "label", caption = { "artillery_shell.text17" } }
    element.add { type = "label", caption = { "artillery_shell.text18" } }
    element.add { type = "label", caption = { "artillery_shell.text19" } }
    element.add { type = "label", caption = { "artillery_shell.text20" } }
    element.add { type = "label", caption = { "artillery_shell.text21" } }
  end
  
  if page_name == "grenade" then
    element.add { type = "label", caption = { "grenade.text1" } }
    element.add { type = "label", caption = { "grenade.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "grenade.text2" } }
    element.add { type = "label", caption = { "grenade.text3" } }
    element.add { type = "label", caption = { "grenade.text4" } }
    element.add { type = "label", caption = { "grenade.text5" } }
    element.add { type = "label", caption = { "grenade.text6" } }
    element.add { type = "label", caption = { "grenade.text7" } }
    element.add { type = "label", caption = { "grenade.text8" } }
    element.add { type = "label", caption = { "grenade.text9" } }
    element.add { type = "label", caption = { "grenade.text10" } }
    element.add { type = "label", caption = { "grenade.text11" } }
    element.add { type = "label", caption = { "grenade.text12" } }
    element.add { type = "label", caption = { "grenade.text13" } }
    element.add { type = "label", caption = { "grenade.text14" } }
    element.add { type = "label", caption = { "grenade.text15" } }
    element.add { type = "label", caption = { "grenade.text16" } }
    element.add { type = "label", caption = { "grenade.text17" } }
    element.add { type = "label", caption = { "grenade.text18" } }
    element.add { type = "label", caption = { "grenade.text19" } }
    element.add { type = "label", caption = { "grenade.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "grenade.text20" } }
    element.add { type = "label", caption = { "grenade.text21" } }
    element.add { type = "label", caption = { "grenade.text22" } }
    element.add { type = "label", caption = { "grenade.text23" } }
    element.add { type = "label", caption = { "grenade.text24" } }
    element.add { type = "label", caption = { "grenade.text25" } }
    element.add { type = "label", caption = { "grenade.text26" } }
    element.add { type = "label", caption = { "grenade.text27" } }
  end
  
  if page_name == "nightvision" then
    element.add { type = "label", caption = { "nightvision.text1" } }
    element.add { type = "label", caption = { "nightvision.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nightvision.text2" } }
    element.add { type = "label", caption = { "nightvision.text3" } }
    element.add { type = "label", caption = { "nightvision.text4" } }
    element.add { type = "label", caption = { "nightvision.text5" } }
    element.add { type = "label", caption = { "nightvision.text6" } }
    element.add { type = "label", caption = { "nightvision.text7" } }
    element.add { type = "label", caption = { "nightvision.text8" } }
    element.add { type = "label", caption = { "nightvision.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nightvision.text9" } }
    element.add { type = "label", caption = { "nightvision.text10" } }
    element.add { type = "label", caption = { "nightvision.text11" } }
    element.add { type = "label", caption = { "nightvision.text12" } }
    element.add { type = "label", caption = { "nightvision.text13" } }
    element.add { type = "label", caption = { "nightvision.text14" } }
    element.add { type = "label", caption = { "nightvision.text15" } }
    element.add { type = "label", caption = { "nightvision.text16" } }
    element.add { type = "label", caption = { "nightvision.text17" } }
    element.add { type = "label", caption = { "nightvision.text18" } }
    element.add { type = "label", caption = { "nightvision.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "nightvision.text19" } }
    element.add { type = "label", caption = { "nightvision.text20" } }
    element.add { type = "label", caption = { "nightvision.text21" } }
    element.add { type = "label", caption = { "nightvision.text22" } }
    element.add { type = "label", caption = { "nightvision.text23" } }
    element.add { type = "label", caption = { "nightvision.text24" } }
    element.add { type = "label", caption = { "nightvision.text25" } }
    element.add { type = "label", caption = { "nightvision.text26" } }
    element.add { type = "label", caption = { "nightvision.text27" } }
    element.add { type = "label", caption = { "nightvision.text28" } }
  end
  
  if page_name == "radar" then
    element.add { type = "label", caption = { "radar.text1" } }
    element.add { type = "label", caption = { "radar.label1" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "radar.text2" } }
    element.add { type = "label", caption = { "radar.text3" } }
    element.add { type = "label", caption = { "radar.text4" } }
    element.add { type = "label", caption = { "radar.text5" } }
    element.add { type = "label", caption = { "radar.text6" } }
    element.add { type = "label", caption = { "radar.text7" } }
    element.add { type = "label", caption = { "radar.text8" } }
    element.add { type = "label", caption = { "radar.label2" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "radar.text9" } }
    element.add { type = "label", caption = { "radar.text10" } }
    element.add { type = "label", caption = { "radar.text11" } }
    element.add { type = "label", caption = { "radar.text12" } }
    element.add { type = "label", caption = { "radar.text13" } }
    element.add { type = "label", caption = { "radar.text14" } }
    element.add { type = "label", caption = { "radar.text15" } }
    element.add { type = "label", caption = { "radar.text16" } }
    element.add { type = "label", caption = { "radar.text17" } }
    element.add { type = "label", caption = { "radar.text18" } }
    element.add { type = "label", caption = { "radar.text19" } }
    element.add { type = "label", caption = { "radar.label3" }, style = "heading_1_label" }
    element.add { type = "label", caption = { "radar.text20" } }
    element.add { type = "label", caption = { "radar.text21" } }
    element.add { type = "label", caption = { "radar.text22" } }
    element.add { type = "label", caption = { "radar.text23" } }
    element.add { type = "label", caption = { "radar.text24" } }
    element.add { type = "label", caption = { "radar.text25" } }
    element.add { type = "label", caption = { "radar.text26" } }
    element.add { type = "label", caption = { "radar.text27" } }
    element.add { type = "label", caption = { "radar.text28" } }
    element.add { type = "label", caption = { "radar.text29" } }
    element.add { type = "label", caption = { "radar.text30" } }
    element.add { type = "label", caption = { "radar.text31" } }
    element.add { type = "label", caption = { "radar.text32" } }
    element.add { type = "label", caption = { "radar.text33" } }
    element.add { type = "label", caption = { "radar.text34" } }
    element.add { type = "label", caption = { "radar.text35" } }
    element.add { type = "label", caption = { "radar.text36" } }
    element.add { type = "label", caption = { "radar.text37" } }
    element.add { type = "label", caption = { "radar.text38" } }
    element.add { type = "label", caption = { "radar.text39" } }
    element.add { type = "label", caption = { "radar.text40" } }
    element.add { type = "label", caption = { "radar.text41" } }
    element.add { type = "label", caption = { "radar.text42" } }
    element.add { type = "label", caption = { "radar.text43" } }
    element.add { type = "label", caption = { "radar.text44" } }
    element.add { type = "label", caption = { "radar.text45" } }
    element.add { type = "label", caption = { "radar.text46" } }
    element.add { type = "label", caption = { "radar.text47" } }
    element.add { type = "label", caption = { "radar.text48" } }
    element.add { type = "label", caption = { "radar.text49" } }
    element.add { type = "label", caption = { "radar.text50" } }
    element.add { type = "label", caption = { "radar.text51" } }
    element.add { type = "label", caption = { "radar.text52" } }
    element.add { type = "label", caption = { "radar.text53" } }
    element.add { type = "label", caption = { "radar.text54" } }
    element.add { type = "label", caption = { "radar.text55" } }
    element.add { type = "label", caption = { "radar.text56" } }
    element.add { type = "label", caption = { "radar.text57" } }
  end
  
end
