class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.references :recruiter, foreign_key: true
      
      t.string    :first_name,    :null => false
      t.string    :last_name,     :null => false
      t.string    :occupation
    end
  end
end
