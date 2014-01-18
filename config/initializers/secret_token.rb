# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Rabbit::Application.config.secret_key_base = 'e1f7ad71d0386e9255a2a473da02ab645c796615ff1e83f410f9f5923fc4fc8bf782dd2433a0be455828053864ffd82dbb179452b4df9efa6d6cae97ece83473'
