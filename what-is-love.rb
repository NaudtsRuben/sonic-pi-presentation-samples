#written by Ruben Naudts, December 2023

use_bpm 124

in_thread do
  25.times do
    use_synth :piano
    play_chord [:G3, :B3, :D4]
    sleep 1
    play_chord [:G3, :B3, :D4]
    sleep 1
    play_chord [:G3, :B3, :D4]
    sleep 0.75
    play_chord [:G3, :B3, :D4]
    sleep 0.75
    play_chord [:G3, :B3, :E4]
    sleep 0.5
    play_chord [:F3, :B3, :D4]
    sleep 1
    play_chord [:F3, :B3, :D4]
    sleep 1
    play_chord [:F3, :B3, :D4]
    sleep 0.75
    play_chord [:F3, :B3, :D4]
    sleep 0.75
    play_chord [:g3, :B3, :E4]
    sleep 0.5
    play_chord [:F3, :A3, :D4]
    sleep 1
    play_chord [:F3, :A3, :D4]
    sleep 1
    play_chord [:F3, :A3, :D4]
    sleep 0.75
    play_chord [:F3, :A3, :D4]
    sleep 0.75
    play_chord [:G3, :A3, :E4]
    sleep 0.5
    play_chord [:A3, :C4, :F4]
    sleep 1
    play_chord [:A3, :C4, :F4]
    sleep 1
    play_chord [:A3, :C4, :F4]
    sleep 0.75
    play_chord [:A3, :C4, :F4]
    sleep 0.75
    play_chord [:A3, :C4, :F4]
    sleep 0.5
  end
end

in_thread do
  #first piano base line
  sleep 16
  24.times do
    use_synth :piano
    play_chord [:G3, :B3, :D4], sustain:4
    play :A2, sustain:4
    sleep 4
    play_chord [:F3, :B3, :D4], sustain:4
    play :C3, sustain:4
    sleep 4
    play_chord [:F3, :A3, :D4], sustain:4
    play :E3, sustain:4
    sleep 4
    play_chord [:F3, :A3, :B3], sustain:4
    play :F3, sustain:4
    sleep 4
  end
  
end

in_thread do
  #second piano
  
  use_synth :piano
  sleep 16
  24.times do
    play_pattern_timed [:b4, :a4, :b4, :g4], [0.5]
    play_pattern_timed [:b4, :a4, :b4, :g4], [0.5]
    play_pattern_timed [:b4, :a4, :b4, :f4], [0.5]
    play_pattern_timed [:b4, :a4, :b4, :f4], [0.5]
    play_pattern_timed [:a4, :g4, :a4, :f4], [0.5]
    play_pattern_timed [:a4, :g4, :a4, :f4], [0.5]
    play_pattern_timed [:a4, :g4, :a4, :f4], [0.5]
    play_pattern_timed [:a4, :g4, :a4, :f4], [0.5]
  end
end


in_thread do
  #second piano bass line
  
  use_synth :piano
  sleep 16
  24.times do
    play_pattern_timed [:g2, :r, :g2, :r], [0.5]
    play_pattern_timed [:g2, :g2, :r, :f2], [0.5]
    play_pattern_timed [:b2, :r, :b2, :r], [0.5]
    play_pattern_timed [:b2, :b2, :r, :c3], [0.5]
    play_pattern_timed [:d3, :r, :d3, :r], [0.5]
    play_pattern_timed [:d3, :d3, :r, :c3], [0.5]
    play_pattern_timed [:f3, :r, :f3, :r], [0.5]
    play_pattern_timed [:f3, :d3, :r, :f3], [0.5]
  end
end

in_thread do
  use_synth :bass_foundation
  sleep 12
  sleep 2.5
  play_pattern_timed [:d5, :f5, :g5], [0.5, 0.5, 2.5]
  play_pattern_timed [:d5, :e5, :d5],[0.5]
  play_pattern_timed [:f5, :d5], [1, 2.5]
  play_pattern_timed [:d5, :f5, :d5],[0.5, 1, 2.5]
  play_pattern_timed [:d5, :c5], [0.5,2]
  sleep 4.5
  play_pattern_timed [:d5, :e5, :d5], [0.5]
  play_pattern_timed [:f5, :d5], [1, 2.5]
  play_pattern_timed [:d5, :f5, :d5], [0.5, 1, 2.5]
  play_pattern_timed [:d5, :c5], [0.5, 2]
  sleep 2.5
  
  2.times do
    2.times do
      
      play_chord [:g4, :b4, :d5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:g4, :b4, :d5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:g4, :b4, :d5]
      sleep 0.75
      play_chord [:g4, :b4, :d5]
      sleep 0.75
      play_chord [:g4, :b4, :e5]
      sleep 0.5
      
      
      play_chord [:f4, :b4, :d5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:f4, :b4, :d5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:f4, :b4, :d5]
      sleep 0.75
      play_chord [:f4, :b4, :d5]
      sleep 0.75
      play_chord [:g4, :b4, :e5]
      sleep 0.5
      
      play_chord [:f4, :a4, :d5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:f4, :a4, :d5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:f4, :a4, :d5]
      sleep 0.75
      play_chord [:f4, :a4, :d5]
      sleep 0.75
      play_chord [:f4, :a4, :e5]
      sleep 0.5
      
      play_chord [:a4, :c5, :f5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:a4, :c5, :f5]
      sleep 0.5
      play :r
      sleep 0.5
      play_chord [:a4, :c5, :f5]
      sleep 0.75
      play_chord [:a4, :c5, :f5]
      sleep 0.75
      play_chord [:a4, :c5, :f5]
      sleep 0.5
      
    end
    
    sleep 16
    sleep 1.5
    
    play_pattern_timed [:f4, :d5, :c5, :d5], [0.5, 0.5, 1, 1.5]
    sleep 0.5
    play_pattern_timed [:f4, :d5, :c5, :d5], [0.5, 0.5, 1, 1.5]
    sleep 0.5
    play_pattern_timed [:f4, :d5, :e5, :d5], [0.5]
    play_pattern_timed [:d5, :c5, :c5],[1.5, 0.5, 1.5]
    play_pattern_timed [:b4, :b4], [0.5, 1.5]
    sleep 0.5
    play_pattern_timed [:f4, :d5, :c5, :d5], [0.5, 0.5, 1, 1.5]
    sleep 0.5
    play_pattern_timed [:f4, :d5, :c5, :d5], [0.5, 0.5, 1, 1.5]
    sleep 0.5
    play_pattern_timed [:f4, :d5, :e5, :d5], [0.5]
    play_pattern_timed [:c5],[2.5]
    sleep 0.5
    play_pattern_timed [:d5, :f5, :g5],[0.5, 0.5, 2]
    sleep 0.5
    play_pattern_timed [:d5, :e5, :d5],[0.5]
    play_pattern_timed [:f5, :d5],[1, 2.5]
    play_pattern_timed [:d5, :f5, :d5], [0.5,1,2.5]
    play_pattern_timed [:d5, :c5], [0.5, 2]
    sleep 1
    play_pattern_timed [:d5, :f5, :g5],[0.5, 0.5, 2]
    sleep 0.5
    play_pattern_timed [:d5, :e5, :d5],[0.5]
    play_pattern_timed [:f5, :d5],[1, 2.5]
    play_pattern_timed [:d5, :f5, :d5], [0.5,1,2.5]
    play_pattern_timed [:d5, :c5], [0.5, 2]
    sleep 2.5
    
    play_pattern_timed [:d5, :d5], [1]
    play_pattern_timed [:d4, :f4, :g4, :b4, :c5, :d5, :c5], [0.5]
    play_pattern_timed [:b4, :g4],[1]
    play_pattern_timed [:b4, :c5, :d5, :c5], [0.5]
    play_pattern_timed [:b4, :g4, :c5, :g4], [1, 1.5, 1.5, 2.5]
    
    sleep 2
    play_pattern_timed [:d4, :f4, :g4, :b4, :c5, :d5, :c5], [0.5]
    play_pattern_timed [:b4, :g4],[1]
    play_pattern_timed [:b4, :c5, :d5, :c5], [0.5]
    play_pattern_timed [:b4, :g4, :c5], [1, 1.5, 1.5]
    
    sleep 2.5
  end
  
  2.times do
    
    play_chord [:g4, :b4, :d5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:g4, :b4, :d5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:g4, :b4, :d5]
    sleep 0.75
    play_chord [:g4, :b4, :d5]
    sleep 0.75
    play_chord [:g4, :b4, :e5]
    sleep 0.5
    
    
    play_chord [:f4, :b4, :d5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:f4, :b4, :d5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:f4, :b4, :d5]
    sleep 0.75
    play_chord [:f4, :b4, :d5]
    sleep 0.75
    play_chord [:g4, :b4, :e5]
    sleep 0.5
    
    play_chord [:f4, :a4, :d5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:f4, :a4, :d5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:f4, :a4, :d5]
    sleep 0.75
    play_chord [:f4, :a4, :d5]
    sleep 0.75
    play_chord [:f4, :a4, :e5]
    sleep 0.5
    
    play_chord [:a4, :c5, :f5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:a4, :c5, :f5]
    sleep 0.5
    play :r
    sleep 0.5
    play_chord [:a4, :c5, :f5]
    sleep 0.75
    play_chord [:a4, :c5, :f5]
    sleep 0.75
    play_chord [:a4, :c5, :f5]
    sleep 0.5
    
  end
  
  sleep 2
  play_pattern_timed [:d5, :e5, :d5],[0.5]
  play_pattern_timed [:f5, :d5],[1, 2.5]
  play_pattern_timed [:d5, :f5, :d5], [0.5,1,2.5]
  play_pattern_timed [:d5, :c5], [0.5, 2]
  
  sleep 1
  play_pattern_timed [:d5, :f5, :g5],[0.5, 0.5, 4.5]
  
end



