class PasswordGenerator
    
  def makeit(length = 15, uppercase = true, numeric = true, special = true)
    secret = []
    secret.concat(create_lowercase_array.shuffle)
    secret.concat(create_uppercase_array.shuffle) if uppercase == true
    secret.concat(create_num_array.shuffle) if numeric == true
    secret.concat(create_special_array.shuffle) if special == true
    password = secret.shuffle.take(length).join
  end
  
  private
  
  def create_lowercase_array
    lowercase_array = ('a'..'z').to_a
  end
  
  def create_uppercase_array
    uppercase_array = ('A'..'Z').to_a
  end
  
  def create_num_array
    num_array  = (0..9).to_a
  end
  
  def create_special_array
    special_array = ("!$%&*@^").chars
  end

end