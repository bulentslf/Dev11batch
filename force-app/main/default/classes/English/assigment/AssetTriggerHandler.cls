  // •	Create an apex Assethandler class
public  class AssetTriggerHandler {
    // Create an apex Assethandler class
    // o	Create a static method Assethandlerupdate which returns nothing and accepts LIST<ASSET>, LIST<ASSET>,MAP<ID,ASSET>,MAP<ID,ASSET>
    public static void Assethandlerupdate(LIST<ASSET> newlist, LIST<ASSET> oldlist, MAP<ID,ASSET>newMap, MAP <ID,ASSET> oldMap ) {
      
    for (asset item : newList) {

        if (item.id == null) {
            if (item.status == 'Shipped') {
                item.description = 'Asset is shipped';
            }
        if (item.status == 'Installed') {
            item.description = 'Asset is installed';
        }
            
        }else {
            if (item.status == 'Shipped' && oldMap.get(item.id).status != 'Shipped') {
                item.description ='Asset is shipped';
            }
            if (item.status == 'Installed' && oldMap.get(item.id).status != 'Installed') {
                item.description ='Asset is installed';
                
            }
        }
    }
 }
}
