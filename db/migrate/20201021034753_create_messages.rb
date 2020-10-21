class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|

      t.timestamps
      t.string :content
      t.references :user, foreign_keys: true
      t.references :room, foreign_keys: true
    end
  end
end
