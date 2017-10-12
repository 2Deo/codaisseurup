Category.destroy_all
Photo.destroy_all
Event.destroy_all
User.destroy_all
Profile.destroy_all

arno = User.create(email: "arno@codaisseurup.com", password: "abcd1234")
event = Event.create(name: "Surprise Party", description: "Surprise for my biggest friend", location: "Amsterdam", includes_food: false, includes_drinks: true, price: 5.00, starts_at: 10.days.from_now, ends_at: 12.days.from_now, capacity: 100, active: true,  user: arno)

photo1 = Photo.create(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/IMG_0516_PRINT_A3p_web_ivbx4b")
photo2 = Photo.create(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/IMG_0388_web_mzttxt")
photo3 = Photo.create(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/IMG_0335_web_ezakry")
photo4 = Photo.create(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/IMG_0324_PRINT_A3p_web_bafaxs")
photo5 = Photo.create(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/IMG_0321_PRINT_A3p_web_qllrwx")
photo6 = Photo.create(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/IMG_0290_web_caakpk")


# Categories
sports = Category.create!(name: "Sports")
outdoors = Category.create!(name: "Outdoors")
friends = Category.create!(name: "Friends")
family = Category.create!(name: "Family")
study = Category.create!(name: "Study")

# Users
miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create!(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create!(email: "matt@codaisseurbnb.com", password: "abcd1234")
