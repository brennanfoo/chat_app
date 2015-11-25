class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true
    # https://www.railstutorial.org/book/modeling_users#code-email_uniqueness_index
  end
end
