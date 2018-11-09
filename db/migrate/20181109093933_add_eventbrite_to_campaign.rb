class AddEventbriteToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :eventbrite, :string
  end
end
