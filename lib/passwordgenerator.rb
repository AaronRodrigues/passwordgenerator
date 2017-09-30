class PasswordGenerator
    
  def makeit(length = 15)
    secret = []
    character_array = ('a'..'z').to_a
    num_array = (0..9).to_a
    secret.concat(character_array.shuffle)
    secret.concat(num_array.shuffle)
    password = secret.shuffle.take(length).join
  end
end