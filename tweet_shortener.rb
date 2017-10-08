def dictionary
  dict = {"hello" => "hi", "to"=>2,
    "two"=>2, "too"=>2, "For"=>4, "for"=>4, "four"=>4,
    "be"=>"b", "you"=>"u", "at"=>"@", "and"=>"&"
  }
end

def word_substituter(string)



  keyarray = []
  keyarray.push(dictionary.keys)
  keyarray=keyarray.flatten

  values2 = []
  values2.push(dictionary.values)
  values2=values2.flatten

  array = []
  array.push(string.split)
  array=array.flatten

  shortarray = []

array.each do |x|
if keyarray.include?(x)
shortarray.push(dictionary["#{x}"])

else
  shortarray.push(x)
end
end
return shortarray.join(" ")

end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
return tweet
end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    return word_substituter(tweet)[0...140]
  else
    return word_substituter(tweet)
  end
end
