json.interns (1..15).each do |i|
  json.UserId i
  json.sessionToken 'abchdhjowdnsoldndklsnn'
  json.type 'organization'
  json.FirstName 'ankit'
  json.MiddleName 'ankit'
  json.LastName 'ankit'
  json.Description 'ankit'
  json.Email 'ankit'
  json.Mobile 'ankit'

  json.WorkPhone 'ankit'
  json.Address1 'ankit'
  json.Address2 'ankit'
  json.Address3 'ankit'
  json.City 'ankit'
  json.ProfileImage 'https://res.cloudinary.com/bzt/image/upload/v1499761645/vk7j4qmigbk9m5arwvny.png'
  json.ProfileSlug i.to_s+'-ankit-ankit'
  json.DepartmentName 'Test'

  json.organization do
    json.id 2
  end


end

json.count 70
