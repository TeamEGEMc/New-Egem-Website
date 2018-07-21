# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "new-egem-website"
set :repo_url, "git@github.com:TeamEGEMc/New-Egem-Website.git"

set :deploy_to, '/home/deploy/new-egem-website'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
#after :deploy, "custom:run_sync_task"