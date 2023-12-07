import 'package:flutter/material.dart';

class TrendingRecipeCard extends StatefulWidget {
  final String recipe;
  final String description;
  final String ?image; // Add an image parameter

  TrendingRecipeCard({
    required this.recipe,
    required this.description,
    required this.image,
  });

  @override
  _TrendingRecipeCardState createState() => _TrendingRecipeCardState();
}

class _TrendingRecipeCardState extends State<TrendingRecipeCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        // Your card UI for each trending recipe
        child: Column(
          children: [
            ListTile(
              title: Text(widget.recipe),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Yanone',),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Example data for trending recipes
List<TrendingRecipeCard> trendingRecipes = [
  TrendingRecipeCard(
  recipe: 'Classic Caffè Macchiato',
  description:
      'A Macchiato, which means "stained" or "spotted" in Italian, is a simple yet flavorful coffee drink. There are different variations of macchiatos, but I\'ll provide a recipe for a classic Caffè Macchiato:\n\n'
      'Ingredients:\n\n'
      'Freshly ground espresso coffee beans\n'
      'Hot water\n\n'
      'Equipment:\n\n'
      'Espresso machine\n'
      'Coffee grinder\n'
      'Espresso cup or small coffee cup\n\n'
      'Steps:\n\n'
      '1. Grind the Coffee:\nGrind your coffee beans to a fine consistency suitable for espresso.\n\n'
      '2. Preheat the Espresso Machine:\nTurn on your espresso machine and allow it to preheat.\n\n'
      '3. Pull a Shot of Espresso:\nUse the espresso machine to pull a shot of espresso. Aim for a single or double shot, depending on your preference.\n\n'
      '4. Pour the Espresso:\nPour the freshly brewed espresso into an espresso cup.\n\n'
      '5. Add a "Stain" of Milk (Optional):\nA classic Caffè Macchiato is simply an espresso "stained" with a small amount of milk. You can use a teaspoon to add a dollop of frothed milk or steamed milk to the top of the espresso. This small amount of milk enhances the flavor without turning the drink into a full-fledged latte.\n\n'
      '6. Serve and Enjoy:\nYour Caffè Macchiato is now ready to be enjoyed! The contrast of the rich espresso with a hint of milk creates a delightful and balanced flavor.\n\n'
      'Remember that a Caffè Macchiato is a short and strong coffee with just a touch of milk. Adjust the milk-to-espresso ratio based on your preference for a slightly creamier or stronger flavor. Enjoy your delicious Macchiato!',
       image: 'images/caffe_macchiato.jpg', // Replace with the actual image path
),

 TrendingRecipeCard(
  recipe: 'Classic Black Coffee',
  description:
      'Making black coffee is quite straightforward. Here\'s a simple recipe for a classic black coffee:\n\n'
      'Ingredients:\n\n'
      'Freshly ground coffee beans\n'
      'Hot water\n\n'
      'Equipment:\n\n'
      'Coffee maker or any brewing method of your choice (drip, pour-over, French press, etc.)\n'
      'Coffee grinder\n'
      'Coffee mug\n\n'
      'Steps:\n\n'
      '1. Grind the Coffee:\nGrind your coffee beans to a medium-coarse consistency. Use about 1 to 2 tablespoons of coffee grounds per 6 ounces of water, but you can adjust this to suit your taste preferences.\n\n'
      '2. Heat the Water:\nBring water to a near-boil. The optimal temperature for brewing coffee is around 195-205°F (90-96°C).\n\n'
      '3. Preheat Your Mug:\nTo keep your black coffee hot, preheat your mug by rinsing it with hot water.\n\n'
      '4. Brew the Coffee:\nUse your preferred brewing method to make coffee. If you\'re using a drip coffee maker, pour-over, or French press, follow the specific instructions for that method.\n\n'
      '5. Pour and Enjoy:\nOnce the coffee is brewed, pour it into your preheated mug.\n\n'
      '6. Optional Additions (if desired):\nBlack coffee is typically enjoyed as is, but you can add sugar, sweeteners, or a splash of milk or cream if you prefer.\n\n'
      '7. Stir and Sip:\nGive your black coffee a gentle stir to ensure that any additions are well-blended. Now, enjoy your classic black coffee!\n\n'
      'Remember that the key to a great cup of black coffee is using fresh, quality coffee beans and adjusting the coffee-to-water ratio based on your taste preferences. Feel free to experiment until you find the perfect strength for your black coffee.',
  image: 'images/black_coffee.jpg', // Replace with the actual image path
),

  TrendingRecipeCard(
  recipe: 'Classic Cappuccino',
  description:
      'Ingredients:\n\n'
      'Freshly ground espresso coffee beans\n'
      'Whole milk\n\n'
      'Equipment:\n\n'
      'Espresso machine\n'
      'Coffee grinder\n'
      'Steam wand (found on most espresso machines)\n'
      'Coffee mug\n\n'
      'Steps:\n\n'
      '1. Grind the Coffee:\nGrind your coffee beans to a fine consistency, suitable for espresso.\n\n'
      '2. Preheat the Espresso Machine:\nTurn on your espresso machine and allow it to preheat.\n\n'
      '3. Pull a Shot of Espresso:\nUse the espresso machine to pull a shot of espresso into your coffee mug. Aim for a standard single or double shot, depending on your preference.\n\n'
      '4. Froth the Milk:\nPour enough whole milk into a stainless steel pitcher for one cappuccino. The amount of milk will depend on the size of your cappuccino. The rule of thumb is to use equal parts espresso, steamed milk, and foam for a classic cappuccino.\n'
      'Position the steam wand just below the surface of the milk and turn on the steam. Froth the milk by moving the steam wand in a circular motion until the milk doubles in volume and has a creamy texture.\n\n'
      '5. Tap and Swirl:\nTap the milk pitcher on a flat surface to remove any large bubbles. Swirl the milk to incorporate the foam and create a smooth microfoam.\n\n'
      '6. Pour the Milk:\nPour the steamed milk over the espresso in your mug, holding back the foam with a spoon to control the pour.\n\n'
      '7. Add the Foam:\nSpoon the remaining foam on top of the cappuccino.\n\n'
      '8. Optional Garnish:\nOptionally, you can sprinkle a little cocoa powder or cinnamon on top of the foam for a decorative touch.\n\n'
      '9. Serve and Enjoy:\nYour cappuccino is now ready to be enjoyed! Sip and savor the rich combination of espresso, steamed milk, and foam.\n\n'
      'Adjust the ratio of espresso to milk to suit your taste preferences. Some people prefer a drier foam, while others like a creamier texture. Experiment to find the perfect balance for your ideal cappuccino.',
  image: 'images/cappuccino_recipe.jpg', // Replace with the actual image path
),
  TrendingRecipeCard(
  recipe: 'Hot Americano',
  description:
      'Hot Americano is a simple and classic coffee drink. Here are the ingredients and steps to make a Hot Americano:\n\nIngredients:\n\nFreshly ground coffee beans\nHot water\n\nEquipment:\n\nCoffee maker or espresso machine\nCoffee mug\n\nSteps:\n\n1. Grind the Coffee:\nStart by grinding your coffee beans to a medium-coarse consistency. You\'ll need about 1 to 2 tablespoons of coffee grounds for a single cup.\n\n2. Preheat Your Mug:\nTo ensure your Americano stays hot, preheat your coffee mug by rinsing it with hot water.\n\n3. Brew the Coffee:\nBrew a strong cup of coffee using your preferred method. You can use a drip coffee maker, pour-over, or an espresso machine.\n\n4. Extract the Espresso:\nIf you\'re using an espresso machine, extract a shot of espresso. An Americano is essentially diluted espresso, so a single or double shot will work.\n\n5. Combine Coffee and Espresso:\nPour the brewed coffee or espresso into your preheated mug.\n\n6. Adjust Strength (Optional):\nIf the coffee is too strong for your taste, you can add hot water to dilute it. Adjust the strength by adding water until you reach your desired flavor.\n\n7. Optional Additions:\nCustomize your Americano by adding sugar, sweeteners, or milk if desired. Some people prefer it black, while others enjoy it with a splash of cream.\n\n8. Stir and Enjoy:\nGive your Americano a gentle stir to ensure that the flavors are well-blended. Now, sit back, relax, and savor your delicious Hot Americano!',
  image: 'images/americano.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Caramel Vanilla Coffee',
  description:
      'It seems like you\'re interested in a Caramel Vanilla flavored coffee. Here\'s a simple recipe for a Caramel Vanilla Coffee:\n\n'
      'Ingredients:\n\n'
      'Freshly ground coffee beans\n'
      'Hot water\n'
      'Vanilla syrup\n'
      'Caramel syrup\n'
      'Optional: Milk or cream\n\n'
      'Equipment:\n\n'
      'Coffee maker or any brewing method of your choice\n'
      'Coffee grinder\n'
      'Coffee mug\n\n'
      'Steps:\n\n'
      '1. Grind the Coffee:\nGrind your coffee beans to a medium-coarse consistency. Use about 1 to 2 tablespoons of coffee grounds per 6 ounces of water, but adjust according to your taste.\n\n'
      '2. Brew the Coffee:\nUse your preferred brewing method to make coffee. This could be a drip coffee maker, pour-over, French press, or any other method you like.\n\n'
      '3. Add Vanilla Syrup:\nOnce the coffee is brewed, add vanilla syrup to your mug. Start with about 1-2 tablespoons, adjusting to your taste preference.\n\n'
      '4. Add Caramel Syrup:\nAdd caramel syrup to the coffee as well. Again, start with 1-2 tablespoons and adjust according to your sweetness preference.\n\n'
      '5. Optional: Add Milk or Cream (if desired):\nIf you like your coffee creamier, you can add a splash of milk or cream. Adjust the quantity based on your preference for creaminess.\n\n'
      '6. Stir Well:\nStir the coffee thoroughly to ensure that the syrups are well-blended.\n\n'
      '7. Optional: Top with Whipped Cream or Caramel Drizzle:\nFor an extra indulgence, you can top your caramel vanilla coffee with whipped cream or a drizzle of caramel.\n\n'
      '8. Serve and Enjoy:\nYour Caramel Vanilla Coffee is now ready to be enjoyed! Sip and savor the delightful combination of caramel, vanilla, and coffee.\n\n'
      'Feel free to customize the sweetness and creaminess to suit your taste preferences. Enjoy your delicious Caramel Vanilla Coffee!',
  image: 'images/caramel_vanilla_coffee.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Hot Cafe Mocha',
  description:
      'Certainly! Here\'s a recipe for a delicious Hot Cafe Mocha:\n\n'
      'Ingredients:\n\n'
      'Freshly ground espresso coffee beans\n'
      'Hot water\n'
      'Cocoa powder or chocolate syrup\n'
      'Steamed milk\n'
      'Whipped cream (optional)\n'
      'Chocolate shavings or cocoa powder for garnish (optional)\n\n'
      'Equipment:\n\n'
      'Espresso machine\n'
      'Coffee grinder\n'
      'Milk steamer or frother\n'
      'Coffee mug\n\n'
      'Steps:\n\n'
      '1. Grind the Coffee:\nGrind your coffee beans to a fine consistency suitable for espresso.\n\n'
      '2. Preheat the Espresso Machine:\nTurn on your espresso machine and allow it to preheat.\n\n'
      '3. Pull a Shot of Espresso:\nUse the espresso machine to pull a shot of espresso. For a mocha, you may want a double shot for a richer flavor.\n\n'
      '4. Prepare the Cocoa Mix:\nIn your coffee mug, mix 1 to 2 tablespoons of cocoa powder or chocolate syrup with the freshly brewed espresso. Adjust the amount based on your desired level of chocolate flavor and sweetness.\n\n'
      '5. Steam the Milk:\nSteam or froth the milk using a milk steamer or frother until it reaches a creamy and velvety texture.\n\n'
      '6. Pour the Milk:\nPour the steamed milk into the mug with the cocoa and espresso mixture.\n\n'
      '7. Stir Well:\nStir the contents thoroughly to combine the chocolate and espresso with the steamed milk.\n\n'
      '8. Optional: Top with Whipped Cream:\nFor an extra indulgent touch, top your mocha with a dollop of whipped cream.\n\n'
      '9. Optional: Garnish:\nIf desired, garnish your mocha with chocolate shavings or a sprinkle of cocoa powder.\n\n'
      '10. Serve and Enjoy:\nYour Hot Cafe Mocha is now ready to be enjoyed! Sip and savor the rich and comforting blend of espresso and chocolate with the velvety texture of steamed milk.\n\n'
      'Feel free to adjust the chocolate and sweetness levels according to your taste preferences. Enjoy your delicious Hot Cafe Mocha!',
  image: 'images/cafe_mocha.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Hot Chocolate',
  description:
      'Certainly! Here\'s a simple recipe for a classic Hot Chocolate:\n\n'
      'Ingredients:\n\n'
      '2 cups of milk (whole milk or your preferred milk substitute)\n'
      '2 tablespoons of unsweetened cocoa powder\n'
      '2 to 3 tablespoons of granulated sugar (adjust to taste)\n'
      '1/4 teaspoon of vanilla extract\n'
      'A pinch of salt\n'
      'Optional toppings: whipped cream, chocolate shavings, or marshmallows\n\n'
      'Equipment:\n\n'
      'Saucepan\n'
      'Whisk\n'
      'Mugs\n\n'
      'Steps:\n\n'
      '1. Mix Dry Ingredients:\nIn a small bowl, whisk together the cocoa powder, sugar, and a pinch of salt until well combined. This helps prevent lumps in your hot chocolate.\n\n'
      '2. Heat Milk:\nIn a saucepan, heat the milk over medium heat. Heat until it\'s hot but not boiling, stirring occasionally to prevent a skin from forming.\n\n'
      '3. Add Cocoa Mixture:\nOnce the milk is hot, add the dry cocoa mixture to the saucepan. Whisk continuously to ensure the cocoa and sugar dissolve into the milk.\n\n'
      '4. Add Vanilla Extract:\nStir in the vanilla extract. This adds a delightful aroma and enhances the flavor of your hot chocolate.\n\n'
      '5. Continue Heating:\nKeep stirring and heating the mixture until it\'s hot but not boiling. Make sure the cocoa and sugar are completely dissolved.\n\n'
      '6. Taste and Adjust:\nTaste the hot chocolate and adjust the sweetness if needed by adding more sugar, if desired.\n\n'
      '7. Serve:\nPour the hot chocolate into mugs.\n\n'
      '8. Optional Toppings:\nTop your hot chocolate with whipped cream, chocolate shavings, or marshmallows if you like.\n\n'
      '9. Enjoy:\nYour classic Hot Chocolate is ready! Sip and enjoy the rich and comforting flavor.\n\n'
      'Feel free to customize your hot chocolate by experimenting with different types of chocolate, adding a dash of cinnamon, or even incorporating a splash of your favorite flavored syrup. Enjoy your cozy drink!',
  image: 'images/hot_chocolate.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Hot Caramel Latte',
  description:
      'Certainly! Here\'s a recipe for a delightful Hot Caramel Latte:\n\n'
      'Ingredients:\n\n'
      '1 to 2 shots of espresso (or 1/2 to 1 cup of strong brewed coffee)\n'
      '1 cup of steamed milk\n'
      '1 to 2 tablespoons of caramel syrup\n'
      'Whipped cream (optional)\n'
      'Caramel drizzle for garnish (optional)\n\n'
      'Equipment:\n\n'
      'Espresso machine or coffee maker\n'
      'Milk steamer or frother\n'
      'Coffee mug\n\n'
      'Steps:\n\n'
      '1. Brew Espresso or Coffee:\nIf you have an espresso machine, pull 1 to 2 shots of espresso. If you don\'t have an espresso machine, you can make a strong cup of coffee using your preferred brewing method.\n\n'
      '2. Steam Milk:\nHeat and steam 1 cup of milk using a milk steamer or frother until it becomes creamy and has a velvety texture.\n\n'
      '3. Add Caramel Syrup:\nIn your coffee mug, add 1 to 2 tablespoons of caramel syrup. Adjust the amount based on your desired level of sweetness.\n\n'
      '4. Pour Espresso or Coffee:\nPour the freshly brewed espresso or strong coffee into the mug with the caramel syrup.\n\n'
      '5. Mix Well:\nStir the caramel syrup and coffee to ensure it\'s well combined.\n\n'
      '6. Add Steamed Milk:\nPour the steamed milk over the caramel and coffee mixture.\n\n'
      '7. Optional: Top with Whipped Cream:\nFor an extra indulgent touch, top your caramel latte with whipped cream.\n\n'
      '8. Optional: Garnish with Caramel Drizzle:\nDrizzle a little caramel syrup on top of the whipped cream for a decorative finish.\n\n'
      '9. Serve and Enjoy:\nYour Hot Caramel Latte is now ready to be enjoyed! Sip and savor the rich combination of caramel, espresso or coffee, and velvety steamed milk.\n\n'
      'Feel free to customize the sweetness and creaminess according to your taste preferences. Enjoy your delicious Hot Caramel Latte!',
  image: 'images/caramel_latte.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Iced Cappuccino',
  description:
      'Iced Cappuccino is a refreshing coffee drink, perfect for warmer weather. Here\'s a simple recipe for making Iced Cappuccino:\n\n'
      'Ingredients:\n\n'
      'Freshly ground espresso coffee beans\n'
      'Ice cubes\n'
      'Cold milk\n'
      'Sugar (optional)\n'
      'Ice cream or whipped cream for topping (optional)\n\n'
      'Equipment:\n\n'
      'Espresso machine\n'
      'Coffee grinder\n'
      'Ice cube tray\n'
      'Blender or frother\n'
      'Tall glass\n\n'
      'Steps:\n\n'
      '1. Brew Espresso:\nUse the espresso machine to brew a double shot of espresso. If you don\'t have an espresso machine, you can make a strong cup of coffee using your preferred method.\n\n'
      '2. Let Espresso Cool:\nAllow the espresso to cool to room temperature or refrigerate it for a quicker cooling process. You can also pour it directly over ice if you prefer a stronger flavor.\n\n'
      '3. Prepare Ice Cubes:\nFill an ice cube tray with water and freeze it to make ice cubes.\n\n'
      '4. Fill Glass with Ice Cubes:\nPlace a generous amount of ice cubes in a tall glass.\n\n'
      '5. Pour Espresso Over Ice:\nPour the cooled espresso over the ice in the glass.\n\n'
      '6. Foam the Cold Milk:\nFroth or shake cold milk until it forms a thick foam. You can use a frother, blender, or even a tightly sealed jar to shake the milk.\n\n'
      '7. Add Frothed Milk:\nGently pour the frothed milk over the iced espresso. The goal is to have a layer of foam on top, just like a traditional cappuccino.\n\n'
      '8. Optional: Sweeten to Taste:\nIf desired, add sugar to sweeten the iced cappuccino. Stir well to dissolve the sugar.\n\n'
      '9. Optional Toppings:\nIf you like, top your Iced Cappuccino with a scoop of ice cream or a dollop of whipped cream for an extra indulgent treat.\n\n'
      '10. Stir and Enjoy:\nStir the ingredients together and enjoy your refreshing Iced Cappuccino!\n\n'
      'Feel free to adjust the coffee-to-milk ratio and sweetness according to your taste preferences. It\'s a customizable drink, so make it just the way you like it. Enjoy your Iced Cappuccino!',
  image: 'images/iced_cappuccino.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Iced Chocolate',
  description:
      'Certainly! Here\'s a simple recipe for making a delicious Iced Chocolate:\n\n'
      'Ingredients:\n\n'
      '2 tablespoons of unsweetened cocoa powder or chocolate syrup\n'
      '2 tablespoons of sugar (adjust to taste)\n'
      '1 cup of cold milk (dairy or a non-dairy alternative)\n'
      'Ice cubes\n'
      'Whipped cream (optional)\n'
      'Chocolate shavings or cocoa powder for garnish (optional)\n\n'
      'Equipment:\n\n'
      'Blender or shaker\n'
      'Tall glass\n\n'
      'Steps:\n\n'
      '1. Prepare Chocolate Base:\nIn a blender or shaker, combine the unsweetened cocoa powder or chocolate syrup with sugar. Adjust the sugar according to your desired sweetness level.\n\n'
      '2. Add Cold Milk:\nPour the cold milk into the blender or shaker with the chocolate base.\n\n'
      '3. Blend or Shake:\nIf using a blender, blend the mixture until it becomes smooth and frothy. If using a shaker, shake vigorously until well combined.\n\n'
      '4. Fill Glass with Ice:\nFill a tall glass with ice cubes.\n\n'
      '5. Pour Chocolate Mixture:\nPour the blended or shaken chocolate mixture over the ice in the glass.\n\n'
      '6. Optional: Top with Whipped Cream:\nFor added indulgence, top your iced chocolate with a generous dollop of whipped cream.\n\n'
      '7. Optional: Garnish:\nSprinkle chocolate shavings or a dusting of cocoa powder on top for a decorative finish.\n\n'
      '8. Stir (Optional):\nIf you like, you can give your iced chocolate a gentle stir to ensure that the chocolate and milk are well-mixed.\n\n'
      '9. Serve and Enjoy:\nYour Iced Chocolate is now ready to be enjoyed! Refreshing and chocolatey, it\'s a perfect treat for warmer days.\n\n'
      'Feel free to customize the recipe by adding a splash of vanilla extract, cinnamon, or a drizzle of chocolate syrup for extra flavor. Adjust the sweetness and thickness to suit your taste preferences. Enjoy your delightful Iced Chocolate!',
  image: 'images/iced_chocolate.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Iced Café Mocha',
  description:
      'Certainly! Here\'s a simple recipe for making a refreshing Iced Café Mocha:\n\n'
      'Ingredients:\n\n'
      '2 shots of freshly brewed espresso (or 1/2 to 1 cup of strong brewed coffee)\n'
      '1 cup of cold milk (dairy or a non-dairy alternative)\n'
      '2 tablespoons of cocoa powder or chocolate syrup\n'
      '2 tablespoons of sugar (adjust to taste)\n'
      'Ice cubes\n'
      'Whipped cream (optional)\n'
      'Chocolate shavings or cocoa powder for garnish (optional)\n\n'
      'Equipment:\n\n'
      'Espresso machine or coffee maker\n'
      'Blender or shaker\n'
      'Tall glass\n\n'
      'Steps:\n\n'
      '1. Brew Espresso or Coffee:\nBrew 2 shots of espresso using an espresso machine. If you don\'t have an espresso machine, you can make a strong cup of coffee using your preferred method.\n\n'
      '2. Prepare Chocolate Base:\nIn a blender or shaker, combine cocoa powder or chocolate syrup with sugar. Adjust the sugar according to your desired sweetness level.\n\n'
      '3. Add Cold Milk:\nPour the cold milk into the blender or shaker with the chocolate base.\n\n'
      '4. Blend or Shake:\nIf using a blender, blend the mixture until it becomes smooth and frothy. If using a shaker, shake vigorously until well combined.\n\n'
      '5. Fill Glass with Ice:\nFill a tall glass with ice cubes.\n\n'
      '6. Pour Espresso Over Ice:\nPour the freshly brewed espresso or coffee over the ice in the glass.\n\n'
      '7. Pour Chocolate Mixture:\nPour the blended or shaken chocolate mixture over the iced espresso or coffee.\n\n'
      '8. Optional: Top with Whipped Cream:\nFor added indulgence, top your Iced Café Mocha with a dollop of whipped cream.\n\n'
      '9. Optional: Garnish:\nSprinkle chocolate shavings or a dusting of cocoa powder on top for a decorative finish.\n\n'
      '10. Stir (Optional):\nIf you like, you can give your Iced Café Mocha a gentle stir to ensure that the chocolate and coffee are well-mixed.\n\n'
      '11. Serve and Enjoy:\nYour Iced Café Mocha is now ready to be enjoyed! Refreshing and chocolatey, it\'s a delightful treat for any day.\n\n'
      'Feel free to customize the recipe by adding a splash of vanilla extract or adjusting the sweetness according to your taste preferences. Enjoy your Iced Café Mocha!',
  image: 'images/iced_cafe_mocha.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Ham and Cheese Omelette',
  description:
      'Here\'s a delicious recipe for a Ham and Cheese Omelette:\n\n'
      'Ingredients:\n\n'
      '- 3 large eggs\n'
      '- Salt and pepper to taste\n'
      '- 1 tablespoon butter\n'
      '- 1/4 cup diced ham\n'
      '- 1/4 cup shredded cheese (cheddar, mozzarella, or your choice)\n'
      '- Optional toppings: diced tomatoes, onions, bell peppers, or herbs\n\n'
      'Steps:\n\n'
      '1. Crack the Eggs:\nIn a bowl, crack the eggs and beat them until well combined. Add salt and pepper to taste.\n\n'
      '2. Heat Butter:\nIn a non-stick skillet, melt the butter over medium heat until it starts to sizzle.\n\n'
      '3. Cook Ham:\nAdd the diced ham to the skillet and cook for a few minutes until it starts to brown.\n\n'
      '4. Pour Eggs:\nPour the beaten eggs over the ham in the skillet. Allow the eggs to set for a moment.\n\n'
      '5. Add Cheese:\nSprinkle the shredded cheese over one half of the omelette.\n\n'
      '6. Fold and Cook:\nOnce the edges of the omelette start to set, carefully fold it in half using a spatula.\n\n'
      '7. Optional Toppings:\nAdd any optional toppings like diced tomatoes, onions, bell peppers, or herbs on top of the omelette.\n\n'
      '8. Cook Through:\nContinue cooking until the cheese is melted, and the omelette is cooked through but still moist.\n\n'
      '9. Serve:\nSlide the omelette onto a plate, cut it in half if desired, and serve immediately.\n\n'
      'Enjoy your delicious Ham and Cheese Omelette!',
  image: 'images/ham_cheese_omelette.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Mushroom Omelette',
  description:
      'Here\'s a delightful recipe for a Mushroom Omelette:\n\n'
      'Ingredients:\n\n'
      '- 3 large eggs\n'
      '- Salt and pepper to taste\n'
      '- 1 tablespoon butter\n'
      '- 1/2 cup sliced mushrooms\n'
      '- 1/4 cup shredded cheese (optional)\n'
      '- Fresh herbs (chives, parsley) for garnish\n\n'
      'Steps:\n\n'
      '1. Crack the Eggs:\nIn a bowl, crack the eggs and beat them until well combined. Add salt and pepper to taste.\n\n'
      '2. Heat Butter:\nIn a non-stick skillet, melt the butter over medium heat until it starts to sizzle.\n\n'
      '3. Sauté Mushrooms:\nAdd the sliced mushrooms to the skillet and sauté until they are tender and any liquid has evaporated.\n\n'
      '4. Pour Eggs:\nPour the beaten eggs over the mushrooms in the skillet. Allow the eggs to set for a moment.\n\n'
      '5. Add Cheese (Optional):\nIf desired, sprinkle shredded cheese over one half of the omelette.\n\n'
      '6. Fold and Cook:\nOnce the edges of the omelette start to set, carefully fold it in half using a spatula.\n\n'
      '7. Garnish:\nSprinkle fresh herbs (chives, parsley) over the omelette for added flavor and freshness.\n\n'
      '8. Cook Through:\nContinue cooking until the cheese is melted (if added), and the omelette is cooked through but still moist.\n\n'
      '9. Serve:\nSlide the Mushroom Omelette onto a plate and serve immediately.\n\n'
      'Enjoy your delicious Mushroom Omelette!',
  image: 'images/mushroom_omelette.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Tuna Melt Sandwich',
  description:
      'Enjoy a classic Tuna Melt Sandwich with this simple recipe:\n\n'
      'Ingredients:\n\n'
      '- 1 can (5 oz) tuna, drained\n'
      '- 2 tablespoons mayonnaise\n'
      '- 1 tablespoon Dijon mustard\n'
      '- Salt and pepper to taste\n'
      '- 1/4 cup finely diced celery\n'
      '- 2 tablespoons finely diced red onion\n'
      '- 4 slices bread of your choice\n'
      '- Butter for spreading\n'
      '- 1 cup shredded cheddar cheese\n'
      '- Optional: Sliced tomato, pickles, or lettuce for garnish\n\n'
      'Steps:\n\n'
      '1. Prepare Tuna Salad:\nIn a bowl, mix the drained tuna with mayonnaise, Dijon mustard, salt, pepper, diced celery, and diced red onion until well combined.\n\n'
      '2. Assemble Sandwich:\nPlace the tuna salad on two slices of bread. Top with shredded cheddar cheese and optional garnishes like sliced tomato, pickles, or lettuce. Cover with the remaining bread slices.\n\n'
      '3. Butter the Bread:\nSpread butter on the outer sides of each sandwich.\n\n'
      '4. Grill or Toast:\nIn a skillet over medium heat, grill the sandwiches until the bread is golden brown, and the cheese is melted. You can also use a panini press or oven.\n\n'
      '5. Serve:\nSlice the Tuna Melt Sandwiches in half and serve immediately.\n\n'
      'Enjoy your delicious Tuna Melt Sandwich!',
  image: 'images/tuna_melt_sandwich.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Spam and Egg Sandwich',
  description:
      'Try this tasty Spam and Egg Sandwich for a satisfying meal:\n\n'
      'Ingredients:\n\n'
      '- 4 slices bread of your choice\n'
      '- 1 can (12 oz) Spam, sliced\n'
      '- 4 large eggs\n'
      '- Salt and pepper to taste\n'
      '- Butter or cooking oil for frying\n'
      '- Optional toppings: cheese, lettuce, tomato, mayo, ketchup\n\n'
      'Steps:\n\n'
      '1. Cook Spam:\nIn a skillet over medium heat, fry the Spam slices until they are golden brown on both sides. Set aside.\n\n'
      '2. Fry Eggs:\nIn the same skillet, add a bit of butter or cooking oil. Crack the eggs into the skillet, season with salt and pepper, and cook to your preferred doneness.\n\n'
      '3. Assemble Sandwich:\nPlace the cooked Spam on a slice of bread. Top with a fried egg. Add optional toppings like cheese, lettuce, tomato, mayo, or ketchup. Cover with another slice of bread.\n\n'
      '4. Optional Grilling:\nFor a warm sandwich, you can grill the assembled sandwich in the skillet for a couple of minutes on each side until the bread is toasted.\n\n'
      '5. Serve:\nSlice the Spam and Egg Sandwich in half and serve immediately.\n\n'
      'Enjoy your delicious Spam and Egg Sandwich!',
  image: 'images/spam_egg_sandwich.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Bacon 4 Cheese Sandwich',
  description:
      'Indulge in the rich flavors of this Bacon 4 Cheese Sandwich:\n\n'
      'Ingredients:\n\n'
      '- 8 slices bread of your choice\n'
      '- 8 slices bacon, cooked crispy\n'
      '- 4 slices cheddar cheese\n'
      '- 4 slices Swiss cheese\n'
      '- 4 slices mozzarella cheese\n'
      '- 4 slices pepper jack cheese\n'
      '- Butter for spreading\n'
      '- Optional: Dijon mustard, mayonnaise, lettuce, tomato\n\n'
      'Steps:\n\n'
      '1. Cook Bacon:\nCook the bacon until it''s crispy. Drain excess fat on a paper towel.\n'
      '2. Assemble Sandwich:\nOn one slice of bread, place a slice each of cheddar, Swiss, mozzarella, and pepper jack cheese. Add two slices of crispy bacon. Optionally, spread Dijon mustard or mayonnaise on the other slice of bread.\n\n'
      '3. Create Layers:\nRepeat the layering process with the remaining ingredients for the desired number of sandwiches.\n\n'
      '4. Butter and Grill:\nSpread butter on the outer sides of each sandwich. In a skillet over medium heat, grill the sandwiches until the bread is golden brown, and the cheeses are melted. You can also use a panini press or oven.\n\n'
      '5. Optional Toppings:\nAdd lettuce and tomato if desired.\n\n'
      '6. Serve:\nSlice the Bacon 4 Cheese Sandwiches in half and serve immediately.\n\n'
      'Enjoy your flavorful Bacon 4 Cheese Sandwich!',
  image: 'images/bacon_4_cheese_sandwich.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Pasta with Tomato Sauce',
  description:
      'Enjoy a comforting bowl of Classic Pasta with Tomato Sauce:\n\n'
      'Ingredients:\n\n'
      '- 8 oz (about 225g) pasta of your choice (spaghetti, penne, etc.)\n'
      '- 2 tablespoons olive oil\n'
      '- 1 onion, finely chopped\n'
      '- 2 cloves garlic, minced\n'
      '- 1 can (14 oz) crushed tomatoes\n'
      '- 1 teaspoon dried oregano\n'
      '- 1 teaspoon dried basil\n'
      '- Salt and pepper to taste\n'
      '- Grated Parmesan cheese for serving\n\n'
      'Steps:\n\n'
      '1. Cook Pasta:\nCook the pasta according to package instructions in a large pot of salted boiling water. Drain and set aside.\n\n'
      '2. Make Tomato Sauce:\nIn a skillet, heat olive oil over medium heat. Add chopped onion and sauté until softened. Add minced garlic and cook for an additional 1-2 minutes.\n\n'
      '3. Add Tomatoes and Herbs:\nPour in the crushed tomatoes and add dried oregano, dried basil, salt, and pepper. Simmer the sauce for about 15-20 minutes, stirring occasionally, until it thickens.\n\n'
      '4. Combine Pasta and Sauce:\nAdd the cooked pasta to the tomato sauce and toss until the pasta is well coated.\n\n'
      '5. Serve:\nDivide the pasta into serving bowls. Sprinkle with grated Parmesan cheese.\n\n'
      '6. Enjoy:\nServe your Classic Pasta with Tomato Sauce hot and enjoy!\n\n'
      'Feel free to customize with additional toppings or herbs to suit your taste.',
  image: 'images/classic_pasta.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Creamy Pesto & Mushroom Pasta',
  description:
      'Indulge in the rich flavors of Creamy Pesto & Mushroom Pasta:\n\n'
      'Ingredients:\n\n'
      '- 8 oz (about 225g) pasta of your choice (fettuccine, linguine, etc.)\n'
      '- 2 tablespoons olive oil\n'
      '- 1 lb (about 450g) mushrooms, sliced\n'
      '- 3 cloves garlic, minced\n'
      '- 1/2 cup basil pesto (store-bought or homemade)\n'
      '- 1 cup heavy cream\n'
      '- Salt and black pepper to taste\n'
      '- Grated Parmesan cheese for serving\n'
      '- Fresh basil leaves for garnish (optional)\n\n'
      'Steps:\n\n'
      '1. Cook Pasta:\nCook the pasta according to package instructions in a large pot of salted boiling water. Drain and set aside.\n\n'
      '2. Sauté Mushrooms:\nIn a large skillet, heat olive oil over medium heat. Add sliced mushrooms and cook until they release their moisture and turn golden brown. Add minced garlic and sauté for an additional 1-2 minutes.\n\n'
      '3. Add Pesto and Cream:\nStir in basil pesto and heavy cream. Allow the mixture to simmer for a few minutes until it thickens slightly. Season with salt and black pepper to taste.\n\n'
      '4. Combine Pasta and Sauce:\nAdd the cooked pasta to the creamy pesto and mushroom sauce. Toss until the pasta is well coated.\n\n'
      '5. Serve:\nDivide the creamy pasta into serving bowls. Sprinkle with grated Parmesan cheese and garnish with fresh basil leaves if desired.\n\n'
      '6. Enjoy:\nServe your Creamy Pesto & Mushroom Pasta hot and savor the delicious flavors!\n\n'
      'Feel free to customize with additional herbs or a drizzle of olive oil.',
  image: 'images/creamy_pesto_mushroom_pasta.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Vanilla Cake',
  description:
      'Indulge in the sweetness of a Classic Vanilla Cake:\n\n'
      'Ingredients:\n\n'
      '- 2 1/2 cups all-purpose flour\n'
      '- 2 1/2 teaspoons baking powder\n'
      '- 1/2 teaspoon salt\n'
      '- 1 cup unsalted butter, softened\n'
      '- 2 cups granulated sugar\n'
      '- 4 large eggs\n'
      '- 2 teaspoons vanilla extract\n'
      '- 1 1/4 cups whole milk\n'
      '- Optional: Frosting of your choice\n\n'
      'Steps:\n\n'
      '1. Preheat Oven:\nPreheat your oven to 350°F (175°C). Grease and flour your cake pans.\n\n'
      '2. Mix Dry Ingredients:\nIn a bowl, whisk together flour, baking powder, and salt. Set aside.\n\n'
      '3. Cream Butter and Sugar:\nIn a large mixing bowl, cream together softened butter and granulated sugar until light and fluffy.\n\n'
      '4. Add Eggs and Vanilla:\nAdd eggs one at a time, beating well after each addition. Mix in vanilla extract.\n\n'
      '5. Alternate Mixing:\nGradually add the dry ingredients to the wet ingredients, alternating with the milk. Begin and end with the dry ingredients.\n\n'
      '6. Bake:\nDivide the batter evenly between the prepared pans. Bake in the preheated oven for 25-30 minutes or until a toothpick inserted comes out clean.\n\n'
      '7. Cool and Frost:\nAllow the cakes to cool completely before frosting with your favorite frosting.\n\n'
      '8. Serve:\nSlice and serve your Classic Vanilla Cake!\n\n'
      'Enjoy this timeless treat!',
  image: 'images/classic_vanilla_cake.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Flaky Fruit Pastries',
  description:
      'Savor the flakiness of these delightful Fruit Pastries:\n\n'
      'Ingredients:\n\n'
      '- Puff pastry sheets (store-bought or homemade)\n'
      '- Fresh fruits (berries, sliced peaches, etc.)\n'
      '- 1/4 cup apricot jam or fruit preserves\n'
      '- Powdered sugar for dusting\n\n'
      'Steps:\n\n'
      '1. Preheat Oven:\nPreheat your oven to 375°F (190°C).\n\n'
      '2. Prepare Puff Pastry:\nRoll out the puff pastry sheets on a floured surface. Cut into squares or rectangles as desired.\n\n'
      '3. Add Fresh Fruits:\nPlace a spoonful of fresh fruits in the center of each pastry square.\n\n'
      '4. Fold and Seal:\nFold the pastry over the fruits to form a triangle or rectangle. Use a fork to seal the edges.\n\n'
      '5. Bake:\nPlace the filled pastries on a baking sheet and bake in the preheated oven for 15-20 minutes or until golden brown.\n\n'
      '6. Glaze with Jam:\nWhile the pastries are still warm, heat the apricot jam or fruit preserves and brush it over the top for a shiny glaze.\n\n'
      '7. Dust with Powdered Sugar:\nOnce the pastries have cooled slightly, dust them with powdered sugar for a finishing touch.\n\n'
      '8. Serve:\nServe your Flaky Fruit Pastries and enjoy the delicious flakiness and sweetness!\n\n'
      'Feel free to customize with your favorite fruits.',
  image: 'images/fruit_pastries.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Almond Croissants',
  description:
      'Indulge in the buttery layers of Almond Croissants:\n\n'
      'Ingredients:\n\n'
      '- Croissant dough (store-bought or homemade)\n'
      '- 1 cup almond flour\n'
      '- 1/2 cup unsalted butter, softened\n'
      '- 1/2 cup granulated sugar\n'
      '- 2 eggs\n'
      '- 1 teaspoon almond extract\n'
      '- Sliced almonds for topping\n'
      '- Powdered sugar for dusting\n\n'
      'Steps:\n\n'
      '1. Preheat Oven:\nPreheat your oven to 375°F (190°C).\n\n'
      '2. Prepare Almond Filling:\nIn a bowl, mix almond flour, softened butter, granulated sugar, eggs, and almond extract until well combined.\n\n'
      '3. Slice and Fill Croissants:\nSlice the croissants horizontally. Spread a generous amount of almond filling inside each croissant.\n\n'
      '4. Shape and Arrange:\nShape the croissants back into their crescent shape. Place them on a baking sheet lined with parchment paper.\n\n'
      '5. Top with Almonds:\nSprinkle sliced almonds over the top of each croissant.\n\n'
      '6. Bake:\nBake in the preheated oven for 15-20 minutes or until the croissants are golden brown and the almond filling is set.\n\n'
      '7. Dust with Powdered Sugar:\nOnce the croissants have cooled slightly, dust them with powdered sugar.\n\n'
      '8. Serve:\nServe your Almond Croissants warm and enjoy the delightful combination of flaky pastry and almond goodness!\n\n'
      'Feel free to experiment with different nut fillings or glazes.',
  image: 'images/almond_croissants.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Butter Croissants',
  description:
      'Experience the buttery flakiness of Classic Croissants:\n\n'
      'Ingredients:\n\n'
      '- 2 1/4 teaspoons active dry yeast\n'
      '- 1/4 cup warm water (110°F/43°C)\n'
      '- 2 3/4 cups all-purpose flour\n'
      '- 1/4 cup granulated sugar\n'
      '- 1 teaspoon salt\n'
      '- 1 cup cold unsalted butter, cut into thin slices\n'
      '- 1 cup cold milk\n'
      '- 1 egg (for egg wash)\n'
      '- Optional: Chocolate for chocolate-filled croissants\n\n'
      'Steps:\n\n'
      '1. Activate Yeast:\nIn a bowl, combine active dry yeast with warm water. Let it sit for 5-10 minutes until foamy.\n\n'
      '2. Mix Dough:\nIn a large bowl, mix flour, sugar, and salt. Add the cold butter slices and mix until the butter is coated with flour. Gradually add the yeast mixture and cold milk. Mix until a dough forms.\n\n'
      '3. Fold and Chill:\nTurn the dough onto a floured surface. Roll it into a rectangle, then fold it into thirds (like a letter). Repeat this process 3-4 times. Wrap the dough and chill in the refrigerator for 1-2 hours or overnight.\n\n'
      '4. Shape Croissants:\nRoll out the chilled dough into a large rectangle. Cut triangles and roll them into croissants. Place on a baking sheet lined with parchment paper.\n\n'
      '5. Proofing:\nLet the croissants rise in a warm place for 1-2 hours or until doubled in size.\n\n'
      '6. Preheat and Egg Wash:\nPreheat your oven to 400°F (200°C). Beat an egg and brush it over the croissants for a golden finish.\n\n'
      '7. Bake:\nBake the croissants for 15-20 minutes or until golden brown.\n\n'
      '8. Optional Chocolate Filling:\nIf making chocolate-filled croissants, place a piece of chocolate at the wide end of each triangle before rolling.\n\n'
      '9. Serve:\nServe your freshly baked Classic Butter Croissants and enjoy the layers of flaky goodness!\n\n'
      'Feel free to customize with different fillings or toppings.',
  image: 'images/classic_croissants.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Homemade Apple Pie',
  description:
      'Savor the sweetness of a Homemade Apple Pie:\n\n'
      'Ingredients:\n\n'
      '- 6 cups peeled and sliced apples (e.g., Granny Smith)\n'
      '- 3/4 cup granulated sugar\n'
      '- 1 teaspoon ground cinnamon\n'
      '- 1/4 teaspoon ground nutmeg\n'
      '- 2 tablespoons all-purpose flour\n'
      '- 1 package refrigerated pie crusts (or homemade)\n'
      '- 2 tablespoons unsalted butter, cut into small pieces\n'
      '- Optional: Egg wash (1 egg beaten with a splash of water)\n\n'
      'Steps:\n\n'
      '1. Preheat Oven:\nPreheat your oven to 425°F (220°C).\n\n'
      '2. Prepare Apples:\nIn a large bowl, toss sliced apples with sugar, cinnamon, nutmeg, and flour until well coated.\n\n'
      '3. Roll Out Pie Crusts:\nRoll out one pie crust and place it in a pie dish. Fill it with the prepared apple mixture. Dot the top with small pieces of butter.\n\n'
      '4. Top with Second Crust:\nRoll out the second pie crust and place it over the apple filling. Trim the excess crust and crimp the edges to seal. Cut a few slits on the top for ventilation.\n\n'
      '5. Optional Egg Wash:\nBrush the top crust with the optional egg wash for a golden finish.\n\n'
      '6. Bake:\nBake in the preheated oven for 45-50 minutes or until the crust is golden brown and the filling is bubbly.\n\n'
      '7. Cool and Serve:\nAllow the pie to cool before slicing. Serve your Homemade Apple Pie and enjoy!\n\n'
      'Feel free to serve with a scoop of vanilla ice cream.',
  image: 'images/homemade_apple_pie.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Fruit Pie',
  description:
      'Indulge in the deliciousness of a Classic Fruit Pie:\n\n'
      'Ingredients:\n\n'
      '- Your choice of fruit filling (e.g., apple, cherry, blueberry)\n'
      '- 3/4 cup granulated sugar\n'
      '- 2 tablespoons cornstarch\n'
      '- 1/2 teaspoon ground cinnamon\n'
      '- 1 package refrigerated pie crusts (or homemade)\n'
      '- 2 tablespoons unsalted butter\n'
      '- Optional: Egg wash (1 egg beaten with a splash of water)\n\n'
      'Steps:\n\n'
      '1. Preheat Oven:\nPreheat your oven to 375°F (190°C).\n\n'
      '2. Prepare Fruit Filling:\nIn a bowl, mix your choice of fruit with sugar, cornstarch, and ground cinnamon until well coated.\n\n'
      '3. Roll Out Pie Crusts:\nRoll out one pie crust and place it in a pie dish. Fill it with the prepared fruit mixture. Dot the top with small pieces of butter.\n\n'
      '4. Top with Second Crust:\nRoll out the second pie crust and place it over the fruit filling. Trim the excess crust and crimp the edges to seal. Cut a few slits on the top for ventilation.\n\n'
      '5. Optional Egg Wash:\nBrush the top crust with the optional egg wash for a golden finish.\n\n'
      '6. Bake:\nBake in the preheated oven for 40-45 minutes or until the crust is golden brown and the filling is bubbly.\n\n'
      '7. Cool and Serve:\nAllow the pie to cool before slicing. Serve your Classic Fruit Pie and enjoy!\n\n'
      'Feel free to customize with your favorite fruit or additional spices.',
  image: 'images/classic_fruit_pie.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Pumpkin Pie',
  description:
      'Delight in the flavors of a Classic Pumpkin Pie:\n\n'
      'Ingredients:\n\n'
      '- 1 1/2 cups canned pumpkin puree\n'
      '- 3/4 cup granulated sugar\n'
      '- 1 teaspoon ground cinnamon\n'
      '- 1/2 teaspoon ground ginger\n'
      '- 1/4 teaspoon ground cloves\n'
      '- 1/2 teaspoon salt\n'
      '- 2 large eggs\n'
      '- 1 can (12 ounces) evaporated milk\n'
      '- 1 unbaked 9-inch pie crust (store-bought or homemade)\n'
      '- Whipped cream for serving\n\n'
      'Steps:\n\n'
      '1. Preheat Oven:\nPreheat your oven to 425°F (220°C).\n\n'
      '2. Mix Pumpkin Filling:\nIn a large bowl, whisk together pumpkin puree, sugar, cinnamon, ginger, cloves, and salt until well combined.\n\n'
      '3. Add Eggs and Milk:\nBeat in the eggs, then gradually stir in the evaporated milk until the filling is smooth.\n\n'
      '4. Prepare Pie Crust:\nPlace the pie crust in a 9-inch pie dish. Crimp the edges as desired.\n\n'
      '5. Pour Filling:\nPour the pumpkin filling into the pie crust.\n\n'
      '6. Bake:\nBake in the preheated oven for 15 minutes. Reduce the temperature to 350°F (175°C) and continue baking for 40-50 minutes or until a knife inserted near the center comes out clean.\n\n'
      '7. Cool and Serve:\nAllow the pie to cool on a wire rack. Serve your Classic Pumpkin Pie with a dollop of whipped cream.\n\n'
      'Feel free to sprinkle additional cinnamon on top.',
  image: 'images/classic_pumpkin_pie.jpg', // Replace with the actual image path
),
TrendingRecipeCard(
  recipe: 'Classic Croissants',
  description:
      'Indulge in the buttery layers of Classic Croissants:\n\n'
      'Ingredients:\n\n'
      '- 2 1/4 teaspoons active dry yeast\n'
      '- 1/4 cup warm water (110°F/43°C)\n'
      '- 2 3/4 cups all-purpose flour\n'
      '- 1/4 cup granulated sugar\n'
      '- 1 teaspoon salt\n'
      '- 1 cup cold unsalted butter, cut into thin slices\n'
      '- 1 cup cold milk\n'
      '- 1 egg (for egg wash)\n'
      '- Optional: Chocolate for chocolate-filled croissants\n\n'
      'Steps:\n\n'
      '1. Activate Yeast:\nIn a bowl, combine active dry yeast with warm water. Let it sit for 5-10 minutes until foamy.\n\n'
      '2. Mix Dough:\nIn a large bowl, mix flour, sugar, and salt. Add the cold butter slices and mix until the butter is coated with flour. Gradually add the yeast mixture and cold milk. Mix until a dough forms.\n\n'
      '3. Fold and Chill:\nTurn the dough onto a floured surface. Roll it into a rectangle, then fold it into thirds (like a letter). Repeat this process 3-4 times. Wrap the dough and chill in the refrigerator for 1-2 hours or overnight.\n\n'
      '4. Shape Croissants:\nRoll out the chilled dough into a large rectangle. Cut triangles and roll them into croissants. Place on a baking sheet lined with parchment paper.\n\n'
      '5. Proofing:\nLet the croissants rise in a warm place for 1-2 hours or until doubled in size.\n\n'
      '6. Preheat and Egg Wash:\nPreheat your oven to 400°F (200°C). Beat an egg and brush it over the croissants for a golden finish.\n\n'
      '7. Bake:\nBake the croissants for 15-20 minutes or until golden brown.\n\n'
      '8. Optional Chocolate Filling:\nIf making chocolate-filled croissants, place a piece of chocolate at the wide end of each triangle before rolling.\n\n'
      '9. Serve:\nServe your freshly baked Classic Croissants and enjoy the layers of flaky goodness!\n\n'
      'Feel free to customize with different fillings or toppings.',
  image: 'images/classic_croissants.jpg', // Replace with the actual image path
),

];
