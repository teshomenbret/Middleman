# Akeray
## Brief Description
This app is believed to be some kind of connector between rental service providers as shop centers and customers. So as anyone can guess, there are two types of users:
* Companies as service providers with administrative privileges
* Customers as served users with minimal privileges
For our admin users, it will be capable of calculating different types of sales transactions and will be able to generate a summary based on the initial prices of information that is set b8y themselves beforehand.    
For our second users aka customers, the system should provide with the appropriate information like the list of companies that have already partnered with our platform with a respective summary, and the list of items provided by each institution for renting.
The application is cross-platform and will be functional both in android and iOS. The application will only need an internet connection and a smartphone to operate and nothing else. 
The application will utilize a database of items that are to be entered by us or our business partner’s technical department.
Authorization Features
So we will authorize our first users aka companies to have full CRUD functionalities for their item lists. That means they can CREATE new items, UPDATE existing items in the list, DELETE items that are no longer available and last but not least they obviously can READ the list of items. However, one company can only manage their own list. We carefully authenticate this so that they will be no way near interfering with our companies. 
We have only given the other users, i.e. our customers full CRUD functionality only once when they create their accounts and/or when they potentially delete their accounts. But beyond that they have only read privileges to see the list of available companies providing the items they seek to be provided.
Authentication Features
The two users of this platform are required to register before using the application business features. So that they can login to the system independently and do their work as per their privileges in a hassle free manner. They can logout temporarily from the app and login again. Additionally, if either the company or the customers are not satisfied by our care they can delete their accounts permanently and their related data.
Goals
Providing rent service, and
Getting rent service
Business Features
Providing information regarding the type, price and such types of information of items provided by some company for our customers.


GitHub issues page
In this form - As a < type of user >, I want < some goal > so that < some reason >
As both a user and a company, I want to register and login to the app so that I can access full information of the company available in the app and can post my service, respectively.
As both a user and a company, I want to logout from the app so that I can stay offgrid temporarily or that I do not permit my information to be saved in someone's phone.
As both a user and a company, I want to delete my account from the app so that I am no longer a user of the app.
As a company, I want to post my rent service, so that I can get customers via the app.
As a user I want to add an item or a couple of items to my cart, so that I can know what service I am going to get and how much it will actually cost.
As a user I want to get a temporary ID and location to one of the company shops after renting a product online so that I can pay in cash by traveling physically there while my information is saved until then (in the cloud).
As a company, I want to look for a customer cart after receiving an ID from the customer itself so that I can process the transaction and accept payments.
As a company, I want to see a customer report, so that I can see the list of previous customers along with their associated information such as the debt balance, customers’ address and remaining days before returning the rented product.
As a company, I want to change the company profile, so that I can attract more customers.

## Contributors
1. Surafel Getahun Aragaw - UGR/5965/12
2. Bereket Asnake Tsegaye - UGR/9574/12
3. Teshome Nbret Yersaw - UGR/3281/12
4. Abdulkarim Getachew Mohammed - UGR/7992/12
