# Puma reads by convention the config file from config/puma.rb
#
# 2 processes (asumming we will be using a 2 core machine), 16 threads max per core
threads 8,16
workers 2
preload_app!

# https://github.com/puma/puma
on_worker_boot do
  # configuration here
end


# You should place code to close global log files, redis connections, etc in this block so
# that their file descriptors don't leak into the restarted process. 
on_restart do
end