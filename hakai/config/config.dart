import 'package:mongo_dart/mongo_dart.dart';

void main() async {
  var db = Db('mongodb://pheltongrey:daikaminhz@cluster0-shard-00-00.mongodb.net:27017,cluster0-shard-00-01.mongodb.net:27017,cluster0-shard-00-02.mongodb.net:27017/hakai?retryWrites=true&w=majority');
  
  await db.open();
  print('Connected to MongoDB');

  // Thao tác với collection
  var collection = db.collection('your_collection');
  var result = await collection.find().toList();
  print(result);

  await db.close();
}



