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
# c2 = Category.create(title: "Belle & Sebastian")
# s2 = Subcategory.create(title: "Dear Catastrophe Waitress", category_id: c2.id)
# s4 = Subcategory.create(title: "Tigermilk", category_id: c2.id)
# ss2 = Subsubcategory.create(title: "If She Wants Me", subcategory_id: s2.id)
# Procedure.create(content: "If I could do one near perfect thing I'd be happy", subsubcategory_id: ss2.id)
# c3 = Category.create(title: "Voxtrot")
# s3 = Subcategory.create(title: "Mothers, Sisters, Daughters, and Wives", category_id: c3.id)
# ss3 = Subsubcategory.create(title: "Soft & Warm", subcategory_id: s3.id)
# Procedure.create(content: "Why can't things always just begin, because they always end in tears", subsubcategory_id: ss3.id)
# p1 = Procedure.create(content: "Maxillary and/or Mandibular impressions take with custom acrylic tray. All borders of tray are border molded with heavy body Genie and final wash in light body Genie. Next visit: Bite record.")
# p2 = Procedure.create(content: "Fun time with L")
mateo = User.create(first_name: 'Mateo', last_name: 'Lazo', email: 'mateo@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'editor')
julian = User.create(first_name: 'Julian', last_name: 'Jones', email: 'julian@email.com', password: 'Julian1', password_confirmation: 'Julian1')
freida = User.create(first_name: 'Freida', last_name: 'Gray', email: 'freida@email.com', password: 'Freida1', password_confirmation: 'Freida1', role: 'admin')
dad = User.create(first_name: 'Edwin', last_name: 'Hsiung', email: 'edddspa@gmail.com', password: 'Amalgam14MOD', password_confirmation: 'Amalgam14MOD', role: 'admin')

emptyDoc = Note.create(technique: '', id_first: 'a', first_name: '', last_name: '')

c1 = Category.create(title: "Diagnostic")

	s1 = Subcategory.create(title: "Clinical", category_id: c1.id)

		 ss1 = Subsubcategory.create(title: "Initial Exam", subcategory_id: s1.id)
		 ss2 = Subsubcategory.create(title: "Periodic Exam", subcategory_id: s1.id)
		 ss3 = Subsubcategory.create(title: "Emergency Exam", subcategory_id: s1.id)

	s2 = Subcategory.create(title: "Radiograph", category_id: c1.id)

		ss4 = Subsubcategory.create(title: "FMX", subcategory_id: s2.id)
		ss5 = Subsubcategory.create(title: "PA", subcategory_id: s2.id)
		ss6 = Subsubcategory.create(title: "1 BW", subcategory_id: s2.id)
		ss7 = Subsubcategory.create(title: "2 BW", subcategory_id: s2.id)
		ss8 = Subsubcategory.create(title: "4 BW", subcategory_id: s2.id)

	s3 = Subcategory.create(title: "Test Examination", category_id: c1.id)

		ss9 = Subsubcategory.create(title: "Pulp Vitality Test", subcategory_id: s3.id)
		ss10 = Subsubcategory.create(title: "Diagnostic Cast", subcategory_id: s3.id)


c2 = Category.create(title: "Preventive")
	
	s4 = Subcategory.create(title: "Propylaxis", category_id: c2.id)

		ss11 = Subsubcategory.create(title: "Adult", subcategory_id: s4.id)
		ss12 = Subsubcategory.create(title: "Child", subcategory_id: s4.id)

	s5 = Subcategory.create(title: "Topical Fluoride", category_id: c2.id)

		ss13 = Subsubcategory.create(title: "Adult", subcategory_id: s5.id)
		ss14 = Subsubcategory.create(title: "Child", subcategory_id: s5.id)

	s6 = Subcategory.create(title: "Other Preventive", category_id: c2.id)

		ss15 = Subsubcategory.create(title: "Oral Hygiene Instruction", subcategory_id: s6.id)
		ss16 = Subsubcategory.create(title: "Sealant", subcategory_id: s6.id)

	s7 = Subcategory.create(title: "Space Maintenance", category_id: c2.id)

		ss17 = Subsubcategory.create(title: "Space Maintenance", subcategory_id: s7.id)

c3 = Category.create(title: "Restoration")
	
	s8 = Subcategory.create(title: "Amalgam", category_id: c3.id)

		ss18 = Subsubcategory.create(title: "One Surface", subcategory_id: s8.id)
		ss19 = Subsubcategory.create(title: "Two Surfaces", subcategory_id: s8.id)
		ss20 = Subsubcategory.create(title: "Three Surfaces", subcategory_id: s8.id)
		ss21 = Subsubcategory.create(title: "Four or more", subcategory_id: s8.id)
		ss22 = Subsubcategory.create(title: "Pin Restoration", subcategory_id: s8.id)

	s9 = Subcategory.create(title: "Composite", category_id: c3.id)

		ss23 = Subsubcategory.create(title: "One Surface", subcategory_id: s9.id)
		ss24 = Subsubcategory.create(title: "Two Surfaces", subcategory_id: s9.id)
		ss25 = Subsubcategory.create(title: "Three Surfaces", subcategory_id: s9.id)
		ss26 = Subsubcategory.create(title: "Four or more", subcategory_id: s9.id)
		ss27 = Subsubcategory.create(title: "Pin Restoration", subcategory_id: s9.id)

	s10 = Subcategory.create(title: "Crown", category_id: c3.id)

		ss28 = Subsubcategory.create(title: "Full porcelain crown", subcategory_id: s10.id)
		ss29 = Subsubcategory.create(title: "Porcelain fused to base metal", subcategory_id: s10.id)
		ss30 = Subsubcategory.create(title: "Post", subcategory_id: s10.id)
		ss31 = Subsubcategory.create(title: "Core", subcategory_id: s10.id)
		ss32 = Subsubcategory.create(title: "Full metal", subcategory_id: s10.id)

c4 = Category.create(title: "Endo")

	s11 = Subcategory.create(title: "Root Canal Therapy", category_id: c4.id)

		ss33 = Subsubcategory.create(title: "One Canal", subcategory_id: s11.id)
		ss34 = Subsubcategory.create(title: "Two Canals", subcategory_id: s11.id)
		ss35 = Subsubcategory.create(title: "Three Canals", subcategory_id: s11.id)
		ss36 = Subsubcategory.create(title: "Four Canals", subcategory_id: s11.id)

c5 = Category.create(title: "Perio")

	s12 = Subcategory.create(title: "Gingival Curettage", category_id: c5.id)

		ss37 = Subsubcategory.create(title: "Gingival Curettage", subcategory_id: s12.id)

	s13 = Subcategory.create(title: "RPS", category_id: c5.id)

		ss38 = Subsubcategory.create(title: "Per Quadrant", subcategory_id: s13.id)
		ss39 = Subsubcategory.create(title: "In the Presence of Gingival Inflamation", subcategory_id: s13.id)

c6 = Category.create(title: "Prosto")

	s14 = Subcategory.create(title: "Complete Denture", category_id: c6.id)

		ss40 = Subsubcategory.create(title: "Complete Upper", subcategory_id: s14.id)

			p = Procedure.create(content: "a)  Initial exam and preliminary impression preformed. I did visual exam and found maxillary and/ or mandibular edentulous arches.  I had preliminary impressions taken of upper and lower arches with alginate and metal trays. Next visit secondary impression.

b} Secondary impression was perform of maxillary and /or mandibular with custom acrylic tray.  I border molded tray with heavy body Genie and did light body final wash.  Next visit: Occlusal records with bite rims.

c) Wax occlusal record taken with custom bite rims in centric occlusion. Vertical dimension of occlusion and mid-line recorded. Bite rims were fitted for the maxillary and /or mandibular arch .Next visit Try-in of wax model of denture  Shade:    .

d) Try-in of wax model of denture. I seated Maxillary and/ or mandibular wax denture model and occlusion is very good. Patient agreed/ disagreed with shade and shape of denture teeth. Next visit delivery of completed denture.

e) Delivery of complete Maxillary and/ or Mandibular denture.  I adjusted occlusion of #   with acrylic bur and articulating paper. I adjusted facial  and lingual flanges of maxillary and/or mandibular denture with acrylic bur and pressure indicating paste. I polished maxillary and /or mandibular denture with cloth wheel and pumice. Next visit: Post-op.

f) Post-op.  I adjusted facial and /or lingual flange of area of #  -  .  I used acrylic bur and Pressure indicating paste to make adjustments. I adjusted occlusion of #  -   with 1A diamond bur and articulating paper.  I polished dentures with cloth wheel and pumice.", subsubcategory_id: ss40.id)

		ss41 = Subsubcategory.create(title: "Complete Lower", subcategory_id: s14.id)
		ss42 = Subsubcategory.create(title: "Immediate Upper", subcategory_id: s14.id)
		ss43 = Subsubcategory.create(title: "Immediate Lower", subcategory_id: s14.id)

	s15 = Subcategory.create(title: "Partial Denture", category_id: c6.id)

		ss44 = Subsubcategory.create(title: "Upper Flipper", subcategory_id: s15.id)
		ss45 = Subsubcategory.create(title: "Lower Flipper", subcategory_id: s15.id)
		ss46 = Subsubcategory.create(title: "Upper Partial with Cast Base", subcategory_id: s15.id)
		ss47 = Subsubcategory.create(title: "Lower Partial with Cast Base", subcategory_id: s15.id)		

	s16 = Subcategory.create(title: "Repair", category_id: c6.id)

		ss48 = Subsubcategory.create(title: "Broken Denture Base", subcategory_id: s16.id)
		ss49 = Subsubcategory.create(title: "Missing Denture Teeth", subcategory_id: s16.id)
		ss50 = Subsubcategory.create(title: "Broken Cast Partial", subcategory_id: s16.id)
		ss51 = Subsubcategory.create(title: "Missing Teeth on Cast Partial", subcategory_id: s16.id)
		ss52 = Subsubcategory.create(title: "Add Tooth to Partial", subcategory_id: s16.id)
		ss53 = Subsubcategory.create(title: "Reline Complete Upper Denture (Chairside)", subcategory_id: s16.id)
		ss54 = Subsubcategory.create(title: "Reline Complete Lower Denture (Chairside)", subcategory_id: s16.id)

c7 = Category.create(title: "Fixed Perio")

	s17 = Subcategory.create(title: "Pontic", category_id: c7.id)

		ss55 = Subsubcategory.create(title: "All Porcelain", subcategory_id: s17.id)
		ss56 = Subsubcategory.create(title: "Porcelain Fused to Metal", subcategory_id: s17.id)
		ss57 = Subsubcategory.create(title: "All Metal", subcategory_id: s17.id)

	s18 = Subcategory.create(title: "Bridge Retainer-Crowns", category_id: c7.id)

		ss58 = Subsubcategory.create(title: "All Porcelain", subcategory_id: s18.id)
		ss59 = Subsubcategory.create(title: "Porcelain Fused to Metal", subcategory_id: s18.id)
		ss60 = Subsubcategory.create(title: "All Metal", subcategory_id: s18.id)

	s19 = Subcategory.create(title: "Other Services", category_id: c7.id)

		ss61 = Subsubcategory.create(title: "Recement Bridge", subcategory_id: s19.id)
		ss62 = Subsubcategory.create(title: "Stress Breaker", subcategory_id: s19.id)
		ss63 = Subsubcategory.create(title: "Precision Attachment", subcategory_id: s19.id)

c8 = Category.create(title: "Oral Surgery")

	s20 = Subcategory.create(title: "Erupted Tooth", category_id: c8.id)

		ss64 = Subsubcategory.create(title: "Simple Extraction", subcategory_id: s20.id)
		ss65 = Subsubcategory.create(title: "Surgical Extraction", subcategory_id: s20.id)

	s21 = Subcategory.create(title: "Impacted Tooth", category_id: c8.id)

		ss66 = Subsubcategory.create(title: "Surgical Soft Tissue Impaction", subcategory_id: s21.id)
		ss67 = Subsubcategory.create(title: "Surgical Bony Impaction", subcategory_id: s21.id)

c9 = Category.create(title: "Unclassified")

	s22 = Subcategory.create(title: "Palliative Treatment", category_id: c9.id)

		ss68 = Subsubcategory.create(title: "Palliative Treatment", subcategory_id: s22.id)
