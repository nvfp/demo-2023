This test is to check whether or not the Liquid tags are only evaluated during the build.

I mean, {{ site.time }} will be evaluated to a fixed number after Jekyll builds the website. After Jekyll builds the website, only the static output is kept on the server. This means {{ site.time }} will ***always*** be equal to the time during the build.

That being said, it means if we don't rerun the Jekyll build process and reupload the static files, the 'posted date' will be incorrect.

Let's say we make a blog post today, and we build and upload the static files (Jekyll build) to the server (GitHub Pages) today as well. This means the 'posted date' will be evaluated as 'today.' However, if we don't rerun the process of rebuilding and reuploading the static files to the server, tomorrow the 'posted date' will still be 'today,' which is incorrect.

That being said, if we have webpages that require Jekyll Liquid for time evaluations, be sure to update the pages regularly.

links:
- [https://nvfp.github.io/demo-2023](https://nvfp.github.io/demo-2023)
- [https://nvfp.github.io/demo-2023/abc123](https://nvfp.github.io/demo-2023/abc123)