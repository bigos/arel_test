class FTable < ActiveRecord::Base

  def self.queryfy
    ft = arel_table
    min1 = Arel.sql('min(df1)')
    abs1 = Arel.sql('abs(df1-1)')
    df1l = ft.project(Arel.sql('min(abs(df1-1))'))

    min2 = Arel.sql('min(df2)')
    abs2 = Arel.sql('abs(df2-2)')
    df2l = ft.project(Arel.sql('min(abs(df2-2))'))

    byebug
    1==1

    qr = FTable.select(:value)
           .where(df1: ft.project(min1)
                    .where(abs1.eq(df1l)))
           .where(df2: ft.project(min2)
                    .where(abs2.eq(df2l)))
    qr.to_sql
  end
end
