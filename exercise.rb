ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

# get list of unique candidate names
# unique_candidates = []
#
# ballots.each do |ballot|
#   unique_candidates << ballot.values
# end
#
# unique_candidates.flatten!.uniq!

# create hash of candidates and their points
candidate_points = Hash.new(0)

# unique_candidates.each do |candidate|
#   candidate_points[candidate] = 0
# end

# iterate through ballots and assign points to candidates
ballots.each do |ballot|
  ballot.each do |rank, name|
    if rank == 1
      candidate_points[name] += 3
    elsif rank == 2
      candidate_points[name] += 2
    else
      candidate_points[name] += 1
    end
  end
end

p candidate_points

# determine candidate with highest point value
winner = candidate_points.max_by { |candidate, points| points }

puts "The winner is #{ winner[0] } with #{ winner[1]} points"
