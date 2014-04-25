# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)



#pf = File.foreach('Establishment.txt')
#pf = File.read('Establishment.txt')
#puts pf
=begin
#christien's method
fp = File.open('Establishment.txt')
Establishment.delete_all

mu = File.open('menu.txt')
Menu.delete_all

fp.each  do |record|
  data = record.split('\t')
  estab = Establishment.Create( :Name => data[0],
                                :Address => data[1],
                                :Market => data[2],
                                :Restaurant => data[3]
                              )
  estab.save!

    mu.each do |food|
      item = food.split('\t')
        estab.menu.create( :Dish => item[0],
                           :Price => item[1],
                           :Style => item[2],
                           :GF => item[3],
                           :Veg => item[4],
                           :Description => item[5]
                          )
    end
end
=end
Market.delete_all
Restaurant.delete_all
Market.create(:name=>'Main Market', :street=>'44 W. Main', :city=>'Spokane', :state=>'WA', :zip=>'99201', :veg=>true, :gf=>true)
Market.create(:name=>'Huckleberrys', :street=>'926 S. Monroe', :city=>'Spokane', :state=>'WA', :zip=>'99204',:veg=>true, :gf=>true)
Market.create(:name=>'Fred Meyer', :street=>'525 E. Francis', :city=>'Spokane', :state=>'WA', :zip=>'99208',:veg=>true, :gf=>true)

i=0
eatery = File.open('Public/establishments_csv.txt','r')
eatery.each do |item|
  item=item.chomp
  data=item.split(',')
  if i>0 then
    Restaurant.create(:name=>data[0], :street=>data[1], :city=>data[2], :state=>data[3], :zip=>data[4], :veg=>data[5], :gf=>data[6])

    puts data[0]
  end
  i+=1
end
eatery.close

#fp = File.open('Establishment.txt')
#fp.each  do |record|
# data = record.split('\t')
# "#{data[0]} #{data[1]} #{data[2]} #{data[3]}<br />"

#end
#fp.close


#Blog.delete_all
#20.times do
#   g = Blog.create( :title => Faker::Company.bs.titleize,
#                :published_date => Time.now,
#                :author => Faker::Name.name,
#                :content => Faker::Lorem.paragraphs(2).join("<br />").html_safe
#              )
#      g.created_at = rand(100).days.ago;
#      g.save!
#end