flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select! {|key, value| key == "Barney"}
flintstones = flintstones.to_a.flatten

p flintstones