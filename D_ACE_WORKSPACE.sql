prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_default_workspace_id=>53215578266680343703
);
end;
/
prompt  WORKSPACE 53215578266680343703
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   07:54 Wednesday April 26, 2023
--   Exported By:     DIYAS.NURULLAEV@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         23.1.0-15
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>53215578266680343703);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace D_ACE_WORKSPACE...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 53439404077023273701
 ,p_provisioning_company_id => 53215578266680343703
 ,p_short_name => 'D_ACE_WORKSPACE'
 ,p_display_name => 'D_ACE_WORKSPACE'
 ,p_first_schema_provisioned => 'WKSP_DACEWORKSPACE'
 ,p_company_schemas => 'WKSP_DACEWORKSPACE'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'D_ACE_WO'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'D_ACE_WORKSPACE'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '53215578142842343703',
  p_user_name                    => 'DIYAS.NURULLAEV@GMAIL.COM',
  p_first_name                   => 'Дияс',
  p_last_name                    => 'Нуруллаев',
  p_description                  => '',
  p_email_address                => 'diyas.nurullaev@gmail.com',
  p_web_password                 => '77EEB46C08F8EA2AFE63D205BC06BE03B62013F5D549A5155A98ADD0781BD690CB7477A7BF7A85BD12DAB16940D3AC9B5C9FB35D3745F5EDA7EE48646D9FD82D',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '111073851075029:111140893075029:111224556075029:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DACEWORKSPACE',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202303081706','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 53441167982730025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Template'
 ,p_template_description => 'Template used to log a bug.'
 ,p_template_text => 
'**Expected Behavior**'||chr(10)||
'- Tell us what you believe should happen.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Current Behavior**'||chr(10)||
'- Tell us what happens.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Who is affected**'||chr(10)||
'- Tell us who/what is affected. '||chr(10)||
''||chr(10)||
'**Possible Solution**'||chr(10)||
'- If you can, suggest how you would fix this bug.'||chr(10)||
''||chr(10)||
'**Steps to Reproduce**'||chr(10)||
'- Provide an unambiguous set of steps to reproduce, including screen shots and code snippets if appropriate.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
'- What'||
' were you trying to accomplish when the bug occurred. Does the bug only occur under certain conditions, or at certain times of day, and so forth.'||chr(10)||
''||chr(10)||
'**Environment**'||chr(10)||
''||chr(10)||
'- Version: '||chr(10)||
'- Platform: '||chr(10)||
'- Subsystem:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168017711025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Template'
 ,p_template_description => 'Template used to log a feature request.'
 ,p_template_text => 
'**Feature Summary**'||chr(10)||
' - Provide a one paragraph general overview of the feature request.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
' - Does this request relate to a specific situation or process? For example, "I am always frustrated when [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Please provide any supporting information, including screenshots, use cases, and so forth.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Preferred Solution**'||chr(10)||
'- Provide a clear description of what you would like to see impl'||
'emented.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Alternative Solutions**'||chr(10)||
'- Provide a description of alternative solutions or features considered, or workarounds used.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168131442025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'How Do I ...'
 ,p_template_description => 'Template used to ask a procedural question.'
 ,p_template_text => 
'**Question**'||chr(10)||
'- State your question or request as succinctly as possible.'||chr(10)||
''||chr(10)||
'**General Context**'||chr(10)||
'- What are you trying to do? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Where else have you looked or who else have you contacted to find an answer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Environment** '||chr(10)||
'Is this question specific to an environment, programming language or other area?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue,'||
' then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168235126025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Raised'
 ,p_template_description => 'A bug has been raised.'
 ,p_template_text => 
'A **Bug** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168388450025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168435744025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Filed'
 ,p_template_description => 'A feature request has been filed.'
 ,p_template_text => 
'A **Feature Request** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Feature Tracking System: '||chr(10)||
'- Feature ID: '||chr(10)||
'- URL to Feature Definition: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168592343025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Known Issue'
 ,p_template_description => 'Reference a known issue.'
 ,p_template_text => 
'After review, it has been determined that this is a known issue, see details below.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168673422025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Need More Information'
 ,p_template_description => 'Request for more information.'
 ,p_template_text => 
'**More information is needed for this issue:**'||chr(10)||
''||chr(10)||
'Please provide the information requested below. Without this information it will be difficult to triage and address the issue further.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 53441168748160025816 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Followup Action Required'
 ,p_template_description => 'A followup action is required.'
 ,p_template_text => 
'Please perform the following actions: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_created_by => 'DIYAS.NURULLAEV@GMAIL.COM'
 ,p_updated_on => to_date('20220926183604','YYYYMMDDHH24MISS')
 ,p_updated_by => 'DIYAS.NURULLAEV@GMAIL.COM'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
