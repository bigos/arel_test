class FTable < ActiveRecord::Base

  def self.queryfy
    ft = arel_table

    sub1 = (ft[:df1]).-(1).to_sql
    qf1  = "abs#{sub1}"
    min1 = ft[:df1].minimum.to_sql
    abs1 = Arel.sql(qf1)
    df1l = ft.project(Arel.sql(qf1).minimum)

    sub2 = (ft[:df2]).-(2).to_sql
    qf2  = "abs#{sub2}"
    min2 = ft[:df2].minimum.to_sql
    abs2 = Arel.sql(qf2)
    df2l = ft.project(Arel.sql(qf2).minimum)

    qr = FTable.select(:value)
           .where(df1: ft.project(min1)
                    .where(abs1.eq(df1l)))
           .where(df2: ft.project(min2)
                    .where(abs2.eq(df2l)))
    qr.to_sql
  end
end
