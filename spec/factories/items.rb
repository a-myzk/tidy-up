FactoryBot.define do
  factory :item do
    name { 'test_name1' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png'))}
    comment { 'test_comment1' }
    status { 1 }
    category { 1 }
    updated_at { '2021-01-01 00:00:00' }
  end

  factory :second_item, class: Item do
    name { 'test_name2' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png'))}
    comment { 'test_comment2' }
    status { 2 }
    category { 2 }
    updated_at { '2021-02-01 00:00:00' }
  end

  factory :third_item, class: Item do
    name { 'test_name3' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png'))}
    comment { 'test_comment3' }
    status { 3 }
    category { 3 }
    updated_at { '2021-03-01 00:00:00' }
  end

  factory :fourth_item, class: Item do
    name { 'test_name4' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png'))}
    comment { 'test_comment4' }
    status { 4 }
    category { 4 }
    updated_at { '2021-04-01 00:00:00' }
  end

  factory :fifth_item, class: Item do
    name { 'test_name5' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/default.png'))}
    comment { 'test_comment5' }
    status { 0 }
    category { 0 }
    updated_at { '2021-05-01 00:00:00' }
  end
end