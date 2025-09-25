//Muxammadxon Asrorov
//PU220071

// 1. The ‘Container‘ Widget
// 1.1
Container(
  padding: const EdgeInsets.all(16.0),
  color: Colors.redAccent,
  height: 150,
  width: 100,
  child: const Text('Hello!'),
)

// 1.2
Container(
  padding: const EdgeInsets.all(16.0),
  color: Colors.redAccent,
  height: 150,
  width: 100,
  child: const Icon(Icons.home, color: Colors.white),
)

// 1.3
Container(
  padding: const EdgeInsets.all(16.0),
  height: 150,
  width: 100,
  decoration: BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.circular(16.0),
  ),
  child: const Icon(Icons.home, color: Colors.white),
)

// 1.4
Container(
  margin: const EdgeInsets.all(20.0),
  padding: const EdgeInsets.all(16.0),
  height: 150,
  width: 100,
  decoration: BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.circular(16.0),
  ),
  child: const Icon(Icons.home, color: Colors.white),
)



// 2. The ‘Column‘ & ‘Row‘ Widgets
// 2.1
Column(
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)

// 2.2
Row(
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)

// 2.3
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)

// 2.4
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: const <Widget>[
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
    Icon(Icons.star, size: 50),
  ],
)



// 3. The ‘TextField‘ Widget
// 3.1
const TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
  ),
)

// 3.2
const TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
  ),
)

// 3.3
const TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
    icon: Icon(Icons.lock),
  ),
)

// 3.4
final TextEditingController _controller = TextEditingController();

TextField(
  controller: _controller,
  obscureText: true,
  decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your password',
    icon: Icon(Icons.lock),
  ),
)



// 4. Advanced Layout (‘Expanded‘, ‘Flex‘, ‘Spacer‘)
// 4.1
Row(
  children: <Widget>[
    Expanded(child: Container(height: 100, color: Colors.red)),
    Expanded(child: Container(height: 100, color: Colors.green)),
  ],
)

// 4.2
Row(
  children: <Widget>[
    Expanded(flex: 1, child: Container(height: 100, color: Colors.red)),
    Expanded(flex: 2, child: Container(height: 100, color: Colors.green)),
  ],
)

// 4.3
Column(
  children: <Widget>[
    Expanded(flex: 1, child: Container(height: 100, color: Colors.red)),
    Expanded(flex: 2, child: Container(height: 100, color: Colors.green)),
  ],
)

// 4.4
Row(
  children: <Widget>[
    Container(width: 100, height: 100, color: Colors.red),
    const Spacer(),
    Container(width: 100, height: 100, color: Colors.green),
  ],
)



// 5. Widget Tree Challenges
// Challenge 1: User Profile Card
Container(
  padding: const EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(16.0),
  ),
  child: Column(
    children: [
      Row(
        children: [
          const CircleAvatar(child: Text('A')),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('User Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('@username', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      const Text('A short bio about the user goes here...'),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Follow')),
          ElevatedButton(onPressed: () {}, child: const Text('Message')),
        ],
      ),
    ],
  ),
)

// Challenge 2: Product List Item
Container(
  padding: const EdgeInsets.all(16.0),
  child: Row(
    children: [
      SizedBox(
        width: 100,
        height: 100,
        child: Image.network('https://via.placeholder.com/100'),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Product Title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('A brief description of the item...'),
            Text('\$99.99', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    ],
  ),
)
