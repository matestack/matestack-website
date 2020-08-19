class CreateNewsletterSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :newsletter_subscribers do |t|
      t.string :name
      t.string :email
      t.boolean :confirmed, default: false
      t.string :token

      t.timestamps
    end
  end
end
