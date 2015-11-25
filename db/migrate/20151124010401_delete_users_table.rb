class DeleteUsersTable < ActiveRecord::Migration
  def up
    drop_table :users
  end

  def down
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    add_index :users, :email, unique: true
    # https://www.railstutorial.org/book/modeling_users#code-email_uniqueness_index
    add_column :users, :password_digest, :string
  end
end
