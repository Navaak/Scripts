
db.getCollectionNames().forEach(function(coll) { 
  var stats = db.getCollection(coll).stats({ scale: 1048576 });

  print("Collection Name: ", coll);
  print("Storage Size in MB:", stats["storageSize"]);
  print("Size in MB:", stats["size"]);
  print("Total Index Size in MB:", stats["totalIndexSize"]);
  print("Records Num:", stats["count"]);

  print(".............................................");
  print("");
});

printjson(db.stats(1048576))
