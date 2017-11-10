class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards, :primary_key => :credit_card_id do |t|
      t.belongs_to :user, :null => false
      t.string :status, :null => false #should be either Active or Inactive
      t.integer :credit_card_number, :null => false
      t.timestamps
    end
  end
end
