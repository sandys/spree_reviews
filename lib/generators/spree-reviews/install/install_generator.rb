module SpreeReviews
  module Generators
    class InstallGenerator < Rails::Generators::Base
#      source_root File.expand_path("../../../../", __FILE__) 
      def copy_locale
        Dir.glob(File.join(ReviewsExtension.root, "db", 'sample', '*.{yml,csv}')).each do |resource_file|
          say_status("copying", "#{resource_file} --->>  db/sample/#{File.basename(resource_file)}", :green)
          copy_file resource_file, "db/sample/#{File.basename(resource_file)}"
        end
      end

      def add_migrations
        run 'rake railties:install:migrations FROM=<%= file_name %>'
      end
      
      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end

    end
  end
end
