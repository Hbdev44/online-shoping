# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_online_shoping_session',
  :secret      => 'eb951718e6e377a675ed6ff3958e1b5f5bc5d911c502a07bbfd37ce543059800c6293c4acc9a70d5cd1a9fb754fdd1d3325fc39422a882599b4fc34a6da71351'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
