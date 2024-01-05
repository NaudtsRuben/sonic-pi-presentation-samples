#Written by ChatGPT, December 2023

# Define a more complex melody with varied timing and variation
melody_notes =
  [:c, :e, :g, :a, :f, :e, :d, :c, :g,
   :a, :b, :d, :e, :f, :a, :g, :c5, :d5, :e5]
  melody_tempo =
  [0.5, 0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25,
   0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.5]
  
# Define a bassline with a different rhythm and variation
bassline_notes =
  [:c2, :e2, :g2, :a2, :f2, :e2, :d2, :c2, :g2,
   :a2, :b2, :d2, :e2, :f2, :a2, :g2, :c3, :d3, :e3]
  bassline_tempo =
  [1, 0.5, 0.5, 1, 0.5, 1, 1, 0.5, 0.5, 0.5, 1,
   1, 0.5, 1, 0.5, 0.5, 0.5, 1, 1]
  
# Define a chord progression with variation
chord_progression =
  [[:c4, :e4, :g4], [:f4, :a4, :c5], [:g4, :b4, :d5], [:a4, :c5, :e5],
   [:d4, :f4, :a4], [:g4, :b4, :d5], [:e4, :g4, :b4], [:a4, :c5, :e5]]
  chord_tempo =
  [1, 1, 1, 1, 1, 1, 1, 1]

# Define a variation for the melody
variation_melody =
  [:d, :f, :a, :b, :g, :f, :e, :d, :a, :b, :c,
   :e, :f, :g, :b, :a, :d5, :e5, :f5]
  variation_tempo =
  [0.5, 0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25,
   0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 0.5]
  
# Play the melody with variation
in_thread do
  loop do
    [melody_notes, variation_melody].sample.zip(melody_tempo)
    .each do |note, duration|
      play note, release: duration
      sleep duration
    end
  end
end

# Play the bassline with variation
in_thread do
  loop do
    [bassline_notes, bassline_notes.reverse].sample
    .zip(bassline_tempo).each do |note, duration|
      play note, release: duration
      sleep duration
    end
  end
end

# Play the chord progression with variation
in_thread do
  loop do
    [chord_progression, chord_progression.reverse].sample
    .zip(chord_tempo).each do |chord, duration|
      play_chord chord, release: duration
      sleep duration
    end
  end
end
