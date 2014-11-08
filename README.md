Takeaway Challenge
==================

Week 2 Challenge at Makers Academy

This challenge demonstrates use of OOD, OOP, Ruby, RSpec, Gems(Guard, Twilio)

Challenge
---------
- [ ] list of dishes with prices
- [ ] placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
- [ ] The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
- [ ] Use twilio-ruby gem to access the API
- [ ] Use a Gemfile to manage your gems
- [ ] Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
- [ ] However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

Domain Model
------------

Based on the above text, there are a number of implications that are not specified. Reading inbetween the lines, the brief I will work against is:

There is a **takeaway resturant** with a **menu**, that contains a *list* of **dishes** which have *prices*. **Customers** can *place* an **order** by specifying exactly what they want and the cost they are expecting to pay for them based on the **menu** information. Asssuming the **customer** places an **order** correctly, they will be *sent* a **text message**. The **text message** needs to *display* a certain amount of text confirming the order is on its way. The **text message** can *show* the **order details** if appropriate.

From the domain model, I have extracted 6 or possibly 7 classes. They are:

- TakeawayRestaurant
- Menu
- Dish
- Order
- Customer
- TextMessage
- OrderDetails/LineItem??


#### Class - Takeaway Restaurant

Responsiblities          | Collaborators
---------------          | -------------
Have Menu                | Customer
Send Text Message        | Menu
    

#### Class - Menu

Responsiblities          | Collaborators
---------------          | -------------
Show dishes              | Customer
                         | Dish


#### Class - Dish

Responsiblities          | Collaborators
---------------          | -------------
Show name and price      | Customer
                         | Menu


#### Class - Order

Responsiblities          | Collaborators
---------------          | -------------
List dishes              | Customer
List Customer name       | Takeaway
List total price         |


#### Class - Customer

Responsiblities          | Collaborators
---------------          | -------------
Place order              | Takeaway
Receive text message     | Order


#### Class - Text Message

Responsiblities          | Collaborators
---------------          | -------------
Send Message             | Takeaway
List order details       | Customer
                         | Order


#### Class - Order Details

Responsiblities          | Collaborators
---------------          | -------------
Unknown...               | Order
                         | 
                         | 

























