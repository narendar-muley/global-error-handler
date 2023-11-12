#global-error-handler

API implementation projects can use this plugin to handle APIKit errors and send notification using Apigee Email API. Refer (https://bitbucket.entity.com/projects/MULE21GBD1/repos/ols-enrollment-sys-api) for usage reference.


## Installation instructions

**Note:** If you need to make changes to this asset you **must** update the 
version number to avoid having stale references in your local or remote 
repositories

For applications to reference the new version, you will need to either install 
the updated POM into your local Maven repository or deploy it to a remote
one (e.g., Anypoint Exchange). 

To deploy to Mulesoft Exchange, Update the version and use ```mvn deploy``` command.


## Usage reference

To reference the global error handler in any of the API implementation projects, add the below dependency in pom.xml and refer to the usage project mentioned above:
```
<dependency>
  <groupId>{Anypoint.OrgID}</groupId>
  <artifactId>global-error-handler</artifactId>
  <version>1.0.4</version>
  <classifier>mule-plugin</classifier>
</dependency>
```

update `version ` to match the new version number published to exchange.

