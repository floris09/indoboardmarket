class ChangeDecimalToIntegerProducts < ActiveRecord::Migration[5.1]

change_column :products, :price, :integer

end
