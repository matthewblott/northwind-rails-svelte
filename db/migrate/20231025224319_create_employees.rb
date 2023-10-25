class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # Employee fields
      t.string "last_name", limit: 50
      t.string "first_name", limit: 50
      # t.string "email", limit: 50
      t.string "avatar", limit: 250
      t.string "job_title", limit: 50
      t.string "department", limit: 50
      t.integer "manager_id"
      t.string "phone", limit: 25
      t.string "address1", limit: 150
      t.string "address2", limit: 150
      t.string "city", limit: 50
      t.string "state", limit: 50
      t.string "postal_code", limit: 15
      t.string "country", limit: 50
      # t.timestamps

      t.timestamps null: false
    end
  end
end
