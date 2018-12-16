# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create(coupon_code: "Emerson!", store: 'New Jersey')
Coupon.create(coupon_code: "PS4!", store: 'Gamespot')
Coupon.create(coupon_code: "Airplanes", store: 'The garage')
Coupon.create(coupon_code: "my axe!", store: 'Mordor!')

