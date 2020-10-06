class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
# boolean型　trueまたはfaleseの真理値を判断する型
      t.boolean :checked
      t.timestamps
    end
  end
end
