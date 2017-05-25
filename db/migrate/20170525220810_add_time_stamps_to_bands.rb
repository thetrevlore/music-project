class AddTimeStampsToBands < ActiveRecord::Migration
  def change
    add_column(:bands, :created_at, :datetime)
    add_column(:bands, :updated_at, :datetime)
    
  end
end
