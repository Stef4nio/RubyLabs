#Варіантів було 12, оскільки в мене номер в списку 13, то я взяв задачу 13%12 = 1
rand_input = Array.new(12) { |i| rand 10}
groups_amount = 0
curr_group_num = -1

rand_input.each_index do |i|
  if i > 0 && rand_input[i] == rand_input[i-1] && curr_group_num != rand_input[i]
    groups_amount += 1
    curr_group_num = rand_input[i]
  else
    curr_group_num = -1
  end
end

p rand_input
puts groups_amount