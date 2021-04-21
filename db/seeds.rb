# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bookmark.destroy_all
Category.destroy_all
Kind.destroy_all

Kind.create(
  [
    { name: "Agency" },
    { name: "Botique" }
  ]
)
Category.create(
  [
    { name: "Advertising", private: false },
    { name: "Marketing", private: false }
  ]
)
Category.create(
  [
    { name: "Branding", private: false, category_id: Category.find_by(name: "Advertising").id },
    { name: "Social Media", private: false, category_id: Category.find_by(name: "Marketing").id }
  ]
)
Bookmark.create(
  [
    { name: "Blind", url:"https://blind.com", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "Tridimage", url: "https://www.tridimage.com", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Branding").id },
    { name: "Pentagram", url:"https://www.pentagram.com", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "Jones Knowles Ritchie", url: "https://jkrglobal.com", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Marketing").id },
    { name: "Futurebrand", url: "https://www.futurebrand.com", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "Mazzima", url: "https://www.mazzima.com", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Branding").id },
    { name: "Ogilvi & Mather", url: "http://http://www.ogilvy.es", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "MullenLowe Lintas Group", url: "https://www.mullenlowelintas.in", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "Wieden + Kennedy", url: "https://www.wk.com", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Social Media").id },
    { name: "Droga5", url: "https://droga5.com", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Marketing").id },
    { name: "McCann WorldGroup", url: "https://www.mccann.es", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "Leo Burnett", url: "https://www.leoburnett.es", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Social Media").id },
    { name: "Grey Agency", url: "https://www.grey.com/es-la", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Branding").id },
    { name: "TBWA WorldWide", url: "http://www.tbwa.es/", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "BBDO Worldwide", url: "https://bbdo.com/", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "Wunderman Thompson", url: "https://www.wundermanthompson.com", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Marketing").id },
    { name: "Publicis Group", url: "https://www.publicisgroupe.com/fr/splash", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Advertising").id },
    { name: "DDB Worldwide", url: "https://www.ddb.com", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Branding").id },
    { name: "Saatchi & Saatchi", url: "https://www.saatchi.es", kind_id: Kind.find_by(name: "Agency").id, category_id: Category.find_by(name: "Branding").id },
    { name: "Havas Worldwide", url: "https://www.havas.com", kind_id: Kind.find_by(name: "Botique").id, category_id: Category.find_by(name: "Advertising").id }
    
  ]
)