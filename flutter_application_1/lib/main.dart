import 'package:flutter/material.dart';
import 'widgets/post_card.dart';
import 'widgets/promotional_banner.dart';
import 'widgets/image_carousel.dart';
import 'widgets/chat_tile.dart';
import 'widgets/numeric_counter.dart';

void main() {
  runApp(const AplicacionMomoland());
}

class AplicacionMomoland extends StatelessWidget {
  const AplicacionMomoland({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'momoland',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6C3FE0)),
        scaffoldBackgroundColor: const Color(0xFFF6F3FF),
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _currentIndex = 0;

  String _getTitle() {
    if (_currentIndex == 0) {
      return 'momoland';
    } else if (_currentIndex == 1) {
      return 'Chats';
    } else {
      return 'tickets';
    }
  }

  Widget _contenidoHome() {
    return ListView(
      children: const [
        BannerPromocional(
          title: '¡Festival de momos 2026!',
          description:
              'los mejores momos del mes y del año con invitados especiales como prepucio-man',
          icon: Icons.celebration,
          backgroundColor: Color(0xff47a1a9),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Text(
            'Descubre',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        CarruselImagenes(),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            'Publicaciones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 500,
          child: PostCard(
            // <- FALTABA ESTO
            userName: 'MR grasoso',
            avatarUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyHfB1XZAWTQpCexH0w1MEy4d58nmuuQBm38GdYXgiFadNBytc6ejUiQA&s=10',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjmr5khKR44wbb79IR3eTdIsgQU5LMts92vvmTpmM2qmEtJkKlmSihFV4&s=10',
            description: 'YA SABES QUE TIENES QUE HACER.',
          ),
        ),
        SizedBox(
          height: 500,
          child: PostCard(
            userName: 'Gonzaval06',
            avatarUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbDhnW4ZSfHNB65g5UNEtlPWsZYE9E3TY0OBPBtGO4IA&s=10',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkjawrYM8XbuXc4rZMFnwu9OVFyIohyjJZbniWvNhPekKWjxA8l1-aycKl&s=10',
            description: 'Soy Sarita y me como los mocos con sal',
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _contenidoChats() {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const [
        ChatTile(
          name: 'papa',
          lastMessage: 'y el perro se lo violo',
          time: '09:30',
          avatarUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2iNVLacHY8wl4dNFv3Jt0mbhwHj-pewAimW6emV0Yhw&s=10',
          unreadCount: 5,
        ),
        ChatTile(
          name: 'Juan',
          lastMessage: 'Horneamos unos momazos?',
          time: '10:45',
          avatarUrl:
              'https://static.wikia.nocookie.net/mamarre-estudios-espanol/images/6/65/Momazos_Juan.png/revision/latest?cb=20210325040507&path-prefix=es',
          unreadCount: 1,
        ),
        ChatTile(
          name: 'negra morronga',
          lastMessage: '①Foto',
          time: 'Ayer',
          avatarUrl:
              'https://instagram.fclo14-1.fna.fbcdn.net/v/t51.75761-19/509004709_18003584165786171_5183408841825700170_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_cat=106&_nc_map=urlgen_bucketless&ccb=7-5&_nc_sid=f7ccc5&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLnd3dy4xMDgwLkMzIn0%3D&_nc_ohc=BIG1sVNiAJkQ7kNvwF7NoLm&_nc_oc=AdoBg-MpWXcXMiphlTINvFjmHejJKE7Gh4J6TEKm4tmbKFE2fvH_BqQsAwsPAnVGq7s&_nc_zt=24&_nc_ht=instagram.fclo14-1.fna&_nc_gid=hNoysdURoZ3_RG0sh06WFA&_nc_ss=7baaf&oh=00_AQP3WGkaO_hTLuvGGQ4ABOlepashvpePIgGGjmeVpADeXQ&oe=6AD1655E',
          unreadCount: 3,
        ),
        ChatTile(
          name: 'diego maradona',
          lastMessage: 'papu... me cambiaste por juan?:C',
          time: 'Ayer',
          avatarUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6ym0HDpMqB0Wpb84IjzPTqqTe5KNicwvzP9CzMKl32veKpZR9UJ0VnMc&s=10',
          unreadCount: 1,
        ),
        ChatTile(
          name: 'Abelardo de la espriella2',
          lastMessage: 'bienvenido a la patria milagro',
          time: 'Dom',
          avatarUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ57BpTi3disHT6EYcbyI37Dhc4HGMQwOTpMiO4CKmOQFwH-Hb3okODo&s=10',
          unreadCount: 1,
        ),
        ChatTile(
          name: 'Abelardo de la espriella',
          lastMessage: 'creyo que podria escapar de la justicia?',
          time: 'Dom',
          avatarUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1tWs8Ma5D7m6ggN1-FPPl-7PwejEdGXfvfqT8LmzkSP9KE3o16A4emt9O&s=10',
          unreadCount: 7,
        ),
        ChatTile(
          name: 'el de las arepas',
          lastMessage: 'maldito ladron de arepas',
          time: 'Sab',
          avatarUrl:
              'https://www.shutterstock.com/image-photo/portrait-charismatic-vendor-selling-his-600w-2653816403.jpg',
          unreadCount: 3,
        )
      ],
    );
  }

  Widget _contenidoLaboratorio() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Concierto de Abelardo de la espriella',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
              'elige la cantidad de boletas que quieres para tirarle tomates (0 a 20).'),
          SizedBox(height: 24),
          ContadorNumerico(),
        ],
      ),
    );
  }

  Widget _getScreen() {
    if (_currentIndex == 0) {
      return _contenidoHome();
    } else if (_currentIndex == 1) {
      return _contenidoChats();
    } else {
      return _contenidoLaboratorio();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _getTitle(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff428ab9),
        foregroundColor: Colors.white,
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.notifications_none), onPressed: () {}),
        ],
      ),
      body: _getScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xff2349c8),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.science), label: 'Laboratorio'),
        ],
      ),
    );
  }
}
