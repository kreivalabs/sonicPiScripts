# ambient piano loops, mysterious, dark, sparse

with_fx :reverb, room: 1, damp: 0.4, damp_slide: 0.5 do
  live_loop :piano do
    sample :ambi_piano, pan: rrand(-1,1),
      rate: rrand(-2, 2), pitch: rrand(-12, 1.6), amp: rrand(0.9, 1.5)
    sleep (rrand 4, 10)
  end
end
