import 'package:flutter/material.dart';

class Product {
  final String name;

  const Product({this.name});
}

// 定义一个回调函数
typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final CartChangedCallback cartChangedCallback;
  final bool inCart;

  ShoppingListItem({Product product, this.inCart, this.cartChangedCallback})
      : product = product,
        super(key: new ObjectKey(product));

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle() {
    if (!inCart) return null;

    return new TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        cartChangedCallback(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        // 获取在数组中的索引值
        child: new Text(product.name[0]),
      ),
      title: new Text(
        product.name,
        style: _getTextStyle(),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  const ShoppingList({Key key, this.products}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {

  // 重写此方法仅被执行一次，可以用来完成一些必要的初始化工作
  @override
  void initState() {
    super.initState();
  }

  // 销毁Widget，可以重写此方法完成Widget的清理工作
  @override
  void dispose(){
    super.dispose();
  }

  Set<Product> _shoppingCart = new Set<Product>();

  void handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Shopping List'),
        ),
        body: new ListView(
            padding: new EdgeInsets.symmetric(vertical: 8.0),
            children: widget.products.map((Product product) {
              return new ShoppingListItem(
                  product: product,
                  inCart: _shoppingCart.contains(product),
                  cartChangedCallback: handleCartChanged);
            }).toList()));
  }
}
