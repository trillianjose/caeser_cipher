def caesar_cipher(text, shift)
  coded = Array.new
  normal= ("a".."z").to_a
	capital = ("A".."Z").to_a

	text.split("").each do |character|
		if  normal.include?(character)
			coded <<  normal[( normal.index(character) + shift ) % 26]
		elsif capital.include?(character)
			coded << capital[( capital.index(character) + shift ) % 26]
		else
			coded << character
		end
	end

	coded.join
end

puts "Escriba la palabra a encriptar"
text = gets.chomp
puts "Cuantas veces desea el cambio"
shift = gets.chomp.to_i
puts caesar_cipher(text, shift)
