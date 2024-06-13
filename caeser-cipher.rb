def key
    puts "Enter the key"
    key = gets.chomp.to_i
    return key
end

user_key = key

def text
    puts "Enter text: "
    text = gets.chomp
    return text
end
plain_text = text

def encipher_text(user_key, plain_text)
    cipher_text = ""

    plain_text.chars.each do |char|
        if ('A'..'Z').include?(char)
            alphabet_index = char.ord - 65
            cipher = (alphabet_index + user_key) % 26
            cipher_char = (cipher + 65).chr
            cipher_text += cipher_char
        elsif ('a'..'z').include?(char)
            alphabet_index = char.ord - 97
            cipher = (alphabet_index + user_key) % 26
            cipher_char = (cipher + 97).chr
            cipher_text += cipher_char
        else 
        cipher_text += char
        end
    end
    return cipher_text
end
encrypted_text = encipher_text(user_key, plain_text)
puts "The encrypted text is #{encrypted_text}"
