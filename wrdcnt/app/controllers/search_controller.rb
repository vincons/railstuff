require 'json'
require 'mime/types'
require 'open-uri'

class SearchController < ApplicationController
    @req_time = DateTime.current #initialize the moment when the request was initiated.

        def index
        @counter_words = {}
        end

        def srch

                # actual api calls for search go here...
                @session_id =  request.headers["rack.session"]["session_id"]
                @search_string = params["message"]
                
                @hash_for_view = {}
				@hash_for_see = {}
                
                @filter_list = ['is','am','are','was','where','were','you','i']
                
                
			    #t = Thread.new { @tw_result = self.twt_search(params["message"]) }

                #f = Thread.new { @fb_result = self.fb_search(params["message"]) }

                #t.join
                #f.join

                #render "chsrch"
                render "index12"
                #render "word_count"

        end

        def twt_search(q, options={})
               options[:page] ||= 10
                options[:rpp] ||= 2000
                options[:q] = URI.escape(q)
                args = options.map{|k,v| "#{k}=#{v}"}.join('&')
                response = open("http://search.twitter.com/search.json?lang=en#{args}", 'User-Agent' => 'raghav')
                @tw_result = JSON.parse(response.read)

                @hash_for_view = tw_processing(@filter_list, @tw_result["results"])

        end

        def fb_search(srch)
                str  = URI.escape(srch)
                response = open('http://graph.facebook.com/search?q=' + str  + '&type=post' + '&limit=200' , 'User-Agent' => 'puneet')
                @result=JSON.parse(response.read)

                @hash_for_see = fb_processing(@master_list,@result["data"])
        end


        def tw_processing(master_list, messages)

                hash_for_view ={}

                #puts '=================================' + messages.length.to_s

                messages.length.times do |i|

                        #msgwords = messages[i]["text"].split(/ /)
                        #puts '=======words from the message ======================'
                        #puts msgwords

                        #score = get_score(messages[i]["text"])

                        msg= messages[i]["text"]
                        msgwords = msg.downcase.split(/ /)  #words array
                        
                         cnt_words = msgwords & master_list # array & will leave only 
                                        #countable words
                        if not cnt_words.nil?
                            cnt_words.each do |w|
                                wrd = Words.where("word = ?",w)
                                myword = wrd[0]
                                puts "==========================================="
                                puts "word = " + myword.inspect
                                puts "==========================================="

                                if not myword.nil?
                                    myword.inc_counter
                                else
                                    myword = Words.new_word(w,1)
                                end
                            end # for do
                        end # for if
                                

                        #hash_for_view[messages[i]["text"]] = score.to_f
                       # db_insert(messages[i]["text"], score, "Twitter",messages[i]["iso_language_cd"])
                end

                return hash_for_view
        end # of function tw_processing

        def fb_processing(master_list, messages)

                #@result["data"].each do |elem| %>

                #puts '===============' + messages.length.to_s + '==============================================='
                #puts messages.inspect

               hash_for_see ={}

                messages.length.times do |i|

                        #msgwords = messages[i]["text"].split(/ /)
                        #puts '=======words from the message ======================'
                        #puts msgwords


                        if not messages[i]["message"].nil?
                                #puts  '========================' + 'launching scoring for ' + messages[i]["message"]
                                score = get_score(messages[i]["message"])
                                hash_for_see[messages[i]["message"]] = score.to_f
                        end


               #         db_insert(messages[i]["message"], score,'Facebook','en')
                end

                return hash_for_see
        end # of function calc_score


        def get_score (msg)
                score = 0
                  @msg2=msg.downcase

                #puts '========== message received for scoring  ==================='
                #puts msg

                #puts '========== master list  ==================='
                #puts @master_list
                              @master_list.each do |k|
                      msg1=/#{k}\w{0,5}/.match(@msg2)
                      if msg1!=nil


                #@msgwords = msg.downcase.split(/ /)
                #score_words = @msgwords & @master_list # array & will leave only scorable words
                #puts '==========score words ==================='
                #puts score_words

                #if not score_words.nil?
                        #score_words.each do |w|
                                #puts 'word =>' +  w
                                x = @emo[k]
                                		s=@msg2.index(k)
										g=@msg2.slice(s-3,7 )

                                        g.each do|word|
                                       if word == params["message"]
                                       @r=g.index(word)
                                       end
                                 end
                          $ag =  @r
                          case $ag
                          when 0 .. 7
                          score = score.to_f+ x.to_f
	
                          else
                          
                           score = score.to_f + x/2.to_f
	
	                       end
                                #puts 'score'
                                #puts x[0].to_f
                                #puts 'scoring for ' + w + ' = ' + x
                                #score = score.to_f + x.to_f

                        end
                end

                return score
        end


       #def db_insert(textvalue, score, site_name, lang_cd)

               # msg = Msgdata.new

                #(msg_arry["created_at"])

                #msg.profile_image =  msg_arry["profile_image_url"]
                #msg.from_user_id = msg_arry["from_user_id_str"]
                #msg.id_str = msg_arry["id_str"]
                #msg.from_user =  msg_arry["from_user"]
               # msg.message =  textvalue # msg_arry["text"]
                #msg.metadata =  msg_arry["metadataresult_type"]
                #msg.id =  msg_arry["id"]
              #  msg.language_cd =  lang_cd # msg_arry["iso_language_cd"]
                #msg.source_url =  msg_arry["source"]
              #  msg.score= score
               # msg.request_time = @req_time
              #  msg.session_id =  request.headers["rack.session"]["session_id"]
              #  msg.search_string = params["message"]
                #session.session_id
              #  msg.site_name = site_name

              #  msg.save

     #   end # end of db_insert

       
        
        

            
        

end  # end of class

