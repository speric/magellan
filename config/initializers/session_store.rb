# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_magellan_session',
  :secret      => 'dff32bf4d3eb445553d91821ce72625a96c533fe0c7de641a07d41aab3acb35f838f68a4d5a6b2eededa5757c2fa53ac480889087add8d03f12f5891b2d0f468'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
