# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Film.destroy_all
Show.destroy_all
Booking.destroy_all
Hall.destroy_all
#Seat.destroy_all


#FILM
film = Film.create!([{
  name: "Ant-Man",
  genre: "Action",
  language: "English",
  dimension: "3D"

},
{
  name: "Spider Man",
  genre: "Action",
  language: "English",
  dimension: "3D"
},
{
  name: "Bat Man",
  genre: "Action",
  language: "English",
  dimension: "3D"
},

{
  name: "Duari",
  genre: "Family",
  language: "Bangla",
  dimension: "2D"
},
{
  name: "Moner Majhe Tumi",
  genre: "Romance",
  language: "Bangla",
  dimension: "2D"
}])

#SHOW
show = film.each_with_index do |obj, index|
Show.create!([{
time: "1#{index}th September 2016, #{index}:00PM",
film_id: obj.id
	}])
end

#BOOKINGS
booking_status = [true, false]
bookings = show.each do |obj|
Booking.create!([{
	reserved: booking_status.sample,
	show_id: obj.id
	}])
end

#HALL
hall_types = ["VIP", "Regular"]
1.upto(6) do |h|
	Hall.create!(hall_name: "Hall #{h}", hall_type: hall_types.sample )
end

#SEATS
#seat_row_a = ["A01", "A02", "A03", "A04", "A05", "A06", "A07", "A08", "A09", "A10", "A11", "A12", "A13", "A14", "A15", "A16", "A17", "A18"]
#seat_row_b = ["B01", "B02", "B03", "B04", "B05", "B06", "B07", "B08", "B09", "B10", "B11", "B12", "B13", "B14", "B15", "B16", "B17", "B18"]
#seat_row_c = ["C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18"]
#seat_row_d = ["D01", "D02", "D03", "D04", "D05", "D06", "D07", "D08", "D09", "D10", "D11", "D12", "D13", "D14", "D15", "D16", "D17", "D18"]
#seat_row_e = ["E01", "E02", "E03", "E04", "E05", "E06", "E07", "E08", "E09", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18"]
#seat_row_f = ["F01", "F02", "F03", "F04", "F05", "F06", "F07", "F08", "F09", "F10", "F11", "F12", "F13", "F14", "F15", "F16", "F17", "F18"]
#seat_row_g = ["G01", "G02", "G03", "G04", "G05", "G06", "G07", "G08", "G09", "G10", "G11", "G12", "G13", "G14", "G15", "G16", "G17", "G18"]
#seat_row_h = ["H01", "H02", "H03", "H04", "H05", "H06", "H07", "H08", "H09", "H10", "H11", "H12", "H13", "H14", "H15", "H16", "H17", "H18"]
#seat_row_i = ["I01", "I02", "I03", "I04", "I05", "I06", "I07", "I08", "I09", "I10", "I11", "I12", "I13", "I14", "I15", "I16", "I17", "I18"]
#seat_row_j = ["J01", "J02", "J03", "J04", "J05", "J06", "J07", "J08", "J09", "J10", "J11", "J12", "J13", "J14", "J15", "J16", "J17", "J18"]
#seat_row_k = ["K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18"]
#seat_row_l = ["L01", "L02", "L03", "L04", "L05", "L06", "L07", "L08", "L09", "L10", "L11", "L12", "L13", "L14", "L15", "L16", "L17", "L18"]
#seat_row_m = ["M01", "M02", "M03", "M04", "M05", "M06", "M07", "M08", "M09", "M10", "M11", "M12", "M13", "M14", "M15", "M16", "M17", "M18"]
#seat_row_n = ["N01", "N02", "N03", "N04", "N05", "N06", "N07", "N08", "N09", "N10", "N11", "N12", "N13", "N14", "N15", "N16", "N17", "N18"]
#seat_row_o = ["O01", "O02", "O03", "O04", "005", "O06", "O07", "O08", "O09", "O10", "O11", "O12", "O13", "O14", "O15", "O16", "O17", "O18"]
#seat_row_p = ["P01", "P02", "P03", "P04", "P05", "P06", "P07", "P08", "P09", "P10", "P11", "P12", "P13", "P14", "P15", "P16", "P17", "P18"]
#seat_row_q = ["Q01", "Q02", "Q03", "Q04", "Q05", "Q06", "Q07", "Q08", "Q09", "Q10", "Q11", "Q12", "Q13", "Q14", "Q15", "Q16", "Q17", "Q18"]
#seat_row_r = ["R01", "R02", "R03", "R04", "R05", "R06", "R07", "R08", "R09", "R10", "R11", "R12", "R13", "R14", "R15", "R16", "R17", "R18"]

#seat_rows = seat_row_a + sea_rows_b + seat_rows_c + seat_rows_d + seat_rows_e + seat_rows_f + seat_rows_g + seat_rows_h + seat_rows_i + seat_rows_j + seat_rows_k + seat_rows_l + seat_rows_m + seat_rows_n + seat_rows_o + seat_rows_p + seat_rows_q + seat_rows_r
#seat_rows.each do |s|
#	Seat.create!([{
#		position: 
#		hall_id: 
#		user_id: 
#		}])

p "Created #{Show.count} fiilms"
p "Created #{Hall.count} halles"

