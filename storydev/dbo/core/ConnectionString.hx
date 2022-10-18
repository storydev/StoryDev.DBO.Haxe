package storydev.dbo.core;

import storydev.dbo.scripting.DatabaseVendor;

enum AuthMode
{
    Windows;
    Sql;
}

class ConnectionString
{

    public var authenticationMode:AuthMode;
    public var fileOrFolder:String;
    public var vendor:DatabaseVendor;
    public var serverOrHost:String;
    public var port:Int;
    public var databaseName:String;
    public var username:String;
    public var password:String;

    public function new()
    {
        fileOrFolder = "";
        serverOrHost = "";
        databaseName = "";
        port = 0;
        username = "";
        password = "";
    }

    public function toString():String
    {
        if (vendor == DatabaseVendor.MySQL)
        {
            return 'Host=$serverOrHost;Port=$port;Database=$databaseName;Uid=$username;Pwd=$password';
        }
        else if (vendor == DatabaseVendor.Microsoft)
        {
            if (authenticationMode == AuthMode.Sql)
            {
                return 'Server=$serverOrHost,$port;Database=$databaseName;User Id=$username;Password=$password;TrustServerCertificate=Yes;';
            }
            else if (authenticationMode == AuthMode.Windows)
            {
                return 'Data Source=$serverOrHost; Initial Catalog=$databaseName; Integrated Security=true; TrustServerCertificate=Yes;';
            }
        }
        else if (vendor == DatabaseVendor.SQLite)
        {
            return 'Data Source=$fileOrFolder; Version=3;';
        }

        return "";
    }

}