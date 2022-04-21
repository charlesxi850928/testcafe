import { Given, Then } from "@cucumber/cucumber";
import config from "../config";
import { __await } from "tslib";
import { Selector } from "./common";

Given("Open Jira Ticket {string}", async (t, [ticketNum]) => {
  await t.maximizeWindow().navigateTo(config.jira.url + "/browse/" + ticketNum);
});

Then("Input login information and login", async (t, [username, password]) => {
  const userNameInput = Selector("#login-form-username");
  const passwordInput = Selector("#login-form-password");
  await t.click(userNameInput).typeText(userNameInput, config.jira.username, {
    replace: true,
    paste: true,
  });
  await t.click(passwordInput).typeText(passwordInput, config.jira.password, {
    replace: true,
    paste: true,
  });
  const loginBtn = Selector("#login-form-submit");
  await t.click(loginBtn);
});

Then('Click "More" button', async (t) => {
  const ele = Selector("#opsbar-operations_more");
  await t.click(ele);
});

Then('Click "Create sub-task" menu', async (t) => {
  const ele = Selector("#create-subtask");
  await t.click(ele);
});

Then("Input {string}", async (t, [text]) => {
  const ele = Selector("#create-subtask-dialog #summary");
  await t.click(ele).typeText(ele, text, { replace: true, paste: true });
});

Then('Click "Cancel" button link', async (t) => {
  const ele = Selector("#create-subtask-dialog a.cancel");
  await t.setNativeDialogHandler(() => true).click(ele);
});

Then('Click "Save" button link', async (t) => {
  const ele = Selector("#create-subtask-dialog #create-issue-submit");
  await t.setNativeDialogHandler(() => true).click(ele);
});
