require 'csv'
namespace :import do
  desc 'Import course'
  task course: :environment do
    CSV.foreach(file.path, headers: true) do |row|

    end
  task student: :environment do
    CSV.forreach(file.path, headers: true) do |row|

    end

  end
end
