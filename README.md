Lighthouse Labs week 3 assignmens

**Bookstore SQL Assignment (CR) requirements**

    Exercise 1
    Fetch ISBN of all book editions published by the publisher "Random House". You should have 3 results.
    
    Exercise 2
    Instead of just their ISBN number, fetch their Book Title as well. You should still have the same 3 
    results but with more information. But instead of just one column, we should have 2 columns in the result set.
    
    Exercise 3
    Also include their stock information (available stock and retail price for each book edition). You should 
    still have the same 3 results but with more information. But instead of just 2 columns, we should have 4 
    columns in the result set.
    
    Exercise 4
    Note how one of the of books has 0 stock. Modify the query to only return books that are in stock.
    
    Exercise 5
    Hardcover vs Paperback
    
    Editions has a column called "type". Include the print type but instead of just displaying "h" or "p" 
    (the values in the column) output the human readable types ("hardcover" and "paperback" accordingly)
    
    Hint: Use a CASE statement to manipulate your result set, as in this example.
    
    Exercise 6
    List all book titles along with their publication dates (column on the editions dates) That's 2 columns:
    "title" and "publication"
    
    Exercise 7
    What's the total inventory of books in this library (i.e. how many total copies are in stock)?
    
    Exercise 8
    What is the overall average cost and retail price for all books for sale? Return three columns "Average cost", 
    "Average Retail" and "Average Profit"
    
    Exercise 9
    Which book ID has the most pieces in stock?
    
    
    Exercise 10
    List author ID along with the full name and the number of books they have written. Output 3 columns: 
    "ID", "Full name" and "Number of Books"
    
    Exericse 11
    Order the result set above by number of books so that authors with most number of books appear atop the 
    list (descending order).
    
    Advanced, Bonus Exercises
    Exercise 12
    List books that have both paperback and hardcover editions. That means at least one 
    edition of the book in both formats.
    
**Stores & Employees (CR) requirements **

    Exercise 1: Create 3 stores
    Use Active Record's create class method multiple times to create 3 stores in the database:
    Burnaby (annual_revenue of 300000, carries men's and women's apparel)
    Richmond (annual_revenue of 1260000 carries women's apparel only)
    Gastown (annual_revenue of 190000 carries men's apparel only)
    Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores 
    in the database.
    
    Exercise 2: Update the first store
    Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
    Load the second store from the database and assign it to @store2.
    Update the first store (@store1) instance in the database. (Change its name or something.)

    Exercise 3: Delete the third store
    Load the third store (into @store3) as you did the other two before.
    Using Active Record's destroy method, delete the store from the database.
    Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)

    Exercise 4: Loading a subset of stores
    Borrowing and modifying the code from Exercise one, create 3 more stores:
    Surrey (annual_revenue of 224000, carries women's apparel only)
    Whistler (annual_revenue of 1900000 carries men's apparel only)
    Yaletown (annual_revenue of 430000 carries men's and women's apparel)
    Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel.
    Assign the results to a variable @mens_stores.
    Loop through each of these stores and output their name and annual revenue on each line.
    Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual 
    revenue.

    Exercise 5: Calculations
    Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
    On the next line, also output the average annual revenue for all stores.
    Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and 
    size (or count) Active Record methods.
    
    Exercise 6: One-to-many association
    We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure,
    you'll find that it has a store_id (integer) column. This is a column that identifies which store each employee 
    belongs to. It points to the id (integer) column of their store.
    
    Let's tell Active Record that these two tables are in fact related via the store_id column.
    
    Add the following code directly inside the Store model (class): has_many :employees
    Add the following code directly inside the Employee model (class): belongs_to :store
    Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
    Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).
    
    Exercise 7: Validations for both models
    Add validations to two models to enforce the following business rules:
    Employees must always have a first name present
    Employees must always have a last name present
    Employees have a hourly_rate that is a number (integer) between 40 and 200
    Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
    Stores must always have a name that is a minimum of 3 characters
    Stores have an annual_revenue that is a number (integer) that must be 0 or more
    BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - 
    don't use a Validator class)
    Much like with the contact app (except not in a loop), Ask the user for a store name (store it in a variable)
    Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, 
    and womens_apparel)
    Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to 
    save/create the record
    
** Students & Teachers - requirements** 
   
    1. Setup Students table 
    There is a Student model already. But the database does not yet have the students table. In fact you don't even 
    have a development database to work against yet.
    
    We need to create an empty database and then update the schema (structure of the database) to include a students 
    table. We will use migrations for this.
    
        Step 1 - Create DB
        Run this rake command to create the database file: rake db:create
        
        Step 2 - Create students table
        Modify the CreateStudents migration in db/migrate/20140319144238_create_students.rb and implement the change method. 
        Once you implement it, run rake db:migrate to run the migration against the database.
        
        Step 3 - Make sure the tests pass
        We wrote a test case that checks if you created the students table: spec/migrate_create_table_spec.rb.
    
    
    2. Command line    
    To debug/inspect the database, it would be nice to interactively just use ActiveRecord within something like pry.
    
    3. Import sample students
    Once the students table is built and the spec/migrate_create_table_spec.rb test passes, let's import the sample 
    student records from a CSV file (for convenience really):
    
    4. Add a Teacher Model   
    Students need teachers. So let's introduce teachers to the app.
    
    Create a Teacher model that extends ActiveRecord::Base. This model should be created in its own Ruby file and in 
    the right folder (app/models). Then you'll need to require it in app_config.rb so that it's available to the other
    files in the project.
    
    You'll also need to create (touch) a new migration file in db/migrate to create the teachers table.
    
    The teachers migration file name must start with a bunch of numbers that represent the exact timestamp of when you 
    created the migration. The students migration file is called 20140319144238_create_students.rb. This means the 
    migration was created on March 3rd, 2014 at 14:42:38. Precede the migration file you are about to create with a 
    timestamp for the current date and time.
    
    We want to store the following information about a teacher: name, email, address, and phone.
    
    5. Insert sample Teacher data
    Without resorting to using SQL or SQLite, write some Ruby code that uses ActiveRecord commands to create some test 
    data. Create 9 teachers, each with unique names and email addresses.
    
    While you're at it, please ensure that no 2 teachers can share the same email address using an ActiveRecord 
    validation.
    
    The student data is imported using a class we wrote called StudentsImporter in lib/students_importer.rb. 
    To create the 9 teachers, create your own TeachersImporter class in lib/teachers_importer.rb.
    
    With your new TeachersImporter, you'll need to require it in app_config.rb and also edit the Rakefile's 
    db:populate task to run it.
    
    Write a test to be sure creating a Teacher works and the email validation works.
    
    Bonus    
    Implement a CSV-based mechanism for loading the sample teachers much like how students.csv is a convenient way to 
    "seed" the students table with sample data. You can use much of the same code as StudentsImporter.
    
    6. Create a One-to-Many association between Teachers and Students
    At this point you should have students and teachers in the database.
    
    Let's say that we need each student to have a teacher, and each teacher to have many students. Does your Teacher 
    model need to change? How about your Student model? Do you need a migration?
    
    Make the necessary changes to your code to support this new constraint on the data.
    
    Bonus
    Write tests to ensure that your association is working correctly. For example, given a student, can you find a 
    teacher? Can you find all of her other students?
    
    7. Spec file for students
    There is a student_spec.rb file in this repo. Implement changes to the Student class to make the tests pass. 
    RSpec Tip: the be_valid method expects that calling .valid? on the ActiveRecord object will return true.
    
    Bonus
    Write a teacher_spec.rb file to validate your Teacher model's validations.
