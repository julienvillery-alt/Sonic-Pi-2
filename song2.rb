use_bpm 70

use_synth :fm

#my files for samples
iron_man = "C:/Users/Julien_Villery/Downloads/i am.wav"
mind = "C:/Users/Julien_Villery/Downloads/lost his mind.wav"
live_dead = "C:/Users/Julien_Villery/Downloads/is he.wav"
steel = "C:/Users/Julien_Villery/Downloads/turned to steel.wav"

#my paramaterized function for my samples
define :samples do |x,y|
  sample x, amp: 4
  sleep y
end

#my variables for amp
a = 2
d = 5

#when I play the function at the start of the song
sample iron_man, amp: 5

sleep 8

#my array for my notes
notes = [:b3, :d4, :d4, :e4, :e4, :g4, :fs4, :g4, :fs4, :g4, :fs4, :d4, :d4, :e4, :e4]
i = 0

#mmy sleep time array
sleep1 = [1,1,0.5,0.5,1,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.5,1]
s = 0

#my loop where the notes play
in_thread do
  7.times do
    15.times do
      play notes[i], amp: a, release: 0.9
      sleep sleep1[s]
      i = i + 1
      s = s + 1
    end
    i = 0
    s = 0
  end
end

sleep 7

#my loop for when my drums play
live_loop :drums do
  63.times do
    sleep 1
    sample :drum_bass_hard, amp: d
  end
  stop
end

sleep 7.6

#Calling my paramaterized function to play
samples mind, 17
samples live_dead, 16.5
samples steel, 7.9

#when my notes fade out at the end
in_thread do
  2.times do
    15.times do
      play notes [i], amp: a
      sleep sleep1[s]
      i = i + 1
      s = s + 1
      a = a - 0.06
    end
    i = 0
    s = 0
  end
end

sleep 10

#when my drums fade out along with my notes
in_thread do
  7.times do
    sleep 1
    sample :drum_bass_hard, amp: d
    d = d - 0.3
   
  end
end

sleep 8

#when I play my sample at the end of the song
sample iron_man, amp: 5
