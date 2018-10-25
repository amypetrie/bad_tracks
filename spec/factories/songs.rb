FactoryBot.define do
  factory :song do
    # title {"Don't Stop Believin'"} Don't need this line
    sequence(:title) {|n| "Song #{n}"}
    sequence(:length) {|n| 10+n}
    sequence(:play_count) {|n| 15+n}
    artist
  end
end
