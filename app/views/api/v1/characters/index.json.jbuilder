json.characters @characters do |character|
  json.first_name character.first_name
  json.last_name character.last_name
  json.house character.house
  json.born character.born
  json.birth_year character.birth_year
  json.death_year character.death_year
  json.bio character.bio

end

