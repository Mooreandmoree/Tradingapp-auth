Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end
# This program just lets us know that our provider is the googleoauth so that when a call is made to gooogle it shows we have registered out application to google.
 