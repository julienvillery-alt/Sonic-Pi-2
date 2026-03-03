use_bpm 60
use_synth :blade

vader = "C:/Users/Julien_Villery/Downloads/vader.wav"



define :notes do
  play :e4
  sleep 0.5
  play :e4
  sleep 0.5
  play :e4
  sleep 0.5
  play :c4
  sleep 0.35
  play :g4
  sleep 0.15
  play :e4
  sleep 0.5
  play :c4
  sleep 0.35
  play :g4
  sleep 0.15
  play :e4
  sleep 1
  
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :b4
  sleep 0.5
  play :c5
  sleep 0.35
  play :g4
  sleep 0.15
  play :ds4
  sleep 0.5
  play :c4
  sleep 0.35
  play :g4
  sleep 0.15
  play :e4
  sleep 1
end

live_loop :main do
  3.times do
    notes
  end
  stop
end


sleep 8

live_loop :beat do
  30.times do
    sample :bd_haus, amp: 4
    sleep 0.5
  end
  stop
end


sleep 8

live_loop :beat2 do
  1.times do
    sample :bass_hard_c, beat_stretch:3
    sleep 3
  end
  stop
end

live_loop :layer2 do
  1.times do
    sample :bass_dnb_f, amp: 2, beat_stretch: 3
    sleep 3
  end
  stop
end

sleep 3

live_loop :layer3 do
  8.times do
    sleep 0.25
    sample :drum_snare_soft, amp: 2
    sleep 0.25
    sample :drum_bass_hard, amp: 3
  end
  stop
end

sleep 5.5

live_loop :vader do
  1.times do
    sample vader, amp:30
  end
  stop
end

sleep 5

live_loop :beat4 do
  12.times do
    sample :bd_haus, amp: 4
    sleep 1
  end
  stop
end

live_loop :drums do
  48.times do
    
    sample :drum_cymbal_closed
    sleep 0.25
  end
  stop
end


live_loop :melody do
  6.times do
    sample :elec_beep, amp: 0.25
    sleep 2
  end
  stop
end

live_loop :beat7 do
  4.times do
    sample :bass_hard_c, beat_stretch:3, amp: 1.5
    sleep 3
  end
  stop
end

live_loop :Vader1 do
  1.times do
    sample vader, amp:20
  end
  stop
end
