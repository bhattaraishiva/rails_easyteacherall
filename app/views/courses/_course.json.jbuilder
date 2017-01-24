json.extract! course, :id, :coursename, :responsibleperson, :duration, :description, :created_at, :updated_at
json.url course_url(course, format: :json)