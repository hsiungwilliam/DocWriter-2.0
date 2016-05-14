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

			p21 = Procedure.create(content: "#  - O-etch-Prime and bond- sealant

I polish #  ,  ,  , and   with pumice and I acid etched enamel with phosphoric acid for 30 seconds.  I rinsed with water and I applied Prime and Bond and sealant to #  ,  . I light cure for 40 seconds.  I checked occlusion with articulating paper.", subsubcategory_id: ss16.id)

	s7 = Subcategory.create(title: "Space Maintenance", category_id: c2.id)

		ss17 = Subsubcategory.create(title: "Space Maintenance", subcategory_id: s7.id)

c3 = Category.create(title: "Restoration")
	
	s8 = Subcategory.create(title: "Amalgam", category_id: c3.id)

		ss18 = Subsubcategory.create(title: "One Surface", subcategory_id: s8.id)

			 p1 = Procedure.create(content: "# [ ] - O - CaOH - VAR - Amalgam

I prepared # [ ] with a # 557 burr and # 4 round burr. I placed CaOH liner and varnish and restored with amalgam.

[ ] (lidocaine 2% with 1 : 100,000 - epinephrine)

[ ] (carbocaine 3% without epinephrine)

[ ] (septocaine 4% with 1 :100,000 epinephrine)", subsubcategory_id: ss18.id)

		ss19 = Subsubcategory.create(title: "Two Surfaces", subcategory_id: s8.id)
		ss20 = Subsubcategory.create(title: "Three Surfaces", subcategory_id: s8.id)
		ss21 = Subsubcategory.create(title: "Four or more", subcategory_id: s8.id)
		ss22 = Subsubcategory.create(title: "Pin Restoration", subcategory_id: s8.id)

			p2 = Procedure.create(content: "# [ ] - MODF - CaOH liner - .017 pin @ MF aspect - varnish - amalgam

[ ] (lidocaine 2% with 1:100,000 epinephrine)

[ ] (carbocaine 3% without epinephrine)

[ ] (septocaine 4% with 1:100,000 epinephrine)", subsubcategory_id: ss22.id)

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

c6 = Category.create(title: "Removable Prostodontics")

	s14 = Subcategory.create(title: "Complete Denture", category_id: c6.id)

		ss40 = Subsubcategory.create(title: "Complete Upper", subcategory_id: s14.id)

			p3 = Procedure.create(content: "a) Initial exam and preliminary impression preformed. I did visual exam and found maxillary and/ or mandibular edentulous arches.  I had preliminary impressions taken of upper and lower arches with alginate and metal trays. Next visit secondary impression.", subsubcategory_id: ss40.id)
			p4 = Procedure.create(content: "b) Secondary impression was perform of maxillary and /or mandibular with custom acrylic tray.  I border molded tray with heavy body Genie and did light body final wash.  Next visit: Occlusal records with bite rims.", subsubcategory_id: ss40.id)
			p5 = Procedure.create(content: "c) Wax occlusal record taken with custom bite rims in centric occlusion. Vertical dimension of occlusion and mid-line recorded. Bite rims were fitted for the maxillary and /or mandibular arch .Next visit Try-in of wax model of denture  Shade:    .", subsubcategory_id: ss40.id)
			p6 = Procedure.create(content: "d) Try-in of wax model of denture. I seated Maxillary and/ or mandibular wax denture model and occlusion is very good. Patient agreed/ disagreed with shade and shape of denture teeth. Next visit delivery of completed denture.", subsubcategory_id: ss40.id)
			p7 = Procedure.create(content: "e) Delivery of complete Maxillary and/ or Mandibular denture.  I adjusted occlusion of #   with acrylic bur and articulating paper. I adjusted facial  and lingual flanges of maxillary and/or mandibular denture with acrylic bur and pressure indicating paste. I polished maxillary and /or mandibular denture with cloth wheel and pumice. Next visit: Post-op.", subsubcategory_id: ss40.id)
			p8 = Procedure.create(content: "f) Post-op.  I adjusted facial and /or lingual flange of area of #  -  .  I used acrylic bur and Pressure indicating paste to make adjustments. I adjusted occlusion of #  -   with 1A diamond bur and articulating paper.  I polished dentures with cloth wheel and pumice.", subsubcategory_id: ss40.id)

		ss41 = Subsubcategory.create(title: "Complete Lower", subcategory_id: s14.id)
		ss42 = Subsubcategory.create(title: "Immediate Upper", subcategory_id: s14.id)

			p13 = Procedure.create(content: "a) Initial Exam and Preliminary Impression. Patient has multiple carious lesions in different stages of severity and after recommending RCT, Crown and bridge and Implants. Patient has decided to have remaining teeth of Maxillary and/or Mandibular arch to be removed and replace with Immediate Maxillary and /or Mandibular denture.  Preliminary impressions taken of both arches with alginate and metal trays. Patient has the following teeth present: #  ,  ,  ,  .  Next visit: secondary impressions.", subsubcategory_id: ss42.id)
			p14 = Procedure.create(content: "b) Secondary impression. Maxillary and/or Mandibular impressions take with custom acrylic tray. All borders of tray are border molded with heavy body Genie and final wash in light body Genie. Next visit: Bite record.", subsubcategory_id: ss42.id)
			p15 = Procedure.create(content: "c) Occlusal records taken with custom wax rim in centric occlusion. Vertical dimension of occlusion and midline recorded. Shade:  .
Next visit: Try-in or showing of wax model.", subsubcategory_id: ss42.id)
			p16 = Procedure.create(content: "1) I seated wax model of Maxillary and/or mandibular denture to confirm occlusion, midline, and VDO. Shade and shape of teeth was approved/ not approved by patient. Next visit: Delivery of finished denture or showing of wax model of denture.", subsubcategory_id: ss42.id)
			p17 = Procedure.create(content: "2) I had lab removed teeth from stone model and wax model of maxillary and/or mandibular denture was shown to patient. Patient approved or not approved of shade and size of denture teeth. Next visit: delivery of Immediate denture", subsubcategory_id: ss42.id)
			p18 = Procedure.create(content: "e) Delivery of Maxillary or Mandibular Immediate denture. I extracted #  ,   ,  ,  .  I seated maxillary and/or mandibular denture.  I adjusted facial and/or lingual flanges in area of # ,  ,  and   .  I adjusted tissue bearing area of #  ,   ,   and   .  I used acrylic bur and pressure indicating paste to make adjustment.  I polished denture(s) with cloth wheel and pumice. I adjusted occlusion of #   ,   ,  and   with diamond bur and articulating paper.", subsubcategory_id: ss42.id)
			p19 = Procedure.create(content: "#  -Surgical  extraction- periosteal elevator,34 and 40 elevator,root tip elevator, 557 bur and #150 or 151  forceps. I placed gelform and 1 suture in area of #  .  
I placed wet gauze over extraction site and home care instructions given to help with wound care.Patient had moderate bleeding but tolerated procedure well. 
( ) Lidocaine with 1:100,000 epi
( ) Septocaine with 1:100,000 epi
Rx: Hydrocodone (7.5mg/325mg) x 16 tabs x 0 refills
      Amoxicillin (500mg) x 24tabs x 0 refills
Next visit: Post-op", subsubcategory_id: ss42.id)
			p20 = Procedure.create(content: "
f) Post-op. I adjusted facial and/ or lingual flange in area of #   and  .tissue bearing area of #  ,  , and   . I used PIP and acrylic bur. I adjusted occlusion of #    and   .  I used diamond bur and articulating paper.  I polished denture(s) with cloth wheel and pumice. Patient tells me he had moderate pain during 1st to 2nd day but now is doing much better. Next visit: Post- op", subsubcategory_id: ss42.id)
			
		ss43 = Subsubcategory.create(title: "Immediate Lower", subcategory_id: s14.id)

	s15 = Subcategory.create(title: "Partial Denture", category_id: c6.id)

		ss44 = Subsubcategory.create(title: "Upper Flipper (Acrylic)", subcategory_id: s15.id)

			p22 = Procedure.create(content: "a) Patient desires to replace missing teeth with partial denture. I gave other options to go with Fix bridges or Implants but to go with partial dentures.  I went over option with metal framework or all acrylic.  Patient wants to go with all acrylic due to finances. I had prel impressions take with Genie and plastic trays of both arches. Partial will be replacing the following teeth: #  ,  ,  ,  . I had wax bite taken in centric.  Shade:  . Next visit: Try-in", subsubcategory_id: ss44.id)
			p23 = Procedure.create(content: "b) 1) Lab could not use wax bite and wax bite rim was constructed.  I recorded centric occlusion with wax bite rims. Next visit: Try-in", subsubcategory_id: ss44.id)
			p24 = Procedure.create(content: "b) 2) Try-in of wax model of acrylic partial.  Occlusion is good and patient approves of shade and shape of denture teeth.  Next visit; Delivery of all acrylic partial", subsubcategory_id: ss44.id)
			p25 = Procedure.create(content: "c) Delivery of all acrylic partial.  Partial is replacing #  ,  , and   .  I adjusted occlusion of #  ,  ,  and  .  I adjusted lingual areas of #  ,  ,  and #    to help with insertion of partial.  I used acrylic bur to make adjustments and diamond bur with articulating paper to adjust occlusion. I polished partial with cloth wheel and pumice. Next visit: Post-op.", subsubcategory_id: ss44.id)
			p26 = Procedure.create(content: "d) I adjusted occlusion of #  ,  and    with diamond bur and articulating paper.  I adjusted tissue bearing area of #   with acrylic bur and PIP.", subsubcategory_id: ss44.id)

		ss45 = Subsubcategory.create(title: "Lower Flipper (Acrylic)", subcategory_id: s15.id)
		ss46 = Subsubcategory.create(title: "Upper Partial with Metal Framework", subcategory_id: s15.id)

			p27 = Procedure.create(content: "a) Patient wants to replace missing teeth with partial denture.  I gave other  options of fix crown and bridge or Implants but patient wants to go with partial denture.  I recommended to go with metal framework for long term usage.  I had preliminary impressions taken of both arches with alginates and metal trays.  Partial will be replacing #   - #  . Next visit: 2nd impression.", subsubcategory_id: ss46.id)
			p28 = Procedure.create(content: "b) Custom acrylic tray(s) were made for Maxillary and/ or mandibular arch.  I made the following preparations: #  -mesial/distal rest seat, #  - mesial/ distal guiding planes.  I made impression with custom tray and heavy body and light body Genie.  I had wax bite taken in centric. Shade:  .  Next visit: Try-in of metal framework.", subsubcategory_id: ss46.id)
			p29 = Procedure.create(content: "c)  1)  Lab made wax bite rim for occlusal record.  I seated maxillary and /or mandibular framework.  Framework fits fine. I recorded occlusion with wax bite rim.  NV: Try-in with denture teeth.", subsubcategory_id: ss46.id)
			p30 = Procedure.create(content: "c)  2) Try-in of metal framework.  I seated metal framework with denture teeth wax matrix  in maxillary and/or mandibular arch and fits fine. I check occlusion and patient is occluding properly.  Patient approves / does not approves of shading and shape of denture teeth.  NV:Try-in or Delivery of partial denture with framework.", subsubcategory_id: ss46.id)
			p31 = Procedure.create(content: "d)  Try-in of framework with denture teeth.  Patient approves of new teeth shade and shape. Occlusion is good.  I will send partial to lab for processing.
NV: Delivery of partial denture", subsubcategory_id: ss46.id)
			p32 = Procedure.create(content: "e)  Delivery of Partial denture with framework.  I seated processed partial denture and I adjusted occlusion of #  ,  ,  and   with diamond bur and articulating paper.  I adjusted facial and/ or lingual flanges in area of # ,  ,  and   with acrylic bur and PIP. I polished maxillary and/or mandibular partials with cloth wheel and pumice. NV: Post-op   Partial framework has the following: #", subsubcategory_id: ss46.id)
			p33 = Procedure.create(content: "f) Post-op.  I adjusted occlusion of #  ,  ,  ,  and  .  I adjusted flanges of #  ,  ,  and  . I used acrylic bur and PIP to make adjustments and diamond bur and articulating paper for occlusion. I polished partials with cloth wheel and pumice.", subsubcategory_id: ss46.id)


		ss47 = Subsubcategory.create(title: "Lower Partial with Metal Framework", subcategory_id: s15.id)		

	s16 = Subcategory.create(title: "Repair", category_id: c6.id)

		# ss48 = Subsubcategory.create(title: "Broken Denture Base", subcategory_id: s16.id)
			


		ss49 = Subsubcategory.create(title: "Repair", subcategory_id: s16.id)
			p34 = Procedure.create(content: "a)  # Denture tooth is missing and I will send to lab for repair.", subsubcategory_id: ss49.id)
			p35 = Procedure.create(content: "b) maxillary or mandibular denture has been fracture and needs to be repair by lab", subsubcategory_id: ss49.id)
			p35 = Procedure.create(content: "c)  Delivery of repaired denture. Next visit: Post -op", subsubcategory_id: ss49.id)

		# ss50 = Subsubcategory.create(title: "Broken Cast Partial", subcategory_id: s16.id)
		# ss51 = Subsubcategory.create(title: "Missing Teeth on Cast Partial", subcategory_id: s16.id)
		# ss52 = Subsubcategory.create(title: "Add Tooth to Partial", subcategory_id: s16.id)
		# ss53 = Subsubcategory.create(title: "Reline Complete Upper Denture (Chairside)", subcategory_id: s16.id)
		# ss54 = Subsubcategory.create(title: "Reline Complete Lower Denture (Chairside)", subcategory_id: s16.id)

	saa = Subcategory.create(title: "Reline", category_id: c6.id)

		ssaa = Subsubcategory.create(title: "Maxillary", subcategory_id: saa.id)

			p9 = Procedure.create(content: "a)  I relieved internal anatomy of maxillary denture with acrylic bur.  I border molded with heavy body Genie and did final wash with light body Genie. I will send denture to lab for hard reline processing. Next visit: Delivery of denture.", subsubcategory_id: ssaa.id)
			p10 = Procedure.create(content: "b)  Delivery of Maxillary denture reline.  I had denture seated in patient's mouth and I checked pressure spots with PIP. I adjusted tissue bearing area of #  - #  . I adjusted facial and/ or lingual flange in area of #  - .  I used acrylic bur to make adjustments.  I polished dentures with cloth wheel and pumice. Next visit: Post-op.", subsubcategory_id: ssaa.id)

		ssab = Subsubcategory.create(title: "Mandibular", subcategory_id: saa.id)

			p11 = Procedure.create(content: "a)  I relieved internal anatomy of mandibular denture with acrylic bur.  I border molded with heavy body Genie and did final wash with light body Genie. I will send denture to lab for hard reline processing. Next visit: Delivery of denture.", subsubcategory_id: ssab.id)
			p12 = Procedure.create(content: "b)  Delivery of mandibular denture reline.  I had denture seated in patient's mouth and I checked pressure spots with PIP. I adjusted tissue bearing area of #  - #  . I adjusted facial and/ or lingual flange in area of #  - .  I used acrylic bur to make adjustments.  I polished dentures with cloth wheel and pumice. Next visit: Post-op.", subsubcategory_id: ssab.id)


c7 = Category.create(title: "Fixed Prostodontics")

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

			p34 = Procedure.create(content: "#  -surgical extraction with #15 scalpel blade,557 bur, 34 and 40 elevator, periosteal elevator and #150/1 forceps,gelform  and one suture.  I made 1 cm incision distal to #   with #15 blade. I reflected facial flap with periosteal elevator.  I section #   with #557 bur.  I removed root tips with #150/1 forceps. I placed gelform into extraction site and one suture. Home care instruction given to help with wound care.  I placed wet gauze over extraction site.", subsubcategory_id: ss66.id)

		ss67 = Subsubcategory.create(title: "Surgical Bony Impaction", subcategory_id: s21.id)

c9 = Category.create(title: "Unclassified")

	s22 = Subcategory.create(title: "Palliative Treatment", category_id: c9.id)

		ss68 = Subsubcategory.create(title: "Palliative Treatment", subcategory_id: s22.id)
