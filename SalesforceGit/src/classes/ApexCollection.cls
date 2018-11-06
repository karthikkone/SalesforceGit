public class ApexCollection {

    public static void CollectionsDemo(){
        List<String> listDemo = new List<String>();
        listDemo.add('List Element1');
        listDemo.add('List Element2');
        listDemo.add('List Element3');
        listDemo.add('List Element4');
        
        system.debug('List Elements: ' + listDemo);
        
        Set<String> setdemo = new Set<String>();
        setdemo.add('Set Element1');
        setdemo.add('Set Element1');
        setdemo.add('Set Element2');
        setdemo.add('Set Element3');
        
        system.debug('Set Elements: ' + setDemo);
        
        Map<String,String> mapDemo = new Map<String,String>();
        mapDemo.put('Key1','Val1');
        mapDemo.put('Key2','Val2');
        mapDemo.put('Key3','Val1');
        mapDemo.put('Key34','Val2');
        system.debug('Map Elements: ' + mapDemo);
    }
}