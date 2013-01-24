if defined? Airbrake
   Airbrake.configure do |config|
      config.api_key		 	= '1f2f2fe6171659ddd45d4c7e585b712f'
      config.host			= 'errbit.brandymint.ru'
      config.port			= 80
      config.secure			= config.port == 443
   end
end
