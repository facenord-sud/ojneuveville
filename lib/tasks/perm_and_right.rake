# encoding: utf-8

namespace :db do
  desc "Créée les permissions de bases et les rôles au bon fonctionnement du site"
  task perms:  :environment do
  	make_permissions
  	make_roles
  end
end

def make_permissions
end

def make_roles
end
