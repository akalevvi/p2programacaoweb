# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

photographer = Photographer.new({name: 'Fernando Borges', display_name: "Fernando Borges", phone: '22 2888-1231', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
  state: 'RJ', email: 'fernando@mail.com', password: 'fernando', avatar: 'http://localhost:3000/uploads/perfil.jpg',
  bio: 'Casamentos, bodas e batizado', portfolio_link: 'www.flickr.com'})

client = Client.new({name: 'Gabriel Souza', phone: '22 2129-2198', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
  state: 'RJ', email: 'gabriel@mail.com', password: 'gabriel', avatar: 'http://localhost:3000/uploads/perfil.jpg'})

#photographer.photographer_reviews << PhotographerReview.new({comment: "De muita qualidade", rating: 4,client_id: client.id})

client.save
photographer.save

Photographer.create([{name: 'Yargo Lima', display_name: "Yargo Lima", phone: '22 2888-1231', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
  state: 'RJ', email: 'yargo@mail.com', password: 'fernando', avatar: 'http://localhost:3000/uploads/perfil.jpg',
  bio: 'Casamentos, bodas e batizado', portfolio_link: 'www.flickr.com'}])

    Photographer.create([{name: 'Fernando Borges', display_name: "Alvez Pessanha", phone: '22 2888-1231', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
      state: 'RJ', email: 'fernando@mail.com', password: 'fernando', avatar: 'http://localhost:3000/uploads/perfil.jpg',
      bio: 'Casamentos, bodas e batizado', portfolio_link: 'www.flickr.com'}])

      Photographer.create([{name: 'Fernando Borges', display_name: "Jose Padilha", phone: '22 2888-1231', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
        state: 'RJ', email: 'fernando@mail.com', password: 'fernando', avatar: 'http://localhost:3000/uploads/perfil.jpg',
        bio: 'Casamentos, bodas e batizado', portfolio_link: 'www.flickr.com'}])

        Photographer.create([{name: 'Fernando Borges', display_name: "Lucas Alves", phone: '22 2888-1231', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
          state: 'RJ', email: 'fernando@mail.com', password: 'fernando', avatar: 'http://localhost:3000/uploads/perfil.jpg',
          bio: 'Casamentos, bodas e batizado', portfolio_link: 'www.flickr.com'}])

          Photographer.create([{name: 'Fernando Borges', display_name: "Leandro Vicente", phone: '22 2888-1231', birthdate: '30-03-1990', city: 'Campos', country: 'Brasil',
            state: 'RJ', email: 'fernando@mail.com', password: 'fernando', avatar: 'http://localhost:3000/uploads/perfil.jpg',
            bio: 'Casamentos, bodas e batizado', portfolio_link: 'www.flickr.com'}])
