use_synth :piano


start = 21

87.times do
  play start
  sleep 0.1
  start= start +1
end
