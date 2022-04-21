import { Given, Then } from "@cucumber/cucumber";
import { Selector as NativeSelector } from "testcafe";
import { __await } from "tslib";
import xpathSelector from "./xpath-selector";

export const Selector = (input, t) => {
  const ele = NativeSelector(input).with({ boundTestRun: t });
  if (!ele) {
    ele = xpathSelector(input);
  }
  return ele;
};

Then("Click {string} by {string}", async (t, [text, selector]) => {
  const ele = Selector(selector);
  await t.click(ele);
});

Then(
  "Input {string} to {string} by {string}",
  async (t, [text, label, selector]) => {
    const ele = Selector(selector);
    await t.click(ele).typeText(ele, text, { replace: true, paste: true });
  }
);

Then("Screenshot", async (t, name) => {
  await t.takeScreenshot();
});
