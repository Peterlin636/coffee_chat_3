class CreateCoffeeChats < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_chats do |t|
      t.string :company_name
      t.string :consultant_name
      t.string :office
      t.string :title
      t.date :date
      t.time :time
      t.string :purpose
      t.string :location

      t.timestamps
    end
  end
end
