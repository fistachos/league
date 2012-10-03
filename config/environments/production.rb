# KURWA! To jest do chuja podobne, że aby odpalić jebaną apkę w rails
# musiałem przekompilować pół serwera, przeczytać więcej dokumentacji
# niż w momencie kiedy pierdolnął RAID na 20 dyskach, zmienić globalny
# config mysqla i na koniec dowiedzieć się, że jebany gem do mysqla
# wypierdala się na utf-8. Przecież to taka nowoczesna, kurwa mać,
# technologia... JASNY CHUJ! Mam już wyrobione zdanie o tym gównie. Ruby = 
# gówno po meksykańsku chyba. Masz to zahardkodowane poniżej, bo oczywiście
# apka chuja wie gdzie się znajduje... 
#
# http://gnuu.org/2009/11/06/ruby19-rails-mysql-utf8/
#
# pierdolę...

require '/var/www/liga.pagenotfound.pl/lib/mysql_utf8.rb'

# Tak, możesz już używać znaków powyżej ASCII, jak kurwa w 1992 roku...
#  _______  _______  _______ _________ _______  _ 
# (  ____ \/ ___   )(  ___  )\__    _/(  ____ \( )
# | (    \/\/   )  || (   ) |   )  (  | (    \/| |
# | (_____     /   )| (___) |   |  |  | (_____ | |
# (_____  )   /   / |  ___  |   |  |  (_____  )| |
#       ) |  /   /  | (   ) |   |  |        ) |(_)
# /\____) | /   (_/\| )   ( ||\_)  )  /\____) | _ 
# \_______)(_______/|/     \|(____/   \_______)(_)
#
# Pozdro, Łukasz

League::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true 

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to nil and saved in location specified by config.assets.prefix
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
   config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
end
