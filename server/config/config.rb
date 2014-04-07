require 'sinatra/cross_origin'

# Run once at startup in any environment
configure do
  puts "===================================================================="
  # expand_path from the current working dir
  set :public_folder, File.expand_path('../public', __dir__)
  set :database, ENV['DATABASE_URL'] || 'sqlite://db/dailysoccer.db'

  puts "The environment is #{settings.environment}"
  puts "Public folder is #{settings.public_folder}"

  # Our only DB object
  DB = Sequel.connect(settings.database)

  # Check if our DB is up-to-date
  Sequel.extension :migration

  if Sequel::Migrator.is_current?(DB, File.expand_path('../db', __dir__))
    puts "DB #{settings.database} is current"
  else
    puts "DB is obsolete. Run sequel -m db/ sqlite://db/dailysoccer.db"
    exit
  end

  # Let's help development from the dart client. Disconnect Rack::Protection::HttpOrigin
  # http://stackoverflow.com/questions/14083808/how-do-i-specify-origin-whitelist-options-in-sinatra-using-rack-protection
  set :protection, :origin_whitelist => ['http://127.0.0.1:3030']
  puts "whitelist #{settings.protection[:origin_whitelist]}"

  enable :cross_origin
  puts "cross_origin #{settings.cross_origin}"

  puts "===================================================================="
end

# Run only when the environment (RACK_ENV environment variable) is set to :production
configure :production do
  # https://devcenter.heroku.com/articles/getting-started-with-ruby#specify-ruby-version-and-declare-dependencies-with-a-gemfile
  # By default, Ruby buffers its output to stdout. To take advantage of Heroku’s realtime logging, you will need to disable this
  # buffering to have log messages sent straight to Logplex. To disable this buffering add this to your config.ru
  $stdout.sync = true
end

# Run when the environment is set to either :production or :test
configure :production, :test do
end