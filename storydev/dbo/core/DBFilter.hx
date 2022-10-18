package storydev.dbo.core;

enum DBCondition
{
    None;
    And;
    Or;
}

enum DBOperator
{
    None;
    Equals;
    LessThan;
    LessThanEquals;
    GreaterThan;
    GreaterThanEquals;
    Contains;
    Begins;
    Ends;
}

class DBFilter
{

    public var fieldName:String;
    public var op:DBOperator;
    public var conditionValue:Any;
    public var nextCondition:DBCondition;

    public function new()
    {

    }

}