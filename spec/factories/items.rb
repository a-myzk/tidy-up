FactoryBot.define do
  factory :item do
    name { 'test_name1' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/images/camera.jpg'))}
    comment { 'test_comment1' }
    status { 1 }
    category { 1 }
  end

  factory :item do, class: Item do
    name { 'test_name2' }
    image { 'test_' }
    comment { 'test_comment2' }
    status { 2 }
    category { 2 }
  end

  factory :item do, class: Item do
    name { 'test_name3' }
    image { 'test_' }
    comment { 'test_comment3' }
    status { 3 }
    category { 3 }
  end


  factory :item do, class: Item do
    name { 'test_name4' }
    image { 'test_' }
    comment { 'test_comment4' }
    status { 4 }
    category { 4 }
  end

  factory :item do, class: Item do
    name { 'test_name5' }
    image { 'test_' }
    comment { 'test_comment5' }
    status { 0 }
    category { 0 }
  end
end