import 'package:flutter/material.dart';

// Phone Model Class
class Phone {
  final String modelName;
  final String imageUrl;

  Phone({required this.modelName, required this.imageUrl});
}

class ClickOnSalon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Glamour Heaven',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.share, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/spa 2.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipRect(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          '4.8 (1k+ Reviews)',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Glamour Heaven',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text('Haircuts, Make Up, Shaving, Massage'),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.redAccent),
                        Text('8502 Preston Rd. Inglewood, Maine 98380'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.redAccent),
                        Text('15 min · 1.5 km · Mon-Sun | 11 am - 11 pm'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(Icons.language, color: Colors.redAccent),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.message, color: Colors.redAccent),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.phone, color: Colors.redAccent),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.navigation, color: Colors.redAccent),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.redAccent),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    TabBarWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.redAccent,
            tabs: [
              Tab(text: 'Services'),
              Tab(text: 'Specialist'), // Modified tab name
              Tab(text: 'Package'),
              Tab(text: 'Gallery'),
            ],
          ),
          Container(
            height: 400,
            child: TabBarView(
              children: [
                ServiceList(),
                SpecialistList(), // Modified class name
                PackageList(),
                GalleryList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ServiceItem(
          title: 'Hair Cut',
          types: '20 Types',
        ),
        ServiceItem(
          title: 'Hair Coloring',
          types: '12 Types',
        ),
        ServiceItem(
          title: 'Hair Wash',
          types: '08 Types',
        ),
        ServiceItem(
          title: 'Shaving',
          types: '12 Types',
        ),
        ServiceItem(
          title: 'Skin Care',
          types: '04 Types',
        ),
        ServiceItem(
          title: 'Hair Dryer',
          types: '05 Types',
        ),
        ServiceItem(
          title: 'Face Make up',
          types: '12 Types',
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Book Appointment',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String title;
  final String types;

  ServiceItem({required this.title, required this.types});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Text(types, style: TextStyle(color: Colors.redAccent)),
      onTap: () {},
    );
  }
}

class SpecialistList extends StatelessWidget {
  // Replace with your actual data fetching logic (API or database)
  final List<Phone> phones = [
    Phone(modelName: 'Phone Model 1', imageUrl: 'assets/images/spe 2.jpg'),
    Phone(modelName: 'Phone Model 2', imageUrl: 'assets/images/spe 3.jpg'),
    Phone(modelName: 'Phone Model 3', imageUrl: 'assets/images/spe 6.jpg'),
    Phone(modelName: 'Phone Model 4', imageUrl: 'assets/images/spe 5.jpg'),
    // ... add more phones
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: phones.length + 1, // Adding 1 for the button
      itemBuilder: (context, index) {
        if (index == phones.length) {
          return Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Book Appointment',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }

        final phone = phones[index];
        return SpecialistCard(
          name: phone.modelName,
          role: "Phone", // Assuming it's the same for all phones
          rating: "4.5", // Generic rating
          imageUrl: phone.imageUrl,
        );
      },
    );
  }
}

class SpecialistCard extends StatelessWidget {
  final String name;
  final String role;
  final String rating;
  final String imageUrl;

  SpecialistCard({
    required this.name,
    required this.role,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(role),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text(rating),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PackageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildPackageCard(
          context,
          'assets/images/hair.jpg',
          'Hair Stylist',
          '250 Dhs',
        ),
        _buildPackageCard(
          context,
          'assets/images/makeup.jpg',
          'Beauty Make Up',
          '120 DHs',
        ),
        _buildPackageCard(
          context,
          'assets/images/bride.jpg',
          'Bridal Make Up',
          '500 Dhs',
        ),
        _buildPackageCard(
          context,
          'assets/images/color.jpg',
          'Hair Color',
          '200 Dhs',
        ),
      ],
    );
  }

  Widget _buildPackageCard(
      BuildContext context, String imageUrl, String title, String price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Short description goes here',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.redAccent,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GalleryList extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/gallery1.jpeg',
    'assets/images/gallery2.jpg',
    'assets/images/gallery3.jpg',
    'assets/images/gallery4.jpg',
    // Ajoutez d'autres URLs d'images selon vos besoins
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Photos(4)',
          style: TextStyle(fontSize: 20), // Couleur du texte
        ),
        actions: [
          IconButton(
            icon: Row(
              children: [
                Icon(
                  Icons.add_a_photo,
                  color: Colors.redAccent, // Couleur de l'icône
                ),
                SizedBox(width: 5), // Espacement entre l'icône et le texte
                Text(
                  'Add Photo',
                  style: TextStyle(color: Colors.redAccent), // Couleur du texte
                ),
              ],
            ),
            onPressed: () {
              // Action à effectuer lors du clic sur le bouton "Add Photo"
              // Vous pouvez implémenter une logique pour ajouter une nouvelle photo ici
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Nombre de colonnes dans la grille
          crossAxisSpacing:
              8.0, // Espacement horizontal entre les éléments de la grille
          mainAxisSpacing:
              8.0, // Espacement vertical entre les éléments de la grille
          childAspectRatio:
              1.0, // Rapport hauteur/largeur des éléments (carrés dans ce cas)
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Action à effectuer lors du tap sur une image (par exemple, agrandir l'image)
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(ClickOnSalon());
}
