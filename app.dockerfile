#docker build -f app.dockerfile -t digitalfindmore/demo_api_msr:1.0 .
#docker push digitalfindmore/demo_api_msr:1.0
FROM	softwareag/webmethods-microservicesruntime:10.15

EXPOSE	5555
EXPOSE	9999


ADD --chown=sagadmin licenseKey.xml /opt/softwareag/IntegrationServer/config/licenseKey.xml

ADD --chown=sagadmin application.properties /opt/softwareag/IntegrationServer/application.properties


ADD --chown=sagadmin MyPackage/ /opt/softwareag/IntegrationServer/packages/MyPackage/
ADD --chown=sagadmin WmJDBCAdapter/ /opt/softwareag/IntegrationServer/packages/WmJDBCAdapter/
ADD --chown=sagadmin JDBCAdapter/ /opt/softwareag/IntegrationServer/packages/JDBCAdapter/