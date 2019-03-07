// Pre-setup: Like ENable Person Account
// Separating it because Custom Setting doesn't show in records below if inserted in same transaction
       

//Reset the default admin user password because Scratch orgs don't supply password to be able to login directly
User u = [select id,name, LastName, FirstName, username, ProfileId,  alias, email, TimeZoneSidKey, LanguageLocaleKey, EmailEncodingKey, LocaleSidKey
          from User where IsActive=true and Profile.Name='System Administrator' limit 1];

System.resetPassword (u.Id, true);


FscDemoPack_DataSetup.preSetupForDemoData();
