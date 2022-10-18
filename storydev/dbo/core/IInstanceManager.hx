package storydev.dbo.core;

interface IInstanceManager
{

    var structReference:DataStruct;
    var sourcePath:Map<String, String>;
    var connectionInfo:String;
    var items:Map<String, Array<Dynamic>>;
    var lastInsertedId:Int;
    
    

}