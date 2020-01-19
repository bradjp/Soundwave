def soundwave_filter(soundwave, lower=40, upper=1000)

  check_soundwave_validity(soundwave)

  soundwaves = []

  soundwave.each do |wave|
    if wave < lower
      soundwaves << lower
    elsif wave > upper
      soundwaves << upper
    else
      soundwaves << wave
    end
  end
  soundwaves
end

private

def check_soundwave_validity(soundwave)
  raise ArgumentError, 'Soundwave contains invalid data' if soundwave.include?(nil)
end