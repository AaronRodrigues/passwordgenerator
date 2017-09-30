class PasswordGenerator
    
  def makeit(length = 15, uppercase = true, numeric = true, special = true)
    secret = []
    lowercase_array = ('a'..'z').to_a
    uppercase_array = ('A'..'Z').to_a
    num_array  = (0..9).to_a
    special_array = ("!$%&*@^").chars
    secret.concat(lowercase_array.shuffle)
    secret.concat(uppercase_array.shuffle) if uppercase == true
    secret.concat(num_array.shuffle) if numeric == true
    secret.concat(special_array.shuffle) if special == true
    password = secret.shuffle.take(length).join
  end
end