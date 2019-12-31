class CreateToners < ActiveRecord::Migration[6.0]
  def change
    create_table :toners do |t|
      t.integer :requisitionnumber
      t.string :username
      t.string :tonername
      t.integer :quantity
      t.string :sectionname
      t.string :stationname
      t.datetime :requestdate
      t.string :comment
      t.datetime :issuedate
      t.string :issuedby
      t.string :issuecomment
      t.references :user, null: false, foreign_key: true 
     
      t.timestamps
    end
  end
end