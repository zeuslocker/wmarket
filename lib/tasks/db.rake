namespace :db do
  desc "TODO"
  task categories: :environment do
    ::Category.create(name: 'World of Tanks')
    ::Category.create(name: 'Warthunder')
    ::Category.create(name: 'Steam')
    ::Admin.create(email: "admin@admin.com", password: 'grusha104')
  end

end
