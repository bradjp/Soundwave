def soundwave_filter(soundwave, lower=40, upper=1000)

  check_validity(soundwave)

  check_limits(soundwave)


  soundwave.map! do |wave|
    wave < lower ? lower : wave > upper ? upper : wave
  end

  soundwave

end

private

def check_validity(soundwave)
  raise ArgumentError, 'Soundwave contains invalid data' if soundwave.include?(nil)
end

def check_limits(soundwave)
  filtered_array = []

  soundwave.map { |wave| filtered_array << wave if wave < -44000 || wave > 44000 }

  raise ArgumentError, 'Soundwave outside limits.' if !filtered_array.empty?
end