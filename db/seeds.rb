# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Datum.destroy_all
Photo.destroy_all
User.destroy_all

bryce = User.create(username: 'Bryce')
User.create(username: 'Henry Ford')
User.create(username: 'whatup123')

den_rise = Photo.create(location: 'Denver',
                        url: 'https://img-aws.ehowcdn.com/877x500p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/195ac4c4bd2345669c6fbd0f1d186c09',
                        rise_or_set: 'rise')
Photo.create(location: 'Denver',
             url: 'https://i.pinimg.com/originals/1b/22/7d/1b227d6ba57c2b36d98d1c1938950052.jpg',
             rise_or_set: 'set')
Photo.create(location: 'Patagonia',
             url: 'https://tripmemos.com/wp-content/uploads/2016/10/Torres-del-Paine-at-sunrise.jpg',
             rise_or_set: 'rise')
Photo.create(location: 'Patagonia',
             url: 'https://www.mountainphotography.com/images/xl/20111218-Fitz-Roy-Sunrise.jpg',
             rise_or_set: 'set')
Photo.create(location: 'Fort Collins',
             url: 'https://4.bp.blogspot.com/-6b8swvRKwhI/T0qJJjfzb3I/AAAAAAAANKo/JDNjmI_683I/s1600/Sunrise_At_CIRA_1.jpg',
             rise_or_set: 'rise')
Photo.create(location: 'Fort Collins',
             url: 'https://i.redd.it/u4rmjn0gatn11.jpg',
             rise_or_set: 'set')

Datum.create(
  latitude: 39.7392,
  longitude: -104.9903,
  date: '12/23/1235',
  sunrise: '7:34 AM',
  sunset: '6:25 PM',
  photo: den_rise,
  user: bryce
)
