Takeaway Challenge
==================

Week 2 Challenge at Makers Academy

This challenge demonstrates use of TDD, OOD, OOP, Ruby, RSpec, Gems(Guard, Twilio)

Update 9 Nov 19:00:

The class OrderDetails was not required. So has been removed. Also, the responsibilities of takeaway were reduced significantly from early versions. 

Challenge
---------
- [x] list of dishes with prices
- [x] placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
- [x] The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
- [x] Use twilio-ruby gem to access the API
- [x] Use a Gemfile to manage your gems
- [x] Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
- [x] However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

Running the Program
-------------------

```sh
$ irb
$ require('./irbsetup')
```

Since the Twilio secure keys are private, that aspect of the will not work
outside of my laptop.

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
- ~~OrderDetails/LineItem??~~


#### Class - Takeaway Restaurant

Responsiblities          | Collaborators
---------------          | -------------
Have Menu                | Customer
Create text message      | Menu
                         | Message
                         | Order
    

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
Create Message           | Order

###Lessons Learned

- This challenge was important because it allowed me to learn how to integrate
  into an API. Fortunately Twilio's documentation is very good, so it was not
  a big struggle to get it setup. 
- While testing the app, it was important to prevent the app from sending text
  messages. This was a useful lesson in providing additional layers of
  abstraction, so that the interaction with Twilio was not a dependency of the
  app. 

