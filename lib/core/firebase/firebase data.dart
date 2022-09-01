import 'package:cloud_firestore/cloud_firestore.dart';

void addData() {
  List<Map<String, dynamic>> products = [
    {
      'name': 'Grapes',
      'parent_id': 'dkjkr343543646mpdkrejee',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FOrganic_Fruits%2FGrapes.jpg?alt=media&token=8b1f1336-f644-4cdf-a0bf-faa270bd8456',
      'price': 160,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Oranges',
      'parent_id': 'dkjkr343543646mpdkrejee',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FOrganic_Fruits%2FOranges.jpg?alt=media&token=d6c40501-2358-4d54-8253-33f08f0b1b7c',
      'price': 120,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Strawberry',
      'parent_id': 'dkjkr343543646mpdkrejee',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FOrganic_Fruits%2FStrawberry.jpg?alt=media&token=f0440edc-6069-41db-9623-f600de186b3d',
      'price': 300,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Multi Fruits Pack',
      'parent_id': 'dkjkr343543646mpdkrejkr',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMixed_Fruit_Pack%2FMulti%20Fruits%20Pack.jpg?alt=media&token=e1658c04-caa2-4c11-bfbc-2da95694db95',
      'price': 350,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Paper Fruits Pack',
      'parent_id': 'dkjkr343543646mpdkrejkr',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMixed_Fruit_Pack%2FPaper%20Fruits%20Pack.jpg?alt=media&token=69e4f63c-ab04-405a-823c-e73de6983093',
      'price': 230,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Tropicana',
      'parent_id': 'dkjkr343543646mpdkrejkr',
      "discount": 20,

      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMixed_Fruit_Pack%2FTropicana1.jpg?alt=media&token=a8bf34c4-281c-4609-9cb0-f09fb4365df3',
      'price': 140,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Apricots',
      'parent_id': 'dkjkr343543646mpdkre1ee',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FStone_Fruits%2FApricots.jpg?alt=media&token=425acc27-99ce-4da4-9e2c-b6433d61d62a',
      'price': 180,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Nectarines',
      'parent_id': 'dkjkr343543646mpdkre1ee',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FStone_Fruits%2FNectarines.jpg?alt=media&token=7f05e217-9bec-4009-b86b-19fa02bbfe07',
      'price': 250,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Peaches',
      'parent_id': 'dkjkr343543646mpdkre1ee',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FStone_Fruits%2FPeaches.jpg?alt=media&token=f8993676-b36a-4252-b664-1b67422f927c',
      'price': 100,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Multi Fruits Pack',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMixed_Fruit_Pack%2FMulti%20Fruits%20Pack.jpg?alt=media&token=e1658c04-caa2-4c11-bfbc-2da95694db95',
      'price': 350,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'watermelon',
      'parent_id': 'dkjkr343543646mpdkrsede',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMelons%2Fwatermelon.jpg?alt=media&token=acbeae76-5888-41f7-bb43-f810bfe2b1f9',
      'price': 100,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'watermelon',
      'parent_id': 'dkjkr343543646mpdkrsede',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMelons%2Fwatermelon.jpg?alt=media&token=acbeae76-5888-41f7-bb43-f810bfe2b1f9',
      'price': 100,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'watermelon',
      'parent_id': 'dkjkr343543646mpdkrsede',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMelons%2Fwatermelon1.jpg?alt=media&token=9fbda10a-877d-4c83-964d-73a1112a701b',
      'price': 100,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'watermelon',
      'parent_id': 'dkjkr343543646mpdkrsede',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Fruits%2FMelons%2Fwatermelo2.jpg?alt=media&token=8483224a-7066-447f-91a2-e47f3d541ff4',
      'price': 100,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Broccoli',
      'parent_id': 'dkjkr343543646mpdkrejkr1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FOrganic_Vegetables%2FBroccoli.jpg?alt=media&token=278a7aa8-bb6b-42cd-bd93-accb847ac2ca',
      'price': 190,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Brinjels',
      'parent_id': 'dkjkr343543646mpdkrejkr1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FOrganic_Vegetables%2FBrinjels.jpg?alt=media&token=b40bab35-41bc-4d4f-84ac-e587d9a61489',
      'price': 80,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Corriander',
      'parent_id': 'dkjkr343543646mpdkrejkr1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FOrganic_Vegetables%2FCorriander.jpg?alt=media&token=a19e7f70-3001-4b2e-b552-228b39183564',
      'price': 70,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Multi Vegetables',
      'parent_id': 'dkjkr343543646mpdkrejee1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FMixed_Vegetables_Pack%2F%20%20Multi%20Vegetables%20.jpg?alt=media&token=bf17766c-11cf-4c93-85ff-96e79e76c5aa',
      'price': 370,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Paper Vegtables',
      'parent_id': 'dkjkr343543646mpdkrejee1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FMixed_Vegetables_Pack%2FPaper%20Veg%20tables.jpg?alt=media&token=ebbb4132-5ead-4edc-a3a7-e49e8dd24d3a',
      'price': 270,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Tropicana',
      'parent_id': 'dkjkr343543646mpdkrejee1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FMixed_Vegetables_Pack%2FTropicana.jpg?alt=media&token=48b72d00-d4a0-428b-81e1-af5df5629e67',
      'price': 180,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Onion',
      'parent_id': 'dkjkr343543646mpdkre1ee1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FAllium_Vegetabels%2FOnion.jpg?alt=media&token=f0bf0a52-d2b7-4b3b-8b90-220a2af7fba0',
      'price': 130,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Ginger',
      'parent_id': 'dkjkr343543646mpdkre1ee1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FAllium_Vegetabels%2FGinger.jpg?alt=media&token=844b5700-950f-4e9d-8866-c0d3ac8af6b3',
      'price': 180,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Garlic',
      'parent_id': 'dkjkr343543646mpdkre1ee1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FAllium_Vegetabels%2FGarlic.jpg?alt=media&token=ccc9edbe-4817-48b7-83ca-f7a71dbfcca3',
      'price': 110,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Root Vegetable1',
      'parent_id': 'dkjkr343543646mpdkrsede1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FRoot_Vegetabels%2FVegetabels1.jpg?alt=media&token=593a2669-2a18-4d3f-a5e5-28483cb87e1b',
      'price': 190,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Root Vegetable2',
      'parent_id': 'dkjkr343543646mpdkrsede1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FRoot_Vegetabels%2FVegetabels2.jpg?alt=media&token=5f5cd98b-75cf-4c7e-8d23-ab7a01308846',
      'price': 190,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Root Vegetable3',
      'parent_id': 'dkjkr343543646mpdkrsede1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Vegetables%2FRoot_Vegetabels%2FVegetabels2.jpg?alt=media&token=5f5cd98b-75cf-4c7e-8d23-ab7a01308846',
      'price': 190,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Cashewnuts',
      'parent_id': 'dkjkr343543646mpdtareq1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FIndehiscent_Dry_Fruits%2FCashewnuts.jpg?alt=media&token=0fb4b2be-7bae-4c42-a1bc-818c179e221b',
      'price': 550,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Walnuts',
      'parent_id': 'dkjkr343543646mpdtareq1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FIndehiscent_Dry_Fruits%2FWalnuts.jpg?alt=media&token=de5d32b3-e356-459a-8196-12839aaaac1a',
      'price': 200,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Hazelnuts',
      'parent_id': 'dkjkr343543646mpdtareq1',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FIndehiscent_Dry_Fruits%2FHazelnuts.jpg?alt=media&token=97ef5d87-1336-4c54-aa2a-680e4072bd5d',
      'price': 120,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Multi Dry Fruits',
      'parent_id': 'dkjkr343543646mpdtareq2',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FMixed_Dry_Fruits_Pack%2FMulti%20Dry%20Fruits.jpg?alt=media&token=ac7f0600-483b-4337-a5b6-d9daa82b9a59',
      'price': 900,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Paper Dry Fruits',
      'parent_id': 'dkjkr343543646mpdtareq2',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FMixed_Dry_Fruits_Pack%2FPaper%20Dry%20Fruits.jpg?alt=media&token=e4d2e437-fbfa-407e-8f6a-09d076628963',
      'price': 600,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Tropicana',
      'parent_id': 'dkjkr343543646mpdtareq2',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FMixed_Dry_Fruits_Pack%2FTropicana.jpg?alt=media&token=6b9346d5-33d7-49f1-aea7-99a2da0364fc',
      'price': 520,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Aam papad',
      'parent_id': 'dkjkr343543646mpdtareq3',
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FDehiscent_Dry_Fruits%2FAam%20papad.jpg?alt=media&token=5bed7d81-48f0-415f-8887-8e9062ea3fb9',
      'price': 100,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Almond',
      'parent_id': 'dkjkr343543646mpdtareq3',
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FDehiscent_Dry_Fruits%2FAlmond.jpg?alt=media&token=c6778d0c-9840-4ed3-92bc-cf0b2d97854d',
      'price': 390,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Anjeer',
      'parent_id': 'dkjkr343543646mpdtareq3',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FDehiscent_Dry_Fruits%2FAnjeer%20.jpg?alt=media&token=8b052389-4e3a-4a71-86b8-83602a73b776',
      'price': 260,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Kashmiri1',
      'parent_id': 'dkjkr343543646mpdtareq4',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FKashmiri_Dry_Fruits%2FKashmiri1.jpg?alt=media&token=c527fa04-422c-48dc-8cca-3b3338d395a8',
      'price': 260,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Kashmiri2',
      'parent_id': 'dkjkr343543646mpdtareq4',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FKashmiri_Dry_Fruits%2FKashmiri2.jpg?alt=media&token=5d100941-4398-4978-9ba5-5404daa18daa',
      'price': 260,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
    {
      'name': 'Kashmiri3',
      'parent_id': 'dkjkr343543646mpdtareq4',
      "discount": 20,
      'imageurl':
          'https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/Dry_Fruits%2FKashmiri_Dry_Fruits%2FKashmiri3.jpg?alt=media&token=9c1b0872-31c5-4170-a5d7-9bbf85c07d7b',
      'price': 260,
      'rate': {
        "cMj7dVOemDdVSgc4KoyVmg9O6fl2": 5,
      },
      'likes': ["cMj7dVOemDdVSgc4KoyVmg9O6fl2", "SG38C3KfMoXH4ugCHAq7DRpYmLl1"],
      "benefit":
          " might helps to manage diabetes due to his antioxidants and anti inflammatory properties. it reducesthe breakdown of carbohydrates and prevents the damage of cells.",
      "Nutrition": {
        "Calories": 7,
        "Carbohydrates": 20,
        "Fat": 10,
        "Protein": 9,
        "Sugar": 3,
        "Vitamin A": 4,
        "Vitamin E": 6,
        "Vitamin C": 2,
        "Vitamin D": 7,
        "Calcium": 3
      }
    },
  ];

  List productType = [
    {
      "name": "Fruits",
      "subtype": [
        {
          'name': 'Mixed Fruit Pack',
          'desc': 'Fruit mix fresh pack',
          'discount': 10,
          'items': [
            'QRT7Z4GaRpLkgRPXZcJk',
            '5WwewFz3zZXCc5orM7yI',
            'Ao8pGvSpmrCE8s5ZisBM'
          ]
        },
        {
          'name': 'Organic Fruits',
          'desc': 'Pick up from organic farms',
          'discount': 20,
          'items': [
            '1nfC3iMOtJKWNOOa8Hkb',
            '7QQQXUPXl4vbu2bbjcYl',
            '9fHVz9IiCe1h0rWsjkjD'
          ]
        },
        {
          'name': 'Stone Fruits',
          'desc': 'Fresh Stone Fruits',
          'discount': 20,
          'items': [
            'QRT7Z4GaRpLkgRPXZcJk',
            '5WwewFz3zZXCc5orM7yI',
            'yWGDgsIaYUTOhvmB1ncw'
          ]
        },
        {
          'name': 'Melons',
          'desc': 'Fresh Melons Fruits',
          'discount': 20,
          'items': [
            'CbC1EGrwR1mQZ1E06dc9',
            'SMD7e5litwvgRsCrE20k',
            'VghywZJ7yQc50lzTstFx'
          ]
        },
      ]
    },
    {
      "name": "Dry Fruits",
      "subtype": [
        {
          'name': 'Indehiscent Dry Fruits',
          'desc': 'Pick up from organic farms',
          'discount': 20,
          'items': [
            '46C4YqMrgDFuKXCimQbO',
            '72pvA8B0S1PDN9sXM2zp',
            'BMqbTcB7faHISC2bFfr2',
          ]
        },
        {
          'name': 'Mixed Dry Fruits Pack',
          'desc': 'Dry Fruits mix fresh pack',
          'discount': 10,
          'items': [
            '1Bwp2E3zDHbVy1Qu60Ye',
            '8LBcV2nKiSHsuYZ5SPtZ',
            '8a3O4INmGEELEn6odM0L',
          ]
        },
        {
          'name': 'Dehiscent Dry Fruits',
          'desc': 'Fresh Dehiscent Dry Fruits',
          'discount': 15,
          'items': [
            'qon15oYu2OIM015YlQB2',
            '8b74P3JMjrWzzwxtfpZf',
            'AkqaqwykhVlStsOvGscj',
          ]
        },
        {
          'name': 'Kashmiri Dry Fruits',
          'desc': 'Fresh Kashmiri Dry Fruits',
          'discount': 5,
          'items': [
            '4RKeMwtjS4dOkrmBw2Tk',
            'KdbUwjDQLHWte5uAkZfu',
            'MiFRTgb4yR6ijESeEvEB',
          ]
        },
      ]
    },
    {
      "name": "Vegetables",
      "subtype": [
        {
          'name': 'Organic Vegetables',
          'desc': 'Pick up from organic farms',
          'discount': 20,
          'items': [
            'G6PS8d1jLmJAsFEC2av7',
            'fJMFCshSOHjskdhWLJyb',
            'iuBExuPuro6u1FfIxWjA',
          ]
        },
        {
          'name': 'Mixed Vegetables Pack',
          'desc': 'Vegetable mix fresh pack',
          'discount': 20,
          'items': [
            'KaIAINJ0HYO5HIp77qQz',
            'QRT7Z4GaRpLkgRPXZcJk',
            'UgQFJjdY0mkW4zu9CzUa',
          ]
        },
        {
          'name': 'Allium Vegetabels',
          'desc': 'Fresh Allium Vegetables',
          'discount': 20,
          'items': [
            'NfXQl1P8W5awEEq4fwxd',
            'lp555Ns39VNIAgmGuB0z',
            'n7STWyn8oYMuQ6aNVEya',
          ]
        },
        {
          'name': 'Root Vegetabels',
          'desc': 'Fresh Allium Vegetables',
          'discount': 20,
          'items': [
            '2USbaWvShB1OpUlnioDT',
            'cGw9qGalcn9YlQvm4Wdw',
            'exvFF6405RuRDCuwmrxy',
          ]
        },
      ]
    },
  ];

  Map<String, Map<String, String>> productMainClasses = {
    "4YXR7KkcUeVrxTPDmfIm": {"name": "Dry Fruits"},
    "ckeZQX68AT9dSNp5HvuG": {"name": "Vegetables"},
    "dh5I9GTUXWJoPuGORC1S": {"name": "Fruits"},
  };

  Map<String, dynamic> productSubClasses = {
    "dkjkr343543646mpdkrejkr1": {
      "parent_id": "ckeZQX68AT9dSNp5HvuG",
      "desc": "Pick up from organic farms",
      "discount": 20,
      "name": "Organic Vegetables"
    },
    "dkjkr343543646mpdkrejee1": {
      "parent_id": "ckeZQX68AT9dSNp5HvuG",
      "desc": "Vegetable mix fresh pack",
      "discount": 20,
      "name": "Mixed Vegetables Pack"
    },
    "dkjkr343543646mpdkre1ee1": {
      "parent_id": "ckeZQX68AT9dSNp5HvuG",
      "desc": "Fresh Allium Vegetables",
      "discount": 20,
      "name": "Allium Vegetabels"
    },
    "dkjkr343543646mpdkrsede1": {
      "parent_id": "ckeZQX68AT9dSNp5HvuG",
      "desc": "Fresh Allium Vegetables",
      "discount": 20,
      "name": "Root Vegetabels"
    },
    "dkjkr343543646mpdkrejkr": {
      "parent_id": "dh5I9GTUXWJoPuGORC1S",
      "desc": "Fruit mix fresh pack",
      "discount": 10,
      "name": "Mixed Fruit Pack"
    },
    "dkjkr343543646mpdkrejee": {
      "parent_id": "dh5I9GTUXWJoPuGORC1S",
      "desc": "Pick up from organic farms",
      "discount": 20,
      "name": "Organic Fruits"
    },
    "dkjkr343543646mpdkre1ee": {
      "parent_id": "dh5I9GTUXWJoPuGORC1S",
      "desc": "Fresh Stone Fruits",
      "discount": 20,
      "name": "Stone Fruits"
    },
    "dkjkr343543646mpdkrsede": {
      "parent_id": "dh5I9GTUXWJoPuGORC1S",
      "desc": "Fresh Melons Fruits",
      "discount": 20,
      "name": "Melons"
    },
    "dkjkr343543646mpdtareq1": {
      "parent_id": "4YXR7KkcUeVrxTPDmfIm",
      "desc": "Pick up from organic farms",
      "discount": 20,
      "name": "Indehiscent Dry Fruits"
    },
    "dkjkr343543646mpdtareq2": {
      "parent_id": "4YXR7KkcUeVrxTPDmfIm",
      "desc": "Dry Fruits mix fresh pack",
      "discount": 20,
      "name": "Mixed Dry Fruits Pack"
    },
    "dkjkr343543646mpdtareq3": {
      "parent_id": "4YXR7KkcUeVrxTPDmfIm",
      "desc": "Fresh Dehiscent Dry Fruits",
      "discount": 20,
      "name": "Dehiscent Dry Fruits"
    },
    "dkjkr343543646mpdtareq4": {
      "parent_id": "4YXR7KkcUeVrxTPDmfIm",
      "desc": "Fresh Kashmiri Dry Fruits",
      "discount": 20,
      "name": "Kashmiri Dry Fruits"
    }
  };

  Map<String, dynamic> productClassFruits = {
    "dkjkr343543646mpdkrejkr": {
      "desc": "Fruit mix fresh pack",
      "discount": 10,
      "name": "Mixed Fruit Pack"
    },
    "dkjkr343543646mpdkrejee": {
      "desc": "Pick up from organic farms",
      "discount": 20,
      "name": "Organic Fruits"
    },
    "dkjkr343543646mpdkre1ee": {
      "desc": "Fresh Stone Fruits",
      "discount": 20,
      "name": "Stone Fruits"
    },
    "dkjkr343543646mpdkrsede": {
      "desc": "Fresh Melons Fruits",
      "discount": 20,
      "name": "Melons"
    }
  };

  // productSubClasses.forEach((id, data) {
  //   FirebaseFirestore.instance.collection('product_subclasses').doc(id).set(data);
  // });
  // productMainClasses.forEach((id, data) {
  //   FirebaseFirestore.instance.collection('product_main_classes').doc(id).set(data);
  // });

  // FirebaseFirestore.instance
  //     .collection('product_main_classes')
  //     .add(productMainClasses);
  //
  // FirebaseFirestore.instance
  //     .collection('product_subclasses')
  //     .add(productSubClasses);

  // productMainClasses.forEach((id,Map<String,String>mapProduct) {
  //   FirebaseFirestore.instance.collection(mapProduct["name"]!);
  // });

  products.forEach((Map<String, dynamic> mapProduct) {
    FirebaseFirestore.instance.collection('products').add(mapProduct);
  });
}
