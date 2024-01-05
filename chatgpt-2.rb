#Written by ChatGPT, December 2023

# Set the BPM
use_bpm 90

# Define a juicy bass line with effects
live_loop :techno do
  use_synth :tb303
  with_fx :reverb, room: 0.8 do
    4.times do
      # Slide between notes with random accents
      play :c2, release: 0.3, cutoff: rrand(70, 120), amp: rrand(0.7, 1)
      sleep 0.25
      play :e2, release: 0.3, cutoff: rrand(70, 120), amp: rrand(0.7, 1)
      sleep 0.25
      play :g2, release: 0.3, cutoff: rrand(70, 120), amp: rrand(0.7, 1)
      sleep 0.5
      
      # Quick slide up
      play :c3, release: 0.1, cutoff: rrand(70, 120), amp: rrand(0.7, 1)
      sleep 0.25
      play :g2, release: 0.3, cutoff: rrand(70, 120), amp: rrand(0.7, 1)
      sleep 0.25
      play :e2, release: 0.3, cutoff: rrand(70, 120), amp: rrand(0.7, 1)
      sleep 0.25
    end
  end
  
  # Rest
  sleep 1
end

# Define a beat with effects
live_loop :beat do
  with_fx :distortion, distort: 0.5 do
    # Kick Drum
    sample :bd_tek, amp: 1.5
    sleep 0.5
    
    # Snare Drum
    sample :sn_dolf, amp: 0.7
    sleep 0.5
    
    # Closed Hi-Hat
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.25
    
    # Kick Drum
    sample :bd_tek, amp: 1.5
    sleep 0.25
    
    # Closed Hi-Hat
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.25
    
    # Snare Drum
    sample :sn_dolf, amp: 0.7
    sleep 0.25
    
    # Closed Hi-Hat
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.25
    
    # Open Hi-Hat
    sample :drum_cymbal_open, amp: 0.3
    sleep 0.5
    
    # Percussive Sound
    sample :perc_bell, amp: 0.5
    sleep 0.25
  end
end
