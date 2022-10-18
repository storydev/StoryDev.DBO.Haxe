package storydev.dbo.core;

interface IDBObject
{
    function insert():Void;
    function update(filters:...DBFilter):Void;
    function delete():Void;
}