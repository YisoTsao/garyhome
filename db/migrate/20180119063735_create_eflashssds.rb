class CreateEflashssds < ActiveRecord::Migration[5.1]
  def change
    create_table :eflashssds do |t|
      t.integer :pccitem
      t.string :receivedate
      t.string :prodpn
      t.string :solution
      t.string :ftype
      t.text :desc
      t.string :capacity
      t.text :fwvversion
      t.string :qual
      t.integer :qty
      t.string :plandate
      t.string :startdate
      t.string :finishdate
      t.string :testres
      t.string :status
      t.string :coldbootfail
      t.string :owner
      t.string :qtreport
      t.text :remark
      t.string :prodname
      t.string :pcbvers
      t.string :testres
      t.string :rpname
      t.string :rpdate
      t.text :approvename
      t.text :expl
      t.text :remark

      t.timestamps
    end
  end
end

