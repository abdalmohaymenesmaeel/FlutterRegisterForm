import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatefulWidget {
  const AnimatedListView({Key? key}) : super(key: key);

  @override
  State<AnimatedListView> createState() => _AnimatedListViewState();
}

class _AnimatedListViewState extends State<AnimatedListView> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _items = [];
  void _addItem() {
    final newIndex = _items.length;
    _items.insert(0,'Item ${newIndex + 1}');
    _listKey.currentState!.insertItem(0,duration: const Duration(seconds: 1));
  }
  void _removeItem(int index) {
    _listKey.currentState!.removeItem(
      index,
          (_, animation) {
            return SizeTransition(  sizeFactor: animation,
            child: Container(width: double.infinity,child:const Text("Deleted",style:TextStyle(fontSize: 24,color: Colors.white)),color: Colors.red, margin: EdgeInsets.all(5),)

            );
          },
      duration:const Duration(microseconds: 500000)
    );
    _items.removeAt(index);
  }
  Widget _buildItem(BuildContext context, String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: Container(
          color: Colors.purple,
          height: 50,
          child: ListTile(
            title: Text(item,style:const TextStyle(color: Colors.white,fontSize: 28),),
            trailing: IconButton(
              icon:const Icon(Icons.delete,color: Colors.white,),
              onPressed: () => _removeItem(_items.indexOf(item)),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 70,
            width: double.infinity,
            color: Colors.purple,
            child:  Text("Flutter App",style: TextStyle(fontSize: 28,color: Colors.white),),
          ),
          SizedBox(height: 20,),
          IconButton(icon:Icon(Icons.add,color: Colors.purple,),style:IconButton.styleFrom(
            elevation: 1,
          ) ,onPressed:_addItem,),
          SizedBox(height: 20,),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: 0,
              itemBuilder: (context, index, animation) {
                final item = _items[index];
                return _buildItem(context, item, animation);
              },
            ),
          ),
        ],
      ),
    );
  }
}
