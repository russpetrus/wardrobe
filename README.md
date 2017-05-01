# wardrobe

This application allows the user to organize the items in their wardrobe. 

It is a databse first application with a total of 5 tables:
1. Tops
2. Bottoms
3. Accessories
4. Shoes
5. Outfits (Outfits pulls information from the four other tables using foreign keys).
Due to time constraints, I was not able to create viewmodels for displaying the outfits, and so, becuase it was a stretch task for this assignment, I have removed the views for outfits from the user interface.

The other tables contain the same properties/columns: ID, Name, Color, Photo, Season, Type, Occasion (all of which are displayed in the details view).
The index view for each of the tabels/models contains the name, the image, and glyphicon links to edit, view, and delete. 

Other Requirements for this project:
1. Database first -- databse created in SQL before using in MVC
2. Updated bootstrap navbar -- I customized color, border, removed inverse class, and styled the "hamburger" button to appear without "inverse"
3. Thumbnail -- the boostrap class thumnail is used in my detail view, next to the name of the item and the options to edit or return to list.
4. Responsive -- using percentages, unites such as VH, and the boostrap "row" and "col-x-x" class, this web application is responsive and should look good any any device
5. 3 Additional Bootstrap Components -- I used the jumbotron, glyphicons, and columns/rows and nested columns and rows. 
