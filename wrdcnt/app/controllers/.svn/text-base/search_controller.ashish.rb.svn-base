class SearchController < ApplicationController
        def index
        end

        def srch
                # actual api calls for search go here...

                #client = TwitterOAuth::Client.new
                $result = self.search(params["message"])

                # @result["results"][1]["text"] 
                #a=['is','am','are']

                b=Emo.all.map(&:word)
                $result["results"].length.times do |i|

                        c=$result["results"][i]["text"].split(/ /)
                        emo=0

                        z=c & b
                        z.each do |w|
                                x=Emo.where(:word => w).all.map(&:score)
                                @emo=@emo+x
                                algo
                        end

                end
                end



        end
        def algo
        $result["results"].length.times do |i|

                msg = Msgdata.new($result["results"][i]["created_at"])

                msg.profile_image =  $result["results"][i]["profile_image_url"]
                msg.from_user_id = $result["results"][i]["from_user_id_str"]
                msg.id_str = $result["results"][i]["id_str"]
                msg.from_user =  $result["results"][i]["from_user"]
                msg.message =  $result["results"][i]["text"]
                msg.metadata =  $result["results"][i]["metadataresult_type"]
                msg.id =  $result["results"][i]["id"]
                msg.language_cd =  $result["results"][i]["iso_language_cd"]
                msg.source_url =  $result["results"][i]["source"]
                msg.score= @emo
                msg.save

        end # end of algo

       

end  # end of class

