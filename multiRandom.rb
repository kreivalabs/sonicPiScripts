#this script calls up three different instrument voices at random

with_fx :reverb do
  in_thread do
    loop do
      sample :perc_bell, rate: (rrand -2, 0.45), amp: (rrand 0.25, 1)
      sleep rrand(0.5, 2)
    end
  end
  
  
  in_thread do
    with_fx :echo do
      loop do
        sample :vinyl_hiss, rate: (rrand -2.5, 1.2)
        sleep rrand(2, 10)
      end
    end
  end
end


with_fx :bitcrusher do
  with_fx :echo, phase: 0.65, decay: 14 do
    loop do
      sample :drum_bass_soft, rate: (rrand 0.2, 1), amp: (rrand 0.3, 0.8)
      sleep rrand(2.1, 10)
    end
  end
end





