import mysql.connector

def create_alx_book_store_database():
    """
    Connects to the MySQL server and creates the 'alx_book_store' database.
    Handles existing database gracefully and prints success/error messages.
    """
    mydb = None  # Initialize mydb to None
    try:
        # Establish connection to MySQL server without specifying a database
        # Replace with your MySQL server credentials
        mydb = mysql.connector.connect(
            host="localhost",
            user="root", 
            password="" 
        )

        mycursor = mydb.cursor()

        # SQL statement to create the database if it doesn't exist
        # Using IF NOT EXISTS ensures the script doesn't fail if it already exists
        sql_create_db = "CREATE DATABASE IF NOT EXISTS alx_book_store"

        mycursor.execute(sql_create_db)

        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        # Handle connection or database creation errors
        print(f"Error: Failed to connect to or create database. Details: {err}")
    finally:
        # Ensure the connection is closed
        if 'mycursor' in locals() and mycursor is not None:
            mycursor.close()
        if mydb is not None:
            mydb.close()
        print("Database connection closed.")

if __name__ == "__main__":
    create_alx_book_store_database()
