Array points = [
  [34,129], [34,113], [50,62], [71,48], [117,43],
  [175,47], [219,56], [261,60], [309,60], [359,52],
  [390,53], [411,84], [408,131], [386,172], [341,247],
  [331,254], [292,262], [261,280], [222,286], [165,283],
  [130,285], [82,285], [49, 272], [46,254], [56,237],
  [102,224], [113,201], [107,182], [96,175], [54,175],
  [35,171], [27,146]
]

area = 0

points.each_with_index do |value, index|
  next_index = index.next % points.length
  area += (points[index][0] + points[next_index][0])*(points[index][1] - points[next_index][1])
end

puts "Area is ", area.abs / 2