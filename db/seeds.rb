Quote.destroy_all
class Seed
  @@array_quotes = ["I'm not someone who frequents the gym, pretty much ever.","I naturally have a me-against-the-world mentality, and I've been fighting it since I was 13. It's felt like it's only gotten me in lonely, angry places.","Ninety-eight per cent of all human communication is non-verbal.","My sister was in ballet growing up. I spent almost the entirety of 7 through 12 backstage at Lincoln Center, just running around, waiting for 'The Nutcracker' to end.","I love the East Village.","Learning the Italian was tough. I tried to really come at from a purist perspective, really learn the grammar, syntax and conjugations.","I'm sure no one really wants to think of themselves as a child actor.","My dad's French, and I spent my summers in France growing up. So I speak French fluently, and obviously, I speak English because I was raised in New York, and I grew up here.","Somebody said to me, 'You should keep a journal of this period in your life and really write down this stuff.' But that makes me a little uneasy.","I played the piano growing up and then stopped for 10 or 12 years.","There's the truth to every moment that you have to bring to every scene, but you have to understand the tonality of the film before you begin, which isn't something that's instinctual to me.","I want to attack and to lead my life with vigor, but I'm in the watching stage at the moment. Younger actors feel pressure to bring a pop to every scene; as the roles get bigger, I'm finding you can add layers and do less scene-to-scene.","I don't like to know exactly what I'm going to do in a scene, because the most interesting moments as an audience member are moments of truthful spontaneity.","I've been very encouraged by the nature of the conversations that I've had and by the lack of questions that are tunnel-visioned in their understanding of sexuality and life and love.","Sometimes, when you act with someone in an intimate capacity, you have to ask vulnerable questions to speed up intimacy - but that's artificial.","I wouldn't be the actor I am without New York."]
  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    @@array_quotes.each do |quote|
      quote = Quote.create!(
        content: quote)
    end
  end
end

# Photo.destroy_all
# class Seed
#   @@array_photos = ["https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0090.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0089.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0087.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0083.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0078.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0074.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0071.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0065.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0063.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0059.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0053.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0052.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0047.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0045.jpg","https://timotheechalamet.net/photos/albums/uploads/Misc/Instagram/tchalamet/0044.jpg","https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2020/007/TCF-010.jpg","https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2020/007/TCF-009.jpg","https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2020/007/TCF-007.jpg","https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2019/013/004.jpg", "https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2019/013/006.jpg","https://timotheechalamet.net/photos/albums/uploads/Photoshoots/2019/013/006.jpg"]
#   def self.begin
#     seed = Seed.new
#     seed.generate_photos
#   end

#   def generate_photos
#     @@array_photos.each do |photo|
#       photo = Photo.create!(file_path: photo)
#     end
#   end
# end

Seed.begin