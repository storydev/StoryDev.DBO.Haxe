package storydev.dbo.core;

class BulkModifier
{

    static var lines:Array<String>;
    static var lastLine:Int;

    public static function appendQuery(query:String):Int
    {
        lines.push(query);
        var temp = lastLine;
        lastLine += 1;
        return temp;
    }

    public static function getQueryByIndex(index:Int):String
    {
        if (index < 0 || index > lines.length - 1)
            return null;

        return lines[index];
    }

    public static function removeQueryByIndex(index:Int)
    {
        var temp = new Array<String>();
        var offset = 0;
        for (i in 0...lines.length)
        {
            if (i == index)
            {
                offset = 1;
                continue;
            }

            temp.push(lines[i + offset]);
        }
        lines = temp;
    }

    public static function getAllLines():String
    {
        var queries = "";
        for (i in 0...lines.length)
        {
            if (i < lines.length - 1)
                queries += lines[i] + "\r\n";
            else
                queries += lines[i];
        }

        return queries;
    }

    public static function clear()
    {
        lines = [];
    }

}