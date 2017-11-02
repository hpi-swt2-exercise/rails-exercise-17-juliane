class ChangeDatatypeInPapers < ActiveRecord::Migration
  def up
    change_column :papers, :year, :integer
  end

  def down
    change_column :papers, :year, :string
  end
end
