To deploy to an internal repository:

  1) Create settings.xml in the root project and set `<repo-url>`, `<username>` and `<password>` values.
  Do NOT commit this file back to the GIT (`.gitignore` will prevent this, but just in case):

      <?xml version="1.0" encoding="UTF-8"?>
      <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                            http://maven.apache.org/xsd/settings-1.0.0.xsd">


          <profiles>
              <profile>
                  <id>inject-repo-url</id>
                  <properties>
                      <repo-url> … </repo-url>
                  </properties>
              </profile>
          </profiles>

          <activeProfiles>
              <activeProfile>inject-repo-url</activeProfile>
          </activeProfiles>

          <servers>
              <server>
                  <id>internal.repo</id>
                  <username> … </username>
                  <password> … </password>
              </server>
          </servers>
      </settings>



  2) Run the following command:

  `mvn -s ./settings.xml deploy -P android-21`