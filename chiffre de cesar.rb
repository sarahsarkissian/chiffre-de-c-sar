
def uppercase?(ord)
  ord.between?(64, 91)
end

def encode(char, shift)
  ord = char.ord
  return char unless ord.between?(65, 123)
  lower_limit, upper_limit = uppercase?(ord) ? [65, 91] : [96, 123]
  shifted_ord = ord + shift
  shifted_ord > upper_limit ? (lower_limit + shifted_ord % upper_limit).chr : shifted_ord.chr
end

def chiffre_de_cesar(string, shift)
  string.chars.map { |char| encode(char, shift) }.join()
end

puts chiffre_de_cesar("What a string!", 5)