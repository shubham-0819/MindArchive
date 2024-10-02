---
title: "Examples prompts"
author: "shubham"
---

# Prompts


## Create a text to speech pipeline

```markdown copy
# Markdown to Speech Pipeline Prompt

Create a flexible pipeline to convert markdown text files into optimized text for speech synthesis, with the eventual goal of producing audio output. The pipeline should strike a balance between simplicity and customization.

## Requirements:

1. Input: Accept markdown text files (.md)
2. Output: Produce text optimized for text-to-speech (TTS) engines
   - The output should be in a format that can be easily fed into common TTS engines
   - (Optional) Include a simple way to connect the output to a TTS engine for audio generation

3. Processing Steps:
   a. Read the markdown file
   b. Strip or simplify markdown syntax
   c. Optimize text for speech (e.g., expand abbreviations, handle numbers and symbols)
   d. Format output for TTS engine compatibility

4. Flexibility:
   - Allow basic customization options (e.g., output format, level of text optimization)
   - Keep the core pipeline simple, but design it to be extendable in the future

5. Technology:
   - Preferably use Python for the main processing
   - (Optional) Include shell scripts for file handling and pipeline execution

6. Documentation:
   - Provide clear comments in the code
   - Include a README with usage instructions and customization options

## Additional Considerations:

- Error handling for invalid input files or processing issues
- Basic logging for tracking the conversion process
- Suggestions for future enhancements (e.g., handling specific markdown elements, voice customization)

## Example Usage:

Provide a simple example of how to use the pipeline, such as:

python markdown_to_speech.py input.md --output optimized_text.txt

## Deliverables:

1. Python script(s) for the core conversion logic
2. (Optional) Shell script for easy execution
3. README file with instructions and documentation
4. Sample input markdown file for testing

Please implement this pipeline, focusing on creating a solid foundation that can be easily extended in the future. Prioritize clean, well-documented code over advanced features at this stage.

```