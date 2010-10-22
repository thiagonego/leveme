# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_leveme_session',
  :secret      => 'ae4f113576319e467ee28d51f62b96beff04b85aafb0237d92fabb4f2b7f0e69409696ed7c661db18a224f156878f02f2314623db6499b0126c7af592414dc6b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
