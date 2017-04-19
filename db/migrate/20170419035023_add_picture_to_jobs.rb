class AddPictureToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :picture, :string
  end
end
