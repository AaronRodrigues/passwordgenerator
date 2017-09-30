class PasswordGenerator
    
  def makeit(length = 15)
    secret = []
    lowercase_array = ('a'..'z').to_a
    secret.concat(lowercase_array.shuffle)
    password = secret.shuffle.take(length).join
  end
end