

var scaleInMB = 1048576;
var stats = [];

db.getCollectionNames().forEach(function(coll) { 
  stats.push(db.getCollection(coll).stats({ scale: scaleInMB }));
});

stats.sort(function(a, b) {
  return b['size'] > a['size']; 
});

for (var key in stats) {
  print(stats[key]['ns'], '(size:', stats[key]['size'] + ') - (storageSize' + stats[key]['storageSize'] + ') - (count:', stats[key]["count"] + ')');
}
