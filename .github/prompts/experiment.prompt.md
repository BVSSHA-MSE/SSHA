---
name: experiment
description: This prompt is used to conduct experiments within the playground directory.
model: Auto (copilot)
agent: agent
argument-hint: Describe the experiment.
tools: [read, edit, execute]
---
# Experiment Prompt

Please use the playground directory to experiment with options before they are brought to production. Reference relevant instructions for the experiment.
Always follow these guidelines:
- Ensure all experiments are contained within the playground directory.
- Do not modify files outside the playground directory.
- Document the purpose and expected outcome of each experiment clearly.
- After completing the experiment, summarize the results and any observations.
- Use a test-first approach, ensure that experiments are reversible and have measurable outcome targets.
- Use Acceptance Test Driven Development (ATDD) principles to define clear acceptance criteria before starting and validate outcomes before concluding the experiment.
- Use Test Driven Development (TDD) principles to write tests that define desired functionality before implementing the experiment.
- Always validate the results of your experiments against the defined acceptance criteria and tests.