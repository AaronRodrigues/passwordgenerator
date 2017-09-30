class PasswordGenerator
    
  def makeit(length = 15, uppercase = true)
    secret = []
    lowercase_array = ('a'..'z').to_a
    uppercase_array = ('A'..'Z').to_a
    secret.concat(lowercase_array.shuffle)
    secret.concat(uppercase_array.shuffle) if uppercase == true
    password = secret.shuffle.take(length).join
  end
end