require 'pry'
require 'yaml'

def load_library(file)
  emoticons = YAML.load_file('./lib/emoticons.yml')
  new_emoticons = emoticons
  new_hash = {}
  get_meaning = new_hash["get_meaning"] = {}
  get_emoticon = new_hash["get_emoticon"] = {}

  # binding.pry

    new_emoticons.each do |key, value|
      # binding.pry
      new_hash["get_meaning"][value[1]] = key
      new_hash["get_emoticon"][value[0]] = value[1]

    # binding.pry

  end
  new_hash
  # binding.pry
end



def get_japanese_emoticon(file, emoticon)

  # load_library(file)
  all_emos = load_library(file)
  all_emos

  all_emos["get_emoticon"].each do |key, value|
    # binding.pry
      if emoticon == key
        return value
          # binding.pry
      end
  end
  "Sorry, that emoticon was not found"
end



def get_english_meaning(file, emoticon)
  all_emos = load_library(file)
  all_emos

  all_emos["get_meaning"].each do |key, value|

    if emoticon == key
      return value
    end

  end
  "Sorry, that emoticon was not found"
end
