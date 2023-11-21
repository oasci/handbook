# Jobs to be done

A Job to be Done (JTBD) is a framework, or lens, for viewing products and solutions in terms of the jobs users are trying to achieve.
It's about understanding the goals that people want to accomplish.
It lets us step back from our organization and understand the objectives of the people we serve.
It opens the door to innovation.

## What is a JTBD?

-   **A lens for viewing your products and solutions in terms of the jobs customers are trying to achieve.**
    Instead of looking at the demographic factors of usage, JTBD focuses on what people seek to achieve in a certain circumstance ([see Clayton Christensen's Milkshake video](https://www.youtube.com/watch?v=sfGtw2C95Ms)).
-   **A way to understand the goals that people want to accomplish.**
    Achieving those goals amounts to progress in their lives. Jobs are also the needs, motivators, and drivers of behavior: they predict why people behave the way they do.
    This moves beyond mere correlation and strives to find causality.
-   **A chance to step back from your business and understand the objectives of the people you serve.**
    To innovate, don’t ask customers about their preferences, but instead understand their underlying needs and motivations.
-   **A framework for improving collaboration and communication across disciplines and stage groups.**
    Since JTBD isn't particular to any expertise, it can be used by all of these disciplines to focus team members on the core problem that the business aims to solve for its customers.
    For example, rather than marketing having personas, UX having user stories, and so on, the company can use JTBD to establish common, high-level definitions that everyone can use.

## What isn't a JTBD?

-   **They are not about your product, service, or brand.**
    People “hire” products to get a job done.
    Instead of focusing on your own solution, you must first understand what people want and why that’s important to them.
-   **They are not about specific products or particular solutions.**
    Instead, they focus on the process that people go through to solve a problem.
-   **They are not a replacement for the user persona framework.**
    The two contrasting viewpoints share similarities without being incompatible.
    They can be used together to gain a more holistic view of the product and its users.
    For example, you may want to consider the job statement and process while drafting the workflow of a new feature, but you may want to check specific content on a page suitable for a particular user persona.  

## Terminology

First, let's set the terminology we use for JTBD.

-   **Job performer**: The person who does the job. Usually, we talk about these people in terms of personas. They are [buyers](/handbook/product/personas/#buyer-personas), [developers](/handbook/product/personas/#sasha-software-developer), [sysadmins](/handbook/product/personas/#sidney-systems-administrator), and so on.
-   **Job**: Something a customer wants to accomplish. For example, the main job of a OASCI customer could be stated as, "build and deploy software." The job always follows the pattern (verb + object + clarifier) and is also refered to as the _job statement_.
-   **Circumstance**: Describes the circumstances a person is in when they need a job done.
-   **Need**: A job performer's desired outcome or end state. The need statement follows the pattern (direction + measure + object + clarifier), for example, _minimize the time it takes to review an MR_.
-   **Job story**: A succinct statement that brings together the circumstance, goal, and outcome of a job.
-   **Main job**: The primary job the preformer want to accomplish.
-   **Small job**: A smaller, more practical job that corresponds roughly to steps or stages in a main job.
-   **Micro-job**: A task related to a little job.

## Examples and tips

JTBDs are difficult to get right can take some time to refine.
Below is an example of a job statement and its versions throughout the refinement process.
The feedback provided for each version can offer some helpful tips to keep in mind when you're writing them.

**Version 1:** When new features are added to a product, I want to know if and how those changes impact performance so that I can ensure my product works as expected for users.

-   "When new features are added to a product" - Make sure to describe the circumstances the job performer is in when they need to get the job done. New features being added is not an isolated act.
-   "I want to know if and how those changes impact performance" - This job can be a bit more specific (instead of using "if and how"). It will be easier to validate when you focus on one aspect of the need/outcome for the job performer.
-   "so that I can ensure my product works as expected for users" -  How can you make the outcome for the job performer more specific? Why is it important that the product works as expected? What is the desired end state and/or feeling that a job performer has for doing this job? Make sure to describe the circumstances that the job performer is in when they need to get the job done.

**Version 2:** When I or my teammate is making a code change to our product, I want to know if the change introduces a latency for my end users so that I can ensure users are satisfied with the performance of the product and continue to use it

-   "When I or my teammate is making a code change to our product" - We don't need to specify the "who" this is for since it seems to apply to any code changes to the product.
-   "so that I can ensure users are satisfied with the performance of the product and continue to use it" - Handling a latency doesn't measure satisfaction, but it deals directly with usability.

**Final version:** When a code change is made, I want to know if the change introduces a latency for my end users so that I can meet the quality standards of performance response time to maintain usability for our end users.

-   ✅ Describe specific circumstances that the job performer is in when they need to get the job done.
-   ✅ Focus on one specific goal or aspect that the job performer needs to complete when writing out the job statement so that it makes it easier to validate in the future.
-   ✅ Focus the outcome of the job statement around the desired end state or feeling for the job performer as well as the reason why completing the job is so important. Ensure the outcome is something that is measurable and can be used to validate the job statement.
