class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.references :candidate, foreign_key: true
      
      t.string    :content
      t.string    :company
    end
  end
end
