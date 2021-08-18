def stock_picker(array)
  profit_each_day = Array.new

  array.each_with_index do |price, day|
    profit_track = 0
    profit_each_day.push({buy: day, sell: day, profit: profit_track})
    for i in day..array.size-1
      if profit_track < array[i] - array[day]
        profit_track = array[i] - array[day]
        profit_each_day[day][:sell] = i
        profit_each_day[day][:profit] = profit_track
      end
    end
  end

  hash = profit_each_day.reduce do |day, next_day|
    day[:profit] > next_day[:profit] ? day : next_day
  end
  sweet_spot = [hash[:buy], hash[:sell]]
  p sweet_spot
end

stock_picker([17,3,6,9,15,8,6,1,10])