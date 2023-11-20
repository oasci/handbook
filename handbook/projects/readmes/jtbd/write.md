# How to write JTBDs

A core strength of JTBD is its structure, which clearly separates out various aspects of achieving objectives.
The who, what, how, why, and when/where are analyzed individually, giving both precision and flexibility to JTBD methods.

When we refer to JTBD in our work at OASCI, we are referring to the **job story**.
A job story provides the context of what is happening while someone is trying to accomplish a goal.
In contrast, a job is _only_ the thing they want to accomplish. A job story includes: the job, the circumstance, and the need.

We write our job stories using the standard format:

**"When [Circumstance], I want to [job], so I can [need/outcome]."**

!!! example

    When I am on triage rotation, I want to address the business-critical risks in my organizations assets, so I can minimize the likelihood of a security incident.

Job stories are modular, allowing us to innovate and solve problems in different ways.
A practical application of this flexibility is to craft the job story at a lower altitude making it more applicable to the problem area we are addressing.
Keep in mind that the circumstance and need will not change from the main job story; however, by including more detail in the form of the job stage or step [small job(s)] and narrowing our job (I want to) down to the micro-job level, we achieve a job story that can guide our work more tactically.

**"When [Circumstance + job stage/step], I want to [micro-job], so I can [need]**

!!! example

    When I am on triage rotation and prioritizing business-critical risks, I want to review the most recent risks detected in my assets, so I can minimize the likelihood of a security incident.

JTBD are difficult to get right.
Before you begin, you have to have a clear understanding of what someone is wanting to accomplish, and that understanding should be validated with past research and customer conversations.

It is crucial to ensuring that the job stories are grounded in experience and not theory.
We must have a high level of confidence in our user's jobs, circumstances, and needs before we can put them into use.

## _Who_ is the focus of a JTBD?

When writing a JTBD, focus on the **job performer**.
In other words, write it from the perspective of an end user who is trying to do the job.
Conversely, do not write a JTBD from the perspective of what OASCI wants to achieve.

Other functions within the job ecosystem to consider include the following:

-   **Approver:** Someone who authorizes the acquisition of a solution
-   **Reviewer:** Someone who examines a solution for appropriateness
-   **Technician:** The person who integrates a solution and gets it working
-   **Manager:** Someone who oversees a job performer while performing the job
-   **Audience:** People who consume the output of performing the job
-   **Assistant:** A person who aids and supports the job performer in getting the job done

Note that these different roles don’t refer to job titles. Instead, they represent different functional actors within the context of getting a job done.

## _What_ does the job performer want to accomplish (independent of your solution)?

The aim of the job performer is not to interact with your company but to get something done.
Because they don’t mention solutions or technology, jobs should be as timeless and unchanging as possible.
Strive to frame jobs in a way that makes them stable, even as technology changes.

### Is a Job Performer the same as a User Persona?

No, a user persona represents a person in an organization with a particular job title.
That persona may have 3-4 main jobs, which can be expressed using the JTBD framework.
Similarly, the role of job performer can be taken by more than one user persona.

While using the JTBD framework, a user's job title or personal details are not as crucial as their capability to successfully carry out the job process.
As a result, the two frameworks do have some overlap but are not designed to fit together perfectly.

## _How_ will the job get done? (objective of the JTBD)

The process follows job performers as they move through different goal stages in order to accomplish their goal.

-   Understanding the process of the job performer’s intent is key to JTBD.
-   You can illustrate the job in a chronological map using a sequence of stages, such as Beginning, Middle, and End.
-   Each stage can contain multiple user stories. Be careful not to get into the tasks/physical activities just yet.
-   Because the job has to be “done,” be sure to formulate the job in a way that has an end state.
-   Once you have the sequence, specify the tasks needed to complete each user story.

## _Why_ does the performer act in a certain way? What are their requirements or intended outcomes during the job process?

Why do the job performers act the way they do while getting a job done?
Their actions might be tied to achieving specific outcomes, such as producing a specific report.
Their actions might also be tied to requirements or processes to which they must adhere.

In JTBD, a need is seen in relation to getting the job done.
Needs aren’t demands from a solution, but an individual’s requirements for getting a job done.
Needs aren’t aspirations, either, which are above the job in terms of abstraction.

!!! example

    If a main job is defined as *file taxes*, their need may be to *minimize the time it takes to gather documents or maximize the likelihood of getting a return*.

!!! example

    Expressions like “have financial peace of mind” or “provide for my family” are motivations beyond getting the job.
    These are important aspects to consider later, but not needs related to reaching the objective of filing taxes.

## _When and where_ does the job get done?

The circumstance (or contextual factors) that frame job execution include when and where the job gets done; for example, aspects around time, manner, and place. A job without context is not complete and cannot provide strategic direction. There is a dependency between formulating a job and knowing the circumstances.

JTBD uses circumstances to make them relevant to an organization. The conditions around the job give it meaning and relevance and therefore must be considered. Adding contextual detail to the situation also helps greatly when designing a solution.

Example: _Get breakfast_ is a very broad job that could apply to many situations. But for a fast food restaurant, _get breakfast on the go_, is a more precise job to focus on.

Example: A solution for the job _get breakfast on the go_ could include everything from going to a restaurant or diner to eating a packed lunch at a desk. But when considering specific circumstances like _when late for work, while commuting_ and _when cost is a factor_, a morning milkshake might be a better solution for the job.

### _How can I use_ JTBD?

JTBD can be used to obtain valuable insights through numerous methods, from screeners to heuristic evaluations.
You can see more detailed uses of JTBD on our [How to use Jobs to Be Done](https://about.gitlab.com/handbook/product/ux/jobs-to-be-done/using-jtbd/) handbook page. If you plan on using one of these methods, remember to use interviews to validate your jobs before spending too much time learning about inaccurate jobs.
