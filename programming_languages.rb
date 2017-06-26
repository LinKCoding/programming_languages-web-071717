def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, name|
    name.each do |key, type|
      new_hash[key] = type unless new_hash[key]
      new_hash[key][:style] ? new_hash[key][:style].push(style) : new_hash[key][:style] = [style]

    end
  end
  new_hash
end
