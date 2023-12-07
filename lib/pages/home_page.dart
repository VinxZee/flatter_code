import 'package:finals/pages/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  final TextEditingController _searchController = TextEditingController();
  var filteredRecipes = trendingRecipes;
  int _selectedIndex = 0;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Handle the selected category (Food, Beverages, Pastries) here
      switch (_selectedIndex) {
        case 0:
          // All category
          filteredRecipes = trendingRecipes
              .where((recipe) => recipe.recipe.toLowerCase().contains('coffee') 
              || recipe.recipe.toLowerCase().contains('tea') 
              || recipe.recipe.toLowerCase().contains('classic')
              || recipe.recipe.toLowerCase().contains('hot')
              || recipe.recipe.toLowerCase().contains('iced')
              || recipe.recipe.toLowerCase().contains('cake')
               || recipe.recipe.toLowerCase().contains('croissant')
               || recipe.recipe.toLowerCase().contains('pie')
               || recipe.recipe.toLowerCase().contains('pasta')
              || recipe.recipe.toLowerCase().contains('sandwich')
              || recipe.recipe.toLowerCase().contains('pizza')
              || recipe.recipe.toLowerCase().contains('fish')
              || recipe.recipe.toLowerCase().contains('omelette')
              || recipe.recipe.toLowerCase().contains('pastries')
              || recipe.recipe.toLowerCase().contains('food'))
              
              .toList();
          break;
        case 1:
          // Food category
          filteredRecipes = trendingRecipes
              .where((recipe) => recipe.recipe.toLowerCase().contains('food')
              || recipe.recipe.toLowerCase().contains('pasta')
              || recipe.recipe.toLowerCase().contains('sandwich')
              || recipe.recipe.toLowerCase().contains('pizza')
              || recipe.recipe.toLowerCase().contains('fish')
              || recipe.recipe.toLowerCase().contains('omelette'))
              .toList();
          break;
        case 2:
          // Beverages category
          filteredRecipes = trendingRecipes
              .where((recipe) => recipe.recipe.toLowerCase().contains('coffee') 
              || recipe.recipe.toLowerCase().contains('tea') 
              || recipe.recipe.toLowerCase().contains('classic')
              || recipe.recipe.toLowerCase().contains('hot')
              || recipe.recipe.toLowerCase().contains('iced'))
              
              .toList();
          break;
        case 3:
          // Pastries category
          filteredRecipes = trendingRecipes
              .where((recipe) => recipe.recipe.toLowerCase().contains('pastries')
               || recipe.recipe.toLowerCase().contains('cake')
               || recipe.recipe.toLowerCase().contains('croissant')
               || recipe.recipe.toLowerCase().contains('pie'))
              .toList();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginbg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search recipes...',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    filteredRecipes = trendingRecipes
                        .where((recipe) => recipe.recipe
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredRecipes.length,
                itemBuilder: (context, index) {
                  return TrendingRecipeCard(
                    recipe: filteredRecipes[index].recipe,
                    description: filteredRecipes[index].description,
                    image: '',
                  );
                },
              ),
            ),
          ],
        ),
      ),
bottomNavigationBar: BottomAppBar(
  color: Colors.brown,
  shape: const CircularNotchedRectangle(),
  child: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.all_inclusive, color: Colors.black),
        label: 'All Recipe',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.fastfood, color: Colors.black),
        label: 'Food',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_drink, color: Colors.black),
        label: 'Beverages',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.cake, color: Colors.black),
        label: 'Pastries',
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black, // Set the unselected item color
    selectedLabelStyle: TextStyle(color: Colors.white),
    unselectedLabelStyle: TextStyle(color: Colors.black), // Set the unselected label color
    onTap: _onItemTapped,
  ),
),

    );
  }
}