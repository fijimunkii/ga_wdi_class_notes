Trainer
  - properties
    - name
    - email
    - password
    - password_confirmation
      - I want people to be able to login with a username and password
    (bcrypt)

  - validations
    - a user should also have email
      - email should be unique
    - password needs to be at least 6 charachters

  - has_many :pokemons

Pokemon

  - belongs_to :trainer

  - properties
    - name
    - species
    - health
      - starts at 80 and is capped at 100
    - energy
      - start at 80 and is also capped at 100

  - validations / things to test for

    - if the trainer dies (or is destroyed), the pokemon are destroyed as well
    - they must belong to a trainer
    - initial conditions
      - validate that they have a name, spiecies
      - when they are born
        - their health starts at 80
        - their energy also starts at 80


  - methods
    - recover
      - increases your health by 10
    - attack(other_pokemon)
      - your energy goes down by 10
      - the health of the other pokemon goes down by 10
