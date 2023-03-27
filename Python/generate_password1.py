# Generate Random Password
import secrets
 
def generate_password(length):
    # Generate a random string of hexadecimal digits
    password = secrets.token_hex(length // 2)
    # Return the first `length` characters of the password
    return password[:length]
 
password = generate_password(10)
print(password)