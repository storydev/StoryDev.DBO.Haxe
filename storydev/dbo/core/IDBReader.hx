package storydev.dbo.core;

import haxe.io.BytesBuffer;
import storydev.dbo.core.AllTypes.DateTime;
import storydev.dbo.core.AllTypes.F128;
import storydev.dbo.core.AllTypes.F64;
import storydev.dbo.core.AllTypes.F32;
import storydev.dbo.core.AllTypes.U64;
import storydev.dbo.core.AllTypes.U32;
import storydev.dbo.core.AllTypes.U16;
import storydev.dbo.core.AllTypes.S64;
import storydev.dbo.core.AllTypes.S32;
import storydev.dbo.core.AllTypes.S16;

interface IDBReader
{
    function getStringWithName(column:String):String;
    function getStringWithIndex(i:Int):String;
    function getInt16WithName(column:String):S16;
    function getInt16WithIndex(i:Int):S16;
    function getInt32WithName(column:String):S32;
    function getInt32WithIndex(i:Int):S32;
    function getInt64WithName(column:String):S64;
    function getInt64WithIndex(i:Int):S64;
    function getUInt16WithName(column:String):U16;
    function getUInt16WithIndex(i:Int):U16;
    function getUInt32WithName(column:String):U32;
    function getUInt32WithIndex(i:Int):U32;
    function getUInt64WithName(column:String):U64;
    function getUInt64WithIndex(i:Int):U64;
    function getFloatWithName(column:String):F32;
    function getFloatWithIndex(i:Int):F32;
    function getDecimalWithName(column:String):F128;
    function getDecimalWithIndex(i:Int):F128;
    function getBytes(i:S32, fieldOffset:S64, buffer:BytesBuffer, bufferOffset:S32, length:S32):S64;
    function getOrdinal(name:String):S32;
    function getBooleanWithName(column:String):Bool;
    function getBooleanWithIndex(i:Int):Bool;
    function getDoubleWithName(column:String):F64;
    function getDoubleWithIndex(i:Int):F64;
    function getDateTimeWithName(column:String):DateTime;
    function getDateTimeWithIndex(i:Int):DateTime;
    function read():Bool;
}