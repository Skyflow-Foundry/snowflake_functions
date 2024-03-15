GRANT CREATE APPLICATION PACKAGE ON ACCOUNT TO ROLE accountadmin;

SET APP_PACKAGE_NAME = 'skyflow_app_package';
SET STAGE_NAME = 'skyflow_app_package.stage_content.skyflow_app_stage';

DROP APPLICATION PACKAGE IF EXISTS IDENTIFIER($APP_PACKAGE_NAME);

CREATE APPLICATION PACKAGE IDENTIFIER($APP_PACKAGE_NAME);

USE APPLICATION PACKAGE IDENTIFIER($APP_PACKAGE_NAME);

CREATE SCHEMA stage_content;

CREATE OR REPLACE STAGE IDENTIFIER($STAGE_NAME)
  FILE_FORMAT = (TYPE = 'csv' FIELD_DELIMITER = '|' SKIP_HEADER = 1);