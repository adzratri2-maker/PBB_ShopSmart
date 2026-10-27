import 'package:flutter/material.dart';

class Identitas {
  static const String nama = 'Adzraa Tri Nasyiah Putri';
  static const String npm = '5520124035';
  static const String jurusan = 'Teknik Informatika';
  static const String kelas = 'IF B 24';
  static const String email = 'adzratri2@gmail.com';

  static const String? fotoAsset = 'assets/foto.jpeg';
}

const Color kOrange = Color(0xFFEE4D2D);
const double kMaxPrice = 5000000;
void main() => runApp(const ShopSmartApp());

class ShopSmartApp extends StatelessWidget {
  const ShopSmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopSmart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: kOrange).copyWith(primary: kOrange),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: const Color(0xFFFFE0D6),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class Product {
  final int id;
  final String name;
  final String category;
  final int price;
  final double rating;
  final int sold;
  final int stock;
  final IconData icon;
  final MaterialColor color;
  final String description;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.rating,
    required this.sold,
    required this.stock,
    required this.icon,
    required this.color,
    required this.description,
  });
}

const List<String> kCategories = [
  'Semua',
  'Elektronik',
  'Fashion',
  'Rumah Tangga',
  'Olahraga',
  'Buku',
];

const List<Product> kProducts = [
  Product(
    id: 1,
    name: 'Headphone Bluetooth Wireless Bass Boost',
    category: 'Elektronik',
    price: 189000,
    rating: 4.8,
    sold: 2300,
    stock: 120,
    icon: Icons.headphones,
    color: Colors.indigo,
    description:
        'Headphone nirkabel dengan Bluetooth 5.3, baterai tahan hingga 30 jam, '
        'dan suara bass yang mantap. Nyaman dipakai seharian.',
  ),
  Product(
    id: 2,
    name: 'Smartwatch Fitness Tracker Anti Air',
    category: 'Elektronik',
    price: 450000,
    rating: 4.7,
    sold: 1200,
    stock: 60,
    icon: Icons.watch,
    color: Colors.teal,
    description:
        'Smartwatch dengan pemantau detak jantung, langkah, dan tidur. '
        'Tahan air IP68 dengan layar AMOLED yang cerah.',
  ),
  Product(
    id: 3,
    name: 'Laptop Ultrabook 14" RAM 16GB SSD 512GB',
    category: 'Elektronik',
    price: 4850000,
    rating: 4.9,
    sold: 340,
    stock: 15,
    icon: Icons.laptop_mac,
    color: Colors.blueGrey,
    description:
        'Laptop tipis dan ringan untuk kuliah dan kerja. Prosesor generasi '
        'terbaru, layar IPS 14 inci, dan baterai awet.',
  ),
  Product(
    id: 4,
    name: 'Kemeja Flanel Pria Lengan Panjang',
    category: 'Fashion',
    price: 95000,
    rating: 4.6,
    sold: 5400,
    stock: 200,
    icon: Icons.checkroom,
    color: Colors.red,
    description:
        'Kemeja flanel bahan katun lembut, tidak mudah luntur, dan nyaman '
        'dipakai untuk santai maupun kuliah.',
  ),
  Product(
    id: 5,
    name: 'Tas Ransel Laptop Anti Maling USB',
    category: 'Fashion',
    price: 159000,
    rating: 4.8,
    sold: 3100,
    stock: 90,
    icon: Icons.backpack,
    color: Colors.brown,
    description:
        'Ransel dengan kompartemen laptop 15.6", port USB pengisi daya, '
        'dan bahan waterproof.',
  ),
  Product(
    id: 6,
    name: 'Rice Cooker Digital 1.8 Liter',
    category: 'Rumah Tangga',
    price: 375000,
    rating: 4.7,
    sold: 870,
    stock: 45,
    icon: Icons.rice_bowl,
    color: Colors.orange,
    description:
        'Rice cooker digital dengan 8 menu memasak, lapisan anti lengket, '
        'dan fitur keep warm 12 jam.',
  ),
  Product(
    id: 7,
    name: 'Lampu Meja LED Belajar Dimmable',
    category: 'Rumah Tangga',
    price: 79000,
    rating: 4.5,
    sold: 1900,
    stock: 150,
    icon: Icons.lightbulb,
    color: Colors.amber,
    description:
        'Lampu belajar LED hemat energi dengan 3 mode warna cahaya dan '
        'kecerahan yang bisa diatur.',
  ),
  Product(
    id: 8,
    name: 'Sepatu Lari Running Ringan Pria',
    category: 'Olahraga',
    price: 275000,
    rating: 4.7,
    sold: 2600,
    stock: 75,
    icon: Icons.directions_run,
    color: Colors.green,
    description:
        'Sepatu lari dengan sol empuk dan bahan breathable. Cocok untuk '
        'jogging maupun olahraga harian.',
  ),
  Product(
    id: 9,
    name: 'Matras Yoga Anti Slip 8mm',
    category: 'Olahraga',
    price: 65000,
    rating: 4.6,
    sold: 4200,
    stock: 300,
    icon: Icons.self_improvement,
    color: Colors.purple,
    description:
        'Matras yoga tebal 8mm, permukaan anti slip, dan mudah digulung '
        'serta dibawa ke mana saja.',
  ),
  Product(
    id: 10,
    name: 'Buku Pemrograman Flutter untuk Pemula',
    category: 'Buku',
    price: 98000,
    rating: 4.9,
    sold: 760,
    stock: 80,
    icon: Icons.menu_book,
    color: Colors.cyan,
    description:
        'Panduan lengkap membangun aplikasi mobile dengan Flutter dan Dart, '
        'dari dasar hingga membuat aplikasi nyata.',
  ),
  Product(
    id: 11,
    name: 'Novel Fiksi Best Seller Edisi Terbaru',
    category: 'Buku',
    price: 85000,
    rating: 4.8,
    sold: 1500,
    stock: 110,
    icon: Icons.auto_stories,
    color: Colors.pink,
    description:
        'Novel fiksi terlaris dengan cerita menarik dan cetakan berkualitas.',
  ),
  Product(
    id: 12,
    name: 'Kamera Mirrorless 24MP + Lensa Kit',
    category: 'Elektronik',
    price: 4999000,
    rating: 4.9,
    sold: 120,
    stock: 8,
    icon: Icons.photo_camera,
    color: Colors.deepPurple,
    description:
        'Kamera mirrorless 24MP dengan video 4K, autofokus cepat, dan '
        'konektivitas WiFi untuk berbagi foto instan.',
  ),
];

String rupiah(int v) {
  final s = v.toString();
  final b = StringBuffer();
  for (int i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) b.write('.');
    b.write(s[i]);
  }
  return 'Rp$b';
}

String ringkas(int n) {
  if (n >= 1000) {
    final k = n / 1000;
    return '${k.toStringAsFixed(k % 1 == 0 ? 0 : 1)}rb';
  }
  return '$n';
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _searchCtrl = TextEditingController();

  int _tab = 0;
  String _query = '';
  RangeValues _price = const RangeValues(0, kMaxPrice);
  String _category = 'Semua';

  static const _titles = ['Beranda', 'Live', 'Notifikasi', 'Profil Saya'];

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  List<Product> get _filtered => kProducts.where((p) {
        final okName = p.name.toLowerCase().contains(_query.toLowerCase());
        final okCat = _category == 'Semua' || p.category == _category;
        final okPrice = p.price >= _price.start && p.price <= _price.end;
        return okName && okCat && okPrice;
      }).toList();

  bool get _filterActive =>
      _category != 'Semua' || _price.start > 0 || _price.end < kMaxPrice;

  PreferredSizeWidget _buildAppBar() {
    final isHome = _tab == 0;
    return AppBar(
      backgroundColor: kOrange,
      foregroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: isHome
          ? Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                controller: _searchCtrl,
                onChanged: (v) => setState(() => _query = v),
                style: const TextStyle(color: Colors.black87, fontSize: 14),
                decoration: InputDecoration(
                  hintText: 'Cari di ShopSmart',
                  hintStyle: const TextStyle(color: Colors.black38),
                  prefixIcon: const Icon(Icons.search, color: kOrange),
                  suffixIcon: _query.isEmpty
                      ? null
                      : IconButton(
                          icon: const Icon(Icons.close, size: 18),
                          onPressed: () {
                            _searchCtrl.clear();
                            setState(() => _query = '');
                          },
                        ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 11),
                ),
              ),
            )
          : Text(_titles[_tab],
              style: const TextStyle(fontWeight: FontWeight.w600)),
      actions: [
        if (isHome)
          IconButton(
            tooltip: 'Filter',
            onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
            icon: Badge(
              isLabelVisible: _filterActive,
              smallSize: 8,
              child: const Icon(Icons.tune),
            ),
          ),
        IconButton(
          tooltip: 'Keranjang',
          onPressed: () => _snack('Keranjang masih kosong'),
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
        const SizedBox(width: 4),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: kOrange),
            accountName: const Text(Identitas.nama,
                style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: const Text(Identitas.email),
            currentAccountPicture: const ProfileAvatar(radius: 36),
          ),
          _drawerItem(Icons.home_outlined, 'Beranda', () => _goTab(0)),
          _drawerItem(Icons.receipt_long_outlined, 'Pesanan Saya', null),
          _drawerItem(Icons.favorite_border, 'Wishlist', null),
          _drawerItem(Icons.local_offer_outlined, 'Voucher Saya', null),
          const Divider(),
          _drawerItem(Icons.person_outline, 'Profil Saya', () => _goTab(3)),
          _drawerItem(Icons.settings_outlined, 'Pengaturan', null),
          _drawerItem(Icons.help_outline, 'Pusat Bantuan', null),
        ],
      ),
    );
  }

  Widget _drawerItem(IconData icon, String title, VoidCallback? onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        if (onTap != null) {
          onTap();
        } else {
          _snack('Menu "$title" belum tersedia');
        }
      },
    );
  }

  void _goTab(int i) => setState(() => _tab = i);

  void _snack(String msg) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(msg)));
  }

  Widget _buildBody() {
    switch (_tab) {
      case 0:
        return _BerandaTab(
          products: _filtered,
          selectedCategory: _category,
          onCategory: (c) => setState(() => _category = c),
        );
      case 1:
        return const _LiveTab();
      case 2:
        return const _NotifikasiTab();
      default:
        return const ProfilTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 720;

    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      endDrawer: _tab == 0
          ? FilterDrawer(
              initialPrice: _price,
              initialCategory: _category,
              onApply: (price, cat) => setState(() {
                _price = price;
                _category = cat;
              }),
            )
          : null,
      body: Row(
        children: [
          if (isWide)
            NavigationRail(
              selectedIndex: _tab,
              onDestinationSelected: _goTab,
              labelType: NavigationRailLabelType.all,
              backgroundColor: Colors.white,
              indicatorColor: const Color(0xFFFFE0D6),
              selectedIconTheme: const IconThemeData(color: kOrange),
              selectedLabelTextStyle: const TextStyle(
                  color: kOrange, fontWeight: FontWeight.w600),
              destinations: _railDestinations(),
            ),
          Expanded(child: _buildBody()),
        ],
      ),
      bottomNavigationBar: isWide
          ? null
          : NavigationBar(
              selectedIndex: _tab,
              onDestinationSelected: _goTab,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home, color: kOrange),
                  label: 'Beranda',
                ),
                NavigationDestination(
                  icon: Icon(Icons.live_tv_outlined),
                  selectedIcon: Icon(Icons.live_tv, color: kOrange),
                  label: 'Live',
                ),
                NavigationDestination(
                  icon: Badge(
                      label: Text('3'),
                      child: Icon(Icons.notifications_outlined)),
                  selectedIcon: Badge(
                      label: Text('3'),
                      child: Icon(Icons.notifications, color: kOrange)),
                  label: 'Notifikasi',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person, color: kOrange),
                  label: 'Profil Saya',
                ),
              ],
            ),
    );
  }

  List<NavigationRailDestination> _railDestinations() => const [
        NavigationRailDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: Text('Beranda'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.live_tv_outlined),
          selectedIcon: Icon(Icons.live_tv),
          label: Text('Live'),
        ),
        NavigationRailDestination(
          icon: Badge(
              label: Text('3'), child: Icon(Icons.notifications_outlined)),
          selectedIcon:
              Badge(label: Text('3'), child: Icon(Icons.notifications)),
          label: Text('Notifikasi'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: Text('Profil Saya'),
        ),
      ];
}

class FilterDrawer extends StatefulWidget {
  final RangeValues initialPrice;
  final String initialCategory;
  final void Function(RangeValues price, String category) onApply;

  const FilterDrawer({
    super.key,
    required this.initialPrice,
    required this.initialCategory,
    required this.onApply,
  });

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  late RangeValues _price = widget.initialPrice;
  late String _category = widget.initialCategory;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: kOrange,
              padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
              child: Row(
                children: [
                  const Icon(Icons.tune, color: Colors.white),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text('Filter Produk',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text('Rentang Harga',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _priceBox(rupiah(_price.start.round())),
                      const Text('-'),
                      _priceBox(rupiah(_price.end.round())),
                    ],
                  ),
                  RangeSlider(
                    values: _price,
                    min: 0,
                    max: kMaxPrice,
                    divisions: 50,
                    activeColor: kOrange,
                    onChanged: (v) => setState(() => _price = v),
                  ),
                  const SizedBox(height: 16),
                  const Text('Kategori',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: kCategories.map((c) {
                      return ChoiceChip(
                        label: Text(c),
                        selected: _category == c,
                        selectedColor: const Color(0xFFFFE0D6),
                        checkmarkColor: kOrange,
                        labelStyle: TextStyle(
                          color: _category == c ? kOrange : Colors.black87,
                        ),
                        onSelected: (_) => setState(() => _category = c),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          foregroundColor: kOrange,
                          side: const BorderSide(color: kOrange)),
                      onPressed: () => setState(() {
                        _price = const RangeValues(0, kMaxPrice);
                        _category = 'Semua';
                      }),
                      child: const Text('Reset'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      style: FilledButton.styleFrom(backgroundColor: kOrange),
                      onPressed: () {
                        widget.onApply(_price, _category);
                        Navigator.pop(context);
                      },
                      child: const Text('Terapkan'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _priceBox(String text) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(text, style: const TextStyle(fontSize: 12)),
      );
}

class _BerandaTab extends StatelessWidget {
  final List<Product> products;
  final String selectedCategory;
  final ValueChanged<String> onCategory;

  const _BerandaTab({
    required this.products,
    required this.selectedCategory,
    required this.onCategory,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Color(0xFFEE4D2D), Color(0xFFFF9A5A)],
              ),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('GRATIS ONGKIR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800)),
                      SizedBox(height: 4),
                      Text('Diskon hingga 70% untuk produk pilihan',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Icon(Icons.local_shipping, color: Colors.white, size: 56),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 44,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: kCategories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (_, i) {
                final c = kCategories[i];
                final sel = c == selectedCategory;
                return ChoiceChip(
                  label: Text(c),
                  selected: sel,
                  showCheckmark: false,
                  backgroundColor: Colors.white,
                  selectedColor: kOrange,
                  labelStyle:
                      TextStyle(color: sel ? Colors.white : Colors.black87),
                  onSelected: (_) => onCategory(c),
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 4),
          sliver: SliverToBoxAdapter(
            child: Text('${products.length} produk ditemukan',
                style: const TextStyle(color: Colors.black54)),
          ),
        ),
        if (products.isEmpty)
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.search_off, size: 64, color: Colors.black26),
                  SizedBox(height: 8),
                  Text('Produk tidak ditemukan',
                      style: TextStyle(color: Colors.black54)),
                ],
              ),
            ),
          )
        else
          SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.68,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, i) => ProductCard(product: products[i]),
                childCount: products.length,
              ),
            ),
          ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProductDetailScreen(product: product),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: 'product-${product.id}',
                child: Container(
                  width: double.infinity,
                  color: product.color.shade50,
                  child: Icon(product.icon,
                      size: 64, color: product.color.shade400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 13)),
                  const SizedBox(height: 6),
                  Text(rupiah(product.price),
                      style: const TextStyle(
                          color: kOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 13, color: Colors.amber),
                      Text(' ${product.rating}',
                          style: const TextStyle(fontSize: 11)),
                      const Spacer(),
                      Text('${ringkas(product.sold)} terjual',
                          style: const TextStyle(
                              fontSize: 11, color: Colors.black54)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  void _snack(BuildContext context, String msg) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kOrange,
        foregroundColor: Colors.white,
        title: const Text('Detail Produk'),
        actions: [
          IconButton(
              icon: const Icon(Icons.share_outlined),
              onPressed: () => _snack(context, 'Link produk disalin')),
          IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () => _snack(context, 'Keranjang masih kosong')),
        ],
      ),
      body: ListView(
        children: [
          Hero(
            tag: 'product-${product.id}',
            child: Container(
              height: 280,
              color: product.color.shade50,
              child: Icon(product.icon, size: 120, color: product.color.shade400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(rupiah(product.price),
                    style: const TextStyle(
                        color: kOrange,
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(product.name,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    Text(' ${product.rating}  |  '),
                    Text('${ringkas(product.sold)} terjual'),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.favorite_border, color: kOrange),
                      onPressed: () =>
                          _snack(context, 'Ditambahkan ke Wishlist'),
                    ),
                  ],
                ),
                const Divider(height: 28),
                _info('Kategori', product.category),
                _info('Stok', '${product.stock} tersedia'),
                _info('Pengiriman', 'Gratis ongkir'),
                const Divider(height: 28),
                const Text('Deskripsi Produk',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(product.description,
                    style: const TextStyle(height: 1.5, color: Colors.black87)),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 56,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.black12)),
          ),
          child: Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.chat_outlined),
                  onPressed: () => _snack(context, 'Membuka chat penjual')),
              Expanded(
                child: InkWell(
                  onTap: () =>
                      _snack(context, '${product.name} masuk keranjang'),
                  child: Container(
                    color: const Color(0xFFFFE0D6),
                    alignment: Alignment.center,
                    child: const Text('+ Keranjang',
                        style: TextStyle(
                            color: kOrange, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => _snack(context, 'Lanjut ke pembayaran'),
                  child: Container(
                    color: kOrange,
                    alignment: Alignment.center,
                    child: const Text('Beli Sekarang',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _info(String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            SizedBox(
                width: 100,
                child: Text(label,
                    style: const TextStyle(color: Colors.black54))),
            Expanded(child: Text(value)),
          ],
        ),
      );
}

class _LiveTab extends StatelessWidget {
  const _LiveTab();

  @override
  Widget build(BuildContext context) {
    final lives = [
      ('Toko Gadget Official', 'Flash sale headphone & smartwatch', '2,4rb',
          Icons.headphones, Colors.indigo),
      ('Fashion Corner', 'Cuci gudang kemeja & tas ransel', '1,8rb',
          Icons.checkroom, Colors.red),
      ('Sport Station', 'Diskon sepatu lari & matras yoga', '980',
          Icons.directions_run, Colors.green),
      ('Rumah Nyaman', 'Promo peralatan dapur & lampu', '650',
          Icons.kitchen, Colors.orange),
    ];
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: lives.length,
      itemBuilder: (_, i) {
        final l = lives[i];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: l.$5.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(l.$4, color: l.$5.shade400, size: 32),
            ),
            title: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text('LIVE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 8),
                Expanded(
                    child: Text(l.$1,
                        maxLines: 1, overflow: TextOverflow.ellipsis)),
              ],
            ),
            subtitle: Text('${l.$2}\n${l.$3} penonton'),
            isThreeLine: true,
          ),
        );
      },
    );
  }
}

class _NotifikasiTab extends StatelessWidget {
  const _NotifikasiTab();

  @override
  Widget build(BuildContext context) {
    final items = [
      (Icons.local_shipping, 'Pesanan dalam pengiriman',
          'Paket kamu sedang dalam perjalanan.', Colors.green),
      (Icons.local_offer, 'Voucher baru untukmu',
          'Diskon 50% maksimal Rp30.000 untuk pembelian pertama.', kOrange),
      (Icons.flash_on, 'Flash Sale dimulai',
          'Jangan sampai kehabisan produk favoritmu.', Colors.amber),
      (Icons.check_circle, 'Pesanan selesai',
          'Terima kasih sudah berbelanja di ShopSmart.', Colors.blue),
    ];
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (_, i) {
        final n = items[i];
        return Container(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: n.$4.withAlpha(40),
              child: Icon(n.$1, color: n.$4),
            ),
            title: Text(n.$2,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(n.$3),
          ),
        );
      },
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  final double radius;
  const ProfileAvatar({super.key, this.radius = 56});

  @override
  Widget build(BuildContext context) {
    final foto = Identitas.fotoAsset;
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius - 3,
        backgroundColor: const Color(0xFFFFE0D6),
        backgroundImage: foto != null ? AssetImage(foto) : null,
        child: foto == null
            ? Icon(Icons.person, size: radius, color: kOrange)
            : null,
      ),
    );
  }
}

class ProfilTab extends StatelessWidget {
  const ProfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Column(
            children: [
              // Kartu identitas
              Card(
                elevation: 4,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFEE4D2D), Color(0xFFFF8A50)],
                        ),
                      ),
                      child: Column(
                        children: [
                          const ProfileAvatar(radius: 56),
                          const SizedBox(height: 12),
                          const Text(Identitas.nama,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text('Pembuat Tugas ShopSmart',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          _ProfileRow(Icons.badge_outlined, 'NIM / NPM',
                              Identitas.npm),
                          _ProfileRow(Icons.school_outlined, 'Jurusan',
                              Identitas.jurusan),
                          _ProfileRow(Icons.groups_outlined, 'Kelas',
                              Identitas.kelas),
                          _ProfileRow(Icons.email_outlined, 'Email',
                              Identitas.email),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              // Statistik
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _Stat('12', 'Pesanan'),
                      _Stat('8', 'Wishlist'),
                      _Stat('3', 'Voucher'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text('ShopSmart v1.0 - Tugas Pemrograman Piranti Bergerak',
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _ProfileRow(this.icon, this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: kOrange),
      title: Text(label,
          style: const TextStyle(fontSize: 12, color: Colors.black54)),
      subtitle: Text(value,
          style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              fontWeight: FontWeight.w600)),
    );
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;
  const _Stat(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: kOrange)),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }
}
