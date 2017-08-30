require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe "putput prime numbers" do
  specify { expect(Eratos.show_prime(30)).to include(2, 3, 5, 7, 11, 13, 17, 19, 23, 29) }
end

