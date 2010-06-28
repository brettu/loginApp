set :application, "brettu"
set :repository,  "git@github.com:bweikulrich/loginApp.git"

set :deploy_to, "var/local/#{application}"


set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_via, :remote_cache
set :branch, "master"

set :passanger_conf, true
set :user, "app" # Login as?
set :runner, "app" # Run ./script as?
set :use_sudo, false

set :domain, "173.203.97.95"



role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain          #`Web` server                # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run
#role :db,  "slave db will run here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
