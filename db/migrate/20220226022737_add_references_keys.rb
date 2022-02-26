class AddReferencesKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :planos, :user, foreign_key: true
  end
end
