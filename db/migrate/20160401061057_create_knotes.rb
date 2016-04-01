class CreateKnotes < ActiveRecord::Migration
  def self.up
    create_table :knotes do |t|
      t.string :domain
      t.text :khash
      t.text :kcontent
      t.timestamps
    end
  end

  def self.down
    drop_table :knotes
  end
 end
