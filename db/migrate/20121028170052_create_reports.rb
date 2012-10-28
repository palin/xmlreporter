class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :content

      t.timestamps
    end
  end
end
