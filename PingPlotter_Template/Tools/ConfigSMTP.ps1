Configuration SMTPConfig
{
  param ($MachineName)

  Node $MachineName
  {
    #Install the IIS Role
    WindowsFeature IIS
    {
        Name = "Web-Server"
        Ensure = "Present"
    }

     WindowsFeature WebServerManagementConsole
    {
        Name = "Web-Mgmt-Console"
        Ensure = "Present"
    }
	
	WindowsFeature SMTPServer 
	{ 
		Name = "SMTP-Server" 
		Ensure = "Present" 
	} 
  }
}
