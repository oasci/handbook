<h1 align="center">OASCI Handbook</h1>

<h4 align="center">The handbook guiding OASCI structure and pursuits</h4>

## About

**O**pen **a**cademic **sci**ence (OASCI) is a people-first embodiment of the traditional academic framework of research and education.
Academic education and research are often driven by funding pursuits and a desire for recognition.
OASCI uses a forward-thinking, inclusive, and progressive approach that welcomes all those passionate about exploring, learning, and sharing knowledge.
Our non-profit's core mission is to provide cutting-edge, open, accessible educational and research resources and opportunities.

## Deploying

We use [bump-my-version](https://github.com/callowayproject/bump-my-version) to release a new version.
This will create a git tag that is used by [poetry-dynamic-version](https://github.com/mtkennerly/poetry-dynamic-versioning) to generate version strings.

However, we are using [Calendar Versioning](https://calver.org/) which means we need to manually specify new versions.
For example, to bump the version to November 8, 2024, you would run the following command after activating the relevant conda environment.

```bash
bump-my-version bump --new-version 2024.11.8
```

After releasing a new version, you need to push and include all tags.

```bash
git push --follow-tags
```

## Acknowledgements

Some of this content is adapted with permission from the following sources:

- [GitLab's Handbook](https://handbook.gitlab.com/).

## License

Code contained in this Handbook is released under the [MIT License](https://spdx.org/licenses/MIT.html) as specified in [`LICENSE_CODE`](https://gitlab.com/oasci/handbook/-/blob/main/LICENSE_CODE.md), which grants you the freedom to use, modify, and distribute it as long as you include the original copyright notice and disclaimer.

All other data, information, documentation, and associated content provided within this project are released under the [Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) as specified in [`LICENSE_INFO`](https://gitlab.com/oasci/handbook/-/blob/main/LICENSE_INFO.md).
This means you are free to share and adapt the non-code elements, but you must give appropriate credit to the original source and indicate if changes were made.
