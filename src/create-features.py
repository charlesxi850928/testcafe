import os


def createOneStorySubTasks(ticketNum, codingTime, selfTestingTime, codeReviewTime, unitTestTime):
    with open('src/jira_sub_task_tmp.feature') as f:
        lines = f.read()
        lines = lines.replace("${JIRA_NUMBER}", ticketNum)
        lines = lines.replace("${DEV_CODING_TIME}", codingTime)
        lines = lines.replace("${DEV_SELF_TESTING_TIME}", selfTestingTime)
        lines = lines.replace("${DEV_CODE_REVIEW_TIME}", codeReviewTime)
        lines = lines.replace("${DEV_UNIT_TEST_TIME}", unitTestTime)
        print(lines)

        with open('test/e2e/specs/jira_sub_task_'+ticketNum+'.feature', 'w') as f:
            lines = f.write(lines)


def __main__():
    stories = [{"ticketNum": '190709', "codingTime": '', "selfTestingTime": '8h', "codeReviewTime": '2h', "unitTestTime": '2h'},
               {"ticketNum": '190707', "codingTime": '', "selfTestingTime": '8h',
                   "codeReviewTime": '2h', "unitTestTime": '2h'}]
    for story in stories:
        createOneStorySubTasks(story["ticketNum"], story["codingTime"],
                               story["selfTestingTime"], story["codeReviewTime"], story["unitTestTime"])


__main__()
