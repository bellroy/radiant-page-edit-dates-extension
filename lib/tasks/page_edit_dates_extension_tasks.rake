namespace :radiant do
  namespace :extensions do
    namespace :page_edit_dates do

      desc "Runs the migration of the Page Edit Dates extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          PageEditDatesExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          PageEditDatesExtension.migrator.migrate
        end
      end

    end
  end
end
