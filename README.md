 💰 Online Expense Tracker
     A Java-based web application to track and manage your daily expenses efficiently.
    
 📌 Features
     - 🔐 User registration and login
     - ➕ Add daily expenses (amount, category, date, description)
     - 📅 View expenses by date range
     - 🔎 Search and filter expense 
     - 📝 Update/Delete existing records
     - 💾 Data persisted using Hibernate ORM and MySQL
     

  🛠 Tech Used
     - Java (JSP + Servlet)
     - Hibernate ORM
     - MySQL
     - HTML, CSS
     - Apache Tomcat


  📁 Project Structure
      Online-Expense-Tracker/
      ├── src/
      │   ├── com.expensetracker.model
      │   ├── com.expensetracker.dao
      │   ├── com.expensetracker.servlet
      │   └── hibernate.cfg.xml
      ├── WebContent/
      │   ├── jsp/
      │   ├── css/
      │   └── index.jsp
      ├── pom.xml (if using Maven)


 ⚙️ Database Tables

     * Users
          id, name, email, password
     * Expenses
          id, amount, category, description, date, user_id
          

 🧪 Future Enhancements

        * Expense charts/graphs
        * Monthly budget setting
        * Multi-user session handling
        * Email notifications

   🙋‍♂️ Author
       Ila Iesha
