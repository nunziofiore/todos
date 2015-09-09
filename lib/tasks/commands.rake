namespace :commands do

    task :delete_by_id, [:id] => :environment do |t, args|
      Note.find(args[:id]).destroy!
    end

    task :delete_by_content, [:phrase] => :environment do |t, args|
      Note.find_by_content(args[:phrase]).destroy!
    end


    task :complete, [:id] => :environment do |t, args|
      Note.find(args[:id]).complete
    end

    task :add, [:phrase] => :environment do |t, args|
      Note.add(args[:phrase])
    end

    task list: :environment do
      Note.list
    end

    task list_all: :environment do
      Note.list_all
    end
end
