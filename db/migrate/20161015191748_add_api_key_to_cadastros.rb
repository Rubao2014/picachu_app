class AddApiKeyToCadastros < ActiveRecord::Migration
  def change
    add_column :cadastros, :api_key, :string
  end
end
