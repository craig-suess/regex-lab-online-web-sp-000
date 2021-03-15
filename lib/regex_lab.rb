def starts_with_a_vowel?(word)
  if word.match(/^[aeiou]+\w/i)
    return true           #if a word's first letter starts with an a, e, i, o, or u. with any
  else                    #other character after it, then return true. otherwise, return false. 
    return false
  end
end


def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/[u][n]\w+[i][n][g]/);    #add words from a string to an array, that start with "un"
end                                   # with any letters inbetween at any length, and ends with "ing"



def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/i);        # any words that are 5 letters long, capitalized or not,  
end                               # may not include any other letters other than 5 letters either
                                  # side of the word. 



def first_word_capitalized_and_ends_with_punctuation?(text)
  scanThis = text.scan(/(^[A-Z]).+([.])/);
  
  if scanThis
    return true; 
  elsif !scanThis 
    return false;
  end
end



def valid_phone_number?(phone)
  #phone.match(/\b[0-9]{3}[0-9]{3}[0-9]{4}\b|\b[0-9]{3}\s[0-9]{3}\s[0-9]{4}\b|\W\D\S\b[0-9]{3}\S[0-9]{3}\S[0-9]{4}\b|\S\b[0-9]{3}\S[0-9]{7}\b/)
  phoneNumber = phone.match(/(\d{10})|(\d{3}\s\d{3}\s\d{4})|(\S\d{3}\S\d{3}\S\d{4}\b)|(\S\b\d{3}\S\d{7})/);
  
  if phoneNumber
    return true; 
  else 
    return false; 
  end
end