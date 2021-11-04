def cypher(letters, track)
  alphabeth = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  letters_len = []
  count = 0
  letters.downcase.split('').each do |letter| 
    if alphabeth.include?(letter)
      count = alphabeth.index(letter) + track
      count > alphabeth.length ? letters_len.push(alphabeth[count - alphabeth.length]) : letters_len.push(alphabeth[count])
    else
     letters_len.push(letter)
    end
  end
  letters_len[0].upcase!
  letters_len.join('')
end

puts cypher("Que onda mi perro!", 3)