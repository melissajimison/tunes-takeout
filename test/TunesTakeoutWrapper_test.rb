require 'test_helper'

 class TunesTakeoutWrapperTest < ActiveSupport::TestCase

   describe "Charles::TunesTakeoutWrapper" do
     it "uses v1 of the API" do
       assert_equal "https://tunes-takeout-api.herokuapp.com", BASE_URL
     end

     describe "API" , :vcr do
       before do
         @taco = TunesTakeoutWrapper.find("taco")
         @top_favorites = TunesTakeoutWrapper.all_favorites
         @add_favorite = TunesTakeoutWrapper.add_favorite("americandreamers", suggestion_id)
         @search_result = TunesTakeoutWrapper.search_result("Vz0KO4-RRwADbn9f")
         @my_favs = TunesTakeoutWrapper.get_my_favorite("americandreamers")
       end


      #  it "returns twenty pairing suggestions", :vcr do
      #    assert_equal 20, @taco.class
      #  end
       #
      #  it "will return a list of top_favorites favorites", :vcr do
      #    assert_equal @top_favorites.class, Array
      #    refute_nil @top_favorites
      #  end

      #  it "will return favorites for a given user id", :vcr do
      #    assert_equal @favorite_id_array.class, Array
      #    assert_equal @favorite_id_array.length, 12
      #    refute_nil @favorite_id_array
      #  end
       #
      #  it "can search a pairing by suggestion id", :vcr do
      #    assert_equal @single_pairing["id"], "Vz0KO4-RRwADbn9f"
      #    refute_nil @single_pairing
      #  end

      #  it "can favorite a suggestion" , :vcr do
      #    @original_count = @favorite_id_array.count
      #    TunesTakeoutWrapper.make_favorite('1226771573', "Vz92VPLW7wADpNDB")
      #    @new_count = TunesTakeoutWrapper.favorites_by_user("1226771573").count
      #    assert_equal (@original_count), @new_count
      #  end
       #
      #  it "can unfavorite a suggestion", :vcr do
      #    TunesTakeoutWrapper.make_favorite('1226771573', "Vz0KNY-RRwADbn3d")
      #    @original_count = @favorite_id_array.count
      #    TunesTakeoutWrapper.unfavorite('1226771573', "Vz0KNY-RRwADbn3d")
      #    @new_count = TunesTakeoutWrapper.favorites_by_user("1226771573").count
      #    assert_equal (@original_count), @new_count
      #  end
     end
   end
 end
