User.create!([
  {email: "jmrphyii@memphis.edu", encrypted_password: "$2a$11$YDUKuoqmahNZj8hN0VlOIu0515L9HimzwozQsGZ4x3fu51R4siX82", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-03-19 04:58:04", last_sign_in_at: "2017-02-23 02:31:19", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", fname: "Joseph ", lname: "Murphy", approved: true}
])
Course.create!([
  {term: 123456, rubric: "CHEM", course_number: 1900, section: "001", credit_hours: 4, course_type: "lecture", day: "MWF", time: "6:00 PM", instructor: "Wessel", instructor_rank: "Associate", instructor_id: 0},
  {term: 201580, rubric: "CHEM", course_number: 1110, section: "001", credit_hours: 3, course_type: "Lect", day: "MWF", time: "9:10", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201580, rubric: "CHEM", course_number: 1111, section: "101", credit_hours: 1, course_type: "Lab", day: "M", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201580, rubric: "CHEM", course_number: 1111, section: "102", credit_hours: 1, course_type: "Lab", day: "T", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201610, rubric: "CHEM", course_number: 1110, section: "001", credit_hours: 3, course_type: "Lect", day: "TR", time: "9:40", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201610, rubric: "CHEM", course_number: 1111, section: "101", credit_hours: 1, course_type: "Lab", day: "W", time: "13:00", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201610, rubric: "CHEM", course_number: 1111, section: "102", credit_hours: 1, course_type: "Lab", day: "R", time: "13:00", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201610, rubric: "CHEM", course_number: 1120, section: "001", credit_hours: 3, course_type: "Lect", day: "MWF", time: "9:10", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201610, rubric: "CHEM", course_number: 1121, section: "101", credit_hours: 1, course_type: "Lab", day: "M", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201610, rubric: "CHEM", course_number: 1121, section: "102", credit_hours: 1, course_type: "Lab", day: "T", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201680, rubric: "CHEM", course_number: 1110, section: "001", credit_hours: 3, course_type: "Lect", day: "MWF", time: "9:10", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201680, rubric: "CHEM", course_number: 1111, section: "101", credit_hours: 1, course_type: "Lab", day: "M", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201680, rubric: "CHEM", course_number: 1111, section: "102", credit_hours: 1, course_type: "Lab", day: "T", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201680, rubric: "CHEM", course_number: 1120, section: "001", credit_hours: 3, course_type: "Lect", day: "TR", time: "9:40", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201680, rubric: "CHEM", course_number: 1121, section: "101", credit_hours: 1, course_type: "Lab", day: "W", time: "13:00", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201680, rubric: "CHEM", course_number: 1121, section: "102", credit_hours: 1, course_type: "Lab", day: "R", time: "13:00", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201680, rubric: "CHEM", course_number: 3301, section: "101", credit_hours: 1, course_type: "Lab", day: "M", time: "13:00", instructor: "Robinson, C", instructor_rank: nil, instructor_id: 8},
  {term: 201680, rubric: "CHEM", course_number: 3301, section: "102", credit_hours: 1, course_type: "Lab", day: "T", time: "13:00", instructor: "Robinson, C", instructor_rank: nil, instructor_id: 8},
  {term: 201680, rubric: "CHEM", course_number: 3310, section: "001", credit_hours: 3, course_type: "Lect", day: "MWF", time: "10:20", instructor: "Robinson, C", instructor_rank: nil, instructor_id: 8},
  {term: 201710, rubric: "CHEM", course_number: 1110, section: "001", credit_hours: 3, course_type: "Lect", day: "TR", time: "9:40", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201710, rubric: "CHEM", course_number: 1111, section: "101", credit_hours: 1, course_type: "Lab", day: "W", time: "13:00", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201710, rubric: "CHEM", course_number: 1111, section: "102", credit_hours: 1, course_type: "Lab", day: "R", time: "13:00", instructor: "Houk, L", instructor_rank: nil, instructor_id: 7},
  {term: 201710, rubric: "CHEM", course_number: 1120, section: "001", credit_hours: 3, course_type: "Lect", day: "MWF", time: "9:10", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201710, rubric: "CHEM", course_number: 1121, section: "101", credit_hours: 1, course_type: "Lab", day: "M", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201710, rubric: "CHEM", course_number: 1121, section: "102", credit_hours: 1, course_type: "Lab", day: "T", time: "13:00", instructor: "Kirksey, H", instructor_rank: nil, instructor_id: 6},
  {term: 201710, rubric: "CHEM", course_number: 3301, section: "101", credit_hours: 1, course_type: "Lab", day: "W", time: "13:00", instructor: "Robinson, C", instructor_rank: nil, instructor_id: 8},
  {term: 201710, rubric: "CHEM", course_number: 3301, section: "102", credit_hours: 1, course_type: "Lab", day: "R", time: "19:10", instructor: "Robinson, C", instructor_rank: nil, instructor_id: 8},
  {term: 201710, rubric: "CHEM", course_number: 3310, section: "001", credit_hours: 3, course_type: "Lect", day: "TR", time: "17:30", instructor: "Robinson, C", instructor_rank: nil, instructor_id: 8},
  {term: 201710, rubric: "CHEM", course_number: 3501, section: "101", credit_hours: 1, course_type: "Lab", day: "M", time: "13:00", instructor: "Larrabee, A", instructor_rank: nil, instructor_id: 9},
  {term: 201710, rubric: "CHEM", course_number: 3501, section: "102", credit_hours: 1, course_type: "Lab", day: "T", time: "13:00", instructor: "Larrabee, A", instructor_rank: nil, instructor_id: 9},
  {term: 201710, rubric: "CHEM", course_number: 3511, section: "001", credit_hours: 3, course_type: "Lect", day: "MWF", time: "10:20", instructor: "Larrabee, A", instructor_rank: nil, instructor_id: 9}
])
CourseStudent.create!([
  {grade: "D", attempt: 0, student_id: 1, course_id: 1}
])
Instructor.create!([
  {rank: nil, name: "Kirksey, H"},
  {rank: nil, name: "Houk, L"},
  {rank: nil, name: "Robinson, C"},
  {rank: nil, name: "Larrabee, A"}
])
Student.create!([
  {uid: "0001", act_math: nil, degree: "", email: "", ethnicity: "", fname: "", gender: "", graduation: "2017-03-14", high_school: nil, lname: "", prior_college: nil, transfer_hours: nil}
])
