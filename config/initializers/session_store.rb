# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_loginApp_session',
  :secret      => '68f84f731df566ce7e7ccb868df72443e6b7de073ad29f08e776d2e4b48e4147300f351444e692dc17240be095777d9fb6fca219115f09ff99fb5ab2a939bee8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
