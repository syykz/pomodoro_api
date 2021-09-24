Rails.application.config.middleware.use OmniAuth::Builder do
  # ここの設定は
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"], {
             skip_jwt: true,
             access_type: "offline",
             prompt: "consent",
             callback_path: "/users/auth/google_oauth2/callback",
           }
end
OmniAuth.config.allowed_request_methods = %i[get]