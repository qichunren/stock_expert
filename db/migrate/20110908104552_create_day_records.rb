class CreateDayRecords < ActiveRecord::Migration
  def self.up
    create_table :day_records do |t|
      t.string :code
      t.string :name
      t.decimal :zuo_shoupan_jia, :precision => 10, :scale => 2
      t.decimal :kaipan_jia, :precision => 10, :scale => 2
      t.decimal :shoupan_jia, :precision => 10, :scale => 2
      t.decimal :zhangdie_fu, :precision => 10, :scale => 2
      t.decimal :zhangdie_e, :precision => 10, :scale => 2
      t.decimal :chenjiao_liang, :precision => 10, :scale => 2
      t.decimal :chenjiao_e, :precision => 10, :scale => 2
      t.decimal :zuigao, :precision => 10, :scale => 2
      t.decimal :zuidi, :precision => 10, :scale => 2
      

      t.timestamps
    end
    add_index :day_records, :code
  end

  def self.down
    drop_table :day_records
  end
end
