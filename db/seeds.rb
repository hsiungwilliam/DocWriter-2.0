# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# c1 = Category.create(title: "Planets in the solar system")
# SubCategory.create(title: "Jupiter")
# SubSubCategory.create(title: "space")
# Procedure.create(title: "love")
c2 = Category.create(title: "Voxtrot")
SubCategory.create(title: "Raised by Wolves")
SubSubCategory.create(title: "Start of Something")
Procedure.create(content: "If I die, clutching your photograph")
# p1 = Procedure.create(content: "Maxillary and/or Mandibular impressions take with custom acrylic tray. All borders of tray are border molded with heavy body Genie and final wash in light body Genie. Next visit: Bite record.")
# p2 = Procedure.create(content: "Fun time with L")