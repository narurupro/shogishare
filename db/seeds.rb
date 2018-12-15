(1..100).each do |number|
  GameRecord.create(played_at: "20180101", title: "test title" + number.to_s, image_url: "test_image_url", url: "url")
end