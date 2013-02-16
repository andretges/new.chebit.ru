if defined? Airbrake
	Airbrake.configure do |config|
		 config.api_key		 	= 'e943335c46ffcf96916c39b2c62a4a8d'
		 config.host			= 'errbit.brandymint.ru'
		 config.port			= 80
		 config.secure			= config.port == 443
	 end
end
