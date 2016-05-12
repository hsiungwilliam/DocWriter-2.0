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
c2 = Category.create(title: "Belle & Sebastian")
s2 = Subcategory.create(title: "Dear Catastrophe Waitress", category_id: c2.id)
s4 = Subcategory.create(title: "Tigermilk", category_id: c2.id)
ss2 = Subsubcategory.create(title: "If She Wants Me", subcategory_id: s2.id)
Procedure.create(content: "If I could do one near perfect thing I'd be happy", subsubcategory_id: ss2.id)
c3 = Category.create(title: "Voxtrot")
s3 = Subcategory.create(title: "Mothers, Sisters, Daughters, and Wives", category_id: c3.id)
ss3 = Subsubcategory.create(title: "Soft & Warm", subcategory_id: s3.id)
Procedure.create(content: "Why can't things always just begin, because they always end in tears", subsubcategory_id: ss3.id)
# p1 = Procedure.create(content: "Maxillary and/or Mandibular impressions take with custom acrylic tray. All borders of tray are border molded with heavy body Genie and final wash in light body Genie. Next visit: Bite record.")
# p2 = Procedure.create(content: "Fun time with L")