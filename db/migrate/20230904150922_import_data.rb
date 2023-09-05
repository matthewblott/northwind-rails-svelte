class ImportData < ActiveRecord::Migration[7.0]
  def change
    Rake::Task['db:data:load'].invoke
  end
end
