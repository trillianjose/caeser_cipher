def caesar_cipher(text, shift)
  coded = Array.new
  normal= ("a".."z").to_a
	capital = ("A".."Z").to_a

	text.split("").each do |i|
		if  normal.include?(i)
			coded <<  normal[( normal.index(i) + shift ) % 26]
		elsif capital.include?(i)
			coded << capital[( capital.index(i) + shift ) % 26]
		else
			coded << i
		end
	end

	coded.join
end

puts "Escriba la palabra a encriptar"
text = gets.chomp
puts "Cuantas veces desea el cambio"
shift = gets.chomp.to_i
puts caesar_cipher(text, shift)
