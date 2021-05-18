class CreateStripeCustomerIds < ActiveRecord::Migration[6.1]
  def change
   
    create_table :stripe_customer_ids do |t|
      t.timestamps
    end
    add_reference :stripe_customer_ids, :user, foreign_key: true
    add_reference :stripe_customer_ids, :event, foreign_key: true
  end
end
