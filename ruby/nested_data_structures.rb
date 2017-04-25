# Written by James W Moody

apartment_building = {
  floor_one: [
    unit_101: {
      occupants: [
        "Jason Jones",
        "Mary Jones",
        "Michael Jones"
      ]
    },
    unit_102: {
      occupants: [
        "Tom Miller"
      ]
    },
    unit_103: {
      occupants: [
        "Tom Brady",
        "Gisele Bundchen",
      ],
      pets: {
        dog: "Marvin",
        cat: "Ester"
      }
    }
  ],
  floor_two: [
    unit_201: {
      occupants: [
        "Carl Malone",
        "Carol Malone"
      ]
    },
    unit_202: {
    },
    unit_203: {
      occupants: [
        "Berry Gordy"
      ]
    }
  ],
  floor_three: [
    unit_301: {
      occupants: [
        "Tito Jackson",
        "Marlon Jackson",
        "Jermaine Jackson",
        "Michael Jackson",
        "Randy Jackson"
      ]
    },
    unit_302: {
      occupants: [
        "Rick Mahorn"
      ]
    },
    unit_303: {
      occupants: [
        "Pat Capone",
        "Jim Richards"
      ]
    }
  ]
}

# Print Occupants in Unit 203
p apartment_building[:floor_two][0][:unit_203]

# Print 4th Occupant in Unit 301
p apartment_building[:floor_three][0][:unit_301][:occupants][3]

# Who's the dog in 103?
p apartment_building[:floor_one][0][:unit_103][:pets][:dog]
