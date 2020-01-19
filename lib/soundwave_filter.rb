def soundwave_filter(soundwave, lower=40, upper=1000)

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