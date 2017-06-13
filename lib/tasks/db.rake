namespace :db do
  desc "TODO"
  task categories: :environment do
    ::Category.create(name: 'World of Tanks')
    ::Category.create(name: 'Warthunder')
    ::Category.create(name: 'Steam')
  end

end
