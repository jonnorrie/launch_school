def decrypt(name)
  output = ''
  array = ('a'..'z').to_a

  name.each_char do |char|
    if !array.include?(char)
      output << char
    else
      char_index = array.index(char.downcase)
      if char == char.downcase
        output << array[char_index - 13]
      else
        output << array[char_index - 13].upcase
      end
    end
  end

  output
end

p decrypt('Nqn Ybirynpr')
p decrypt('Tenpr Ubccre')
p decrypt('Nqryr Tbyqfgvar')
p decrypt('Nyna Ghevat')
p decrypt('Puneyrf Onoontr')
p decrypt('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
p decrypt('Wbua Ngnanfbss')
p decrypt('Ybvf Unvog')
p decrypt('Pynhqr Funaaba')
p decrypt('Fgrir Wbof')
p decrypt('Ovyy Tngrf')
p decrypt('Gvz Orearef-Yrr')
p decrypt('Fgrir Jbmavnx')
p decrypt('Xbaenq Mhfr')
p decrypt('Fve Nagbal Ubner')
p decrypt('Zneiva Zvafxl')
p decrypt('Lhxvuveb Zngfhzbgb')
p decrypt('Unllvz Fybavzfxv')
p decrypt('Tregehqr Oynapu')