# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RouterApp::Application.config.secret_key_base = '3b359b92504ca1805dc1958b19ef1ac51bb6005738c607f1a171fe1f3de7a608e80ccb12cd763b5fa75aa67c37a2dd33f97b1136e4c132e715b2466b53788cf9'
