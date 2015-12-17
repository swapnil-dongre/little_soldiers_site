json.array!(@admissions) do |admission|
  json.extract! admission, :id, :sname, :pname, :dob, :address, :city, :bldgrp, :course, :contact
  json.url admission_url(admission, format: :json)
end
