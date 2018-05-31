class CreateRecruiters < ActiveRecord::Migration[5.1]
  def change
    create_table :recruiters do |t|
      t.string    :first_name,    :null => false
      t.string    :last_name,     :null => false
      t.string    :company
    end
  end
end
