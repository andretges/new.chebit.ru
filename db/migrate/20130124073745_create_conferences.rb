class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.datetime :date_conference
      t.text :content

      t.timestamps
    end
  end
end
