class Cipher
  def self.encode(input)
    alpha_for = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k",
                 "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
                 "w", "x", "y", "z", "1", "2", "3"]

    alpha_back = ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o",
                  "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c",
                  "b", "a", "1", "2", "3"]
    string = ""

    append(string, alpha_back, alpha_for, input)

    string
  end

  def self.append(string_param, forwards, backwards, input)
    input.each_char do |letter|
      next if [" ", ",", "."].include?(letter)

      index = forwards.index(letter.downcase)
      string_param << backwards[index]

      if [5, 11, 17, 23, 29, 35].include?(string_param.length)
        string_param << " "
      end
    end
  end
end
