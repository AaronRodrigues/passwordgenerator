class PasswordGenerator
    
  def makeit(length = 15, uppercase = true, lowercase = true, numeric = true, special = true)
    raise 'Cannot generate password : Increase password length' if (length < 4 &&  uppercase == true && lowercase == true && numeric == true && special == true)
    secret = []
    password = ""
    while password.length < length do
    secret.concat(create_uppercase_array.shuffle.take(1)) if uppercase == true
    secret.concat(create_lowercase_array.shuffle.take(1)) if lowercase == true
    secret.concat(create_num_array.shuffle.take(1)) if numeric == true
    secret.concat(create_special_array.shuffle.take(1)) if special == true
    password = secret.shuffle.take(length).join
    end  
    password
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