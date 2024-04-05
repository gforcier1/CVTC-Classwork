import sqlite3
import os

def create_connection():
    database_file = "virtual_pet.db"
    
    if not os.path.exists(database_file):
        with open(database_file, "w"):
            pass

    try:
        connection = sqlite3.connect(database_file)
        return connection
    except sqlite3.Error as e:
        print(e)

def create_table(connection):
    try:
        cursor = connection.cursor()
        cursor.execute('''CREATE TABLE IF NOT EXISTS pets
                          (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, species TEXT)''')
        connection.commit()
    except sqlite3.Error as e:
        print(e)

def insert_pet(connection, name, species):
    try:
        cursor = connection.cursor()
        cursor.execute("INSERT INTO pets (name, species) VALUES (?, ?)", (name, species))
        connection.commit()
        print(f"{name} the {species} has joined your family!")
    except sqlite3.Error as e:
        print(e)

def display_menu():
    print("\nVirtual Pet Menu:")
    print("1. Adopt a pet")
    print("2. Feed your pet")
    print("3. Give your pet pets")
    print("4. Exit")

def get_user_input():
    return input("Enter your choice: ")

def adopt_pet(connection):
    name = input("Enter your pet's name: ")
    species = input("Choose a species (dog or cat): ").lower()

    if species == "dog" or species == "cat":
        insert_pet(connection, name, species)
    else:
        print("Invalid species. Please choose either 'dog' or 'cat'.")

def feed_pet(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT name FROM pets")
    pets_list = cursor.fetchall()
    cursor.close()

    if not pets_list:
        print("No pets available to feed.")
        return

    print("Choose a pet to feed:")
    for index, pet in enumerate(pets_list, start=1):
        print(f"{index}. {pet[0]}")

    try:
        pet_index = int(input("Enter the number of the pet you want to feed:"))
        pet_name = pets_list[pet_index - 1][0]
        species = get_species_by_name(connection, pet_name)
        print(f"{pet_name} is happily eating. {'Woof!' if species == 'dog' else 'Meow!'}")
    except (ValueError, IndexError):
        print("Invalid input. Please enter a valid number.")

def give_pets(connection):
    cursor = connection.cursor()
    cursor.execute("SELECT name FROM pets")
    pets_list = cursor.fetchall()
    cursor.close()

    if not pets_list:
        print("No pets available to give pets.")
        return

    print("Choose a pet to give pets:")
    for index, pet in enumerate(pets_list, start=1):
        print(f"{index}. {pet[0]}")

    try:
        pet_index = int(input("Enter the number of the pet you want to give pets:"))
        pet_name = pets_list[pet_index - 1][0]
        species = get_species_by_name(connection, pet_name)
        print(f"You gave {pet_name} some love. {'Woof!' if species == 'dog' else 'Meow!'}")
    except (ValueError, IndexError):
        print("Invalid input. Please enter a valid number.")

def get_species_by_name(connection, pet_name):
    cursor = connection.cursor()
    cursor.execute("SELECT species FROM pets WHERE name=?", (pet_name,))
    species = cursor.fetchone()
    cursor.close()

    return species[0] if species else None

def main():
    connection = create_connection()
    create_table(connection)

    while True:
        display_menu()
        choice = get_user_input()

        if choice == "1":
            adopt_pet(connection)
        elif choice == "2":
            feed_pet(connection)
        elif choice == "3":
            give_pets(connection)
        elif choice == "4":
            print("Goodbye!")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 4.")

if __name__ == "__main__":
    main()


