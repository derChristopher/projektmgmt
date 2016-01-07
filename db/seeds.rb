# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project1 = Project.create(name: 'Webshop',
                          description: 'Dies ist ein Webshop')
project2 = Project.create(name: 'Brücke',
                          description: 'Dies ist eine Brücke')

pbs1 = Pbstable.create(name: 'WebshowPBS',
                       project: project1)
pbs2 = Pbstable.create(name: 'BrückePBS',
                       project: project2)

node1 = Node.create(name: 'WebShop',
                    description: 'Dies ist ein Webshop',
                    level: 0,
                    duration: 200,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,7,25),
                    milestone: true,
                    pbstable: pbs1)
node2 = Node.create(name: 'Geschäftsplan und Architektur',
                    description: '',
                    level: 1,
                    duration: 30,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,2,6),
                    milestone: true,
                    pbstable: pbs1,
                    parent: node1)
node3 = Node.create(name: 'Geschäftsplan',
                    description: '',
                    level: 2,
                    duration: 29,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,2,5),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node2)
Node.create(name: 'Business Case',
                    description: '',
                    level: 3,
                    duration: 10,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,1,17),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node3)
Node.create(name: 'Projektplan',
                    description: '',
                    level: 3,
                    duration: 10,
                    startdate: Date.new(2016,1,17),
                    enddate: Date.new(2016,1,27),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node3)
Node.create(name: 'Lastenheft',
                    description: '',
                    level: 3,
                    duration: 29,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,2,5),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node3)
node7 = Node.create(name: 'Architektur',
                    description: '',
                    level: 2,
                    duration: 30,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,2,6),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node2)
Node.create(name: 'Anwendungs-Architektur',
                    description: '',
                    level: 3,
                    duration: 30,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,2,6),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node7)
Node.create(name: 'Technische Architektur',
                    description: '',
                    level: 3,
                    duration: 30,
                    startdate: Date.new(2016,1,7),
                    enddate: Date.new(2016,2,6),
                    milestone: false,
                    pbstable: pbs1,
                    parent: node7)
node10 = Node.create(name: 'Kunden- und Produktverwaltung',
                    description: '',
                    level: 1,
                    duration: 100,
                    startdate: Date.new(2016,2,7),
                    enddate: Date.new(2016,5,18),
                    milestone: true,
                    pbstable: pbs1,
                    parent: node1)
node11 = Node.create(name: 'Kundendatenbank',
                     description: '',
                     level: 2,
                     duration: 100,
                     startdate: Date.new(2016,2,7),
                     enddate: Date.new(2016,5,18),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node10)
Node.create(name: 'Kundenstammdaten',
                     description: '',
                     level: 3,
                     duration: 100,
                     startdate: Date.new(2016,2,7),
                     enddate: Date.new(2016,5,18),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node11)
Node.create(name: 'Kundenbewegungsdaten',
                     description: '',
                     level: 3,
                     duration: 100,
                     startdate: Date.new(2016,2,7),
                     enddate: Date.new(2016,5,18),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node11)
node14 = Node.create(name: 'Produktkatalog',
                     description: '',
                     level: 2,
                     duration: 100,
                     startdate: Date.new(2016,2,7),
                     enddate: Date.new(2016,5,18),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node10)
Node.create(name: 'Produktstammdaten',
                     description: '',
                     level: 3,
                     duration: 100,
                     startdate: Date.new(2016,2,7),
                     enddate: Date.new(2016,5,18),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node14)
Node.create(name: 'Produktpreisliste',
                     description: '',
                     level: 3,
                     duration: 100,
                     startdate: Date.new(2016,2,7),
                     enddate: Date.new(2016,5,18),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node14)
node17 = Node.create(name: 'Transaktionsverwaltung',
                     description: '',
                     level: 1,
                     duration: 67,
                     startdate: Date.new(2016,5,19),
                     enddate: Date.new(2016,7,25),
                     milestone: true,
                     pbstable: pbs1,
                     parent: node1)
node18 = Node.create(name: 'Auftragsverwaltung',
                     description: '',
                     level: 2,
                     duration: 67,
                     startdate: Date.new(2016,5,19),
                     enddate: Date.new(2016,7,25),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node17)
node19 = Node.create(name: 'Warenwirtschaftsverwaltung',
                     description: '',
                     level: 2,
                     duration: 67,
                     startdate: Date.new(2016,5,19),
                     enddate: Date.new(2016,7,25),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node17)
node20 = Node.create(name: 'Rechnungs- und Zahlungsverwwaltung',
                     description: '',
                     level: 2,
                     duration: 67,
                     startdate: Date.new(2016,5,19),
                     enddate: Date.new(2016,7,25),
                     milestone: false,
                     pbstable: pbs1,
                     parent: node17)


