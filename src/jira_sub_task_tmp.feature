@tag1
Feature: Create Jira Sub-Tasks for AWO-${JIRA_NUMBER}

    Scenario: Create Sub-Task
        #Login
        Given Open Jira Ticket "AWO-${JIRA_NUMBER}"
        Then Input login information and login

        #DEV - Coding
        Then Click "More" button
        Then Click "Create sub-task" menu
        Then Input "DEV - Coding"
        Then Click "Affects Contract/s - All" by "#customfield_12870 option[value='14367']"
        Then Click "Line of Business - All" by "#customfield_12858 option[value='14338']"
        Then Click "Task Category" by "#customfield_12868"
        Then Click "Dev-Development" by "#customfield_12868 option[value='14357']"
        Then Input "${DEV_CODING_TIME}" to "Original Estimate" by "#timetracking_originalestimate"
        Then Screenshot
        Then Click "Save" button link

        #DEV - Test Case Review & Self-Testing
        Then Click "More" button
        Then Click "Create sub-task" menu
        Then Input "DEV - Test Case Review & Self-Testing"
        Then Click "Affects Contract/s - All" by "#customfield_12870 option[value='14367']"
        Then Click "Line of Business - All" by "#customfield_12858 option[value='14338']"
        Then Click "Task Category" by "#customfield_12868"
        Then Click "Dev-Test Case Review & Self-Testing" by "#customfield_12868 option[value='16812']"
        Then Input "${DEV_SELF_TESTING_TIME}" to "Original Estimate" by "#timetracking_originalestimate"
        Then Screenshot
        Then Click "Save" button link

        #DEV - Code Review
        Then Click "More" button
        Then Click "Create sub-task" menu
        Then Input "DEV - Code Review"
        Then Click "Affects Contract/s - All" by "#customfield_12870 option[value='14367']"
        Then Click "Line of Business - All" by "#customfield_12858 option[value='14338']"
        Then Click "Task Category" by "#customfield_12868"
        Then Click "Dev-Code Review" by "#customfield_12868 option[value='15900']"
        Then Input "${DEV_CODE_REVIEW_TIME}" to "Original Estimate" by "#timetracking_originalestimate"
        Then Screenshot
        Then Click "Save" button link

        #DEV - Unit Test
        Then Click "More" button
        Then Click "Create sub-task" menu
        Then Input "DEV - Unit Test"
        Then Click "Affects Contract/s - All" by "#customfield_12870 option[value='14367']"
        Then Click "Line of Business - All" by "#customfield_12858 option[value='14338']"
        Then Click "Task Category" by "#customfield_12868"
        Then Click "Dev-Unit Test" by "#customfield_12868 option[value='15901']"
        Then Input "${DEV_UNIT_TEST_TIME}" to "Original Estimate" by "#timetracking_originalestimate"
        Then Screenshot
        Then Click "Save" button link
