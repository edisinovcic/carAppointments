class AddUserLanguageToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :language, :string, default: 'en'
  end
end
