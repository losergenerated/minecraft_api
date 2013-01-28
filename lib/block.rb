class Block

  attr_reader :id

  def initialize(id)
    @id = id
  end

  AIR = Block.new(0)
  SAND = Block.new(12)
  WOOD = Block.new(17)

  MATERIALS = {
    0   => :air,
    1   => :stone,
    2   => :grass,
    3   => :dirt,
    4   => :cobblestone,
    5   => :wood_planks,
    6   => :sapling,
    7   => :bedrock,
    8   => :water_flowing,
    9   => :water_stationary,
    10  => :lava_flowing,
    11  => :lava_stationary,
    12  => :sand,
    13  => :gravel,
    14  => :gold_ore,
    15  => :iron_ore,
    16  => :coal_ore,
    17  => :wood,
    18  => :leaves,
    20  => :glass,
    21  => :lapis_lazuli_ore,
    22  => :lapis_lazuli_block,
    24  => :sandstone,
    26  => :bed,
    30  => :cobweb,
    31  => :grass_tall,
    35  => :wool,
    37  => :flower_yellow,
    38  => :flower_cyan,
    39  => :mushroom_brown,
    40  => :mushroom_red,
    41  => :gold_block,
    42  => :iron_block,
    43  => :stone_slab_double,
    44  => :stone_slab,
    45  => :brick_block,
    46  => :tnt,
    47  => :bookshelf,
    48  => :moss_stone,
    49  => :obsidian,
    50  => :torch,
    51  => :fire,
    53  => :stairs_wood,
    54  => :chest,
    56  => :diamond_ore,
    57  => :diamond_block,
    58  => :crafting_table,
    60  => :farmland,
    61  => :furnace_inactive,
    62  => :furnace_active,
    64  => :door_wood,
    65  => :ladder,
    67  => :stairs_cobblestone,
    71  => :door_iron,
    73  => :redstone_ore,
    78  => :snow,
    79  => :ice,
    80  => :snow_block,
    81  => :cactus,
    82  => :clay,
    83  => :sugar_cane,
    85  => :fence,
    89  => :glowstone_block,
    95  => :bedrock_invisible,
    98  => :stone_brick,
    102 => :glass_pane,
    103 => :melon,
    107 => :fence_gate,
    246 => :glowing_obsidian,
    247 => :nether_reactor_core
  }


  def ==(another_block)
    @id == another_block.id
  end

  def material
    MATERIALS[@id]
  end
end
