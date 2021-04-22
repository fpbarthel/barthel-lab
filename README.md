# the barthel laboratory website

This is the public Github repository for the [Barthel laboratory](https://www.barthel-lab.com/) website.

The site borrows code from that of [Trevor Bedford](https://github.com/blab/blotter) deployed at [bedford.io](http://bedford.io). Elements of the design were adopted from the [Riggleman lab website](http://rrgroup.seas.upenn.edu/publications/) and the [Drummond Lab website](http://drummondlab.org/). Many thanks to [Samir Amin](https://sbamin.com/) for many tips and feedback while designing this site, including but not limited to adding Twitter Cards and Opengraph support. 

Updates are pushed to Github and continously built and deployed online via the (free) [Netlify](https://www.netlify.com/) service. Like its precursors, the source code for this site is publicly available on [Github](https://github.com/fpbarthel/barthel-lab) and is placed under the [MIT license](https://github.com/fpbarthel/barthel-lab#license). If you end up using any elements unique to this implementation, I'd love to hear about it so please [reach out to let me know](https://www.barthel-lab.com/team/floris-barthel/) and/or drop a link back to [barthel-lab.com](https://www.barthel-lab.com/)!

## Build site

This site is built using [Jekyll](http://jekyllrb.com/). To build this website locally, start by cloning a copy to your local environment.

```
git clone https://github.com/fpbarthel/barthel-lab.git
```

Next, install the nessecary Ruby dependancies (including Jekyll):

```
cd barthel-lab
bundle install
```

To deploy the site on your local machine, run:

```
bundle exec jekyll serve
```

To view the local copy, point a browser to `http://localhost:4000/`.

You are now free to edit the source code and updates to most files (except `_config.yml`) will be automatically built and deployed.

To deploy the site to the web, it is recommended to use a service like [Netlify](https://www.netlify.com/) (this website), [Github Pages](https://pages.github.com/), [Google Firebase](https://firebase.google.com/) or [Amazon S3](https://aws.amazon.com/s3/).

Deploying a site versioned via Github to Netlify is very easy. After creating an account on Netlify and connecting your Github account, opt to create a new site from git and point it to the relevant Github reposity. The site will then be built and deployed to the web, and changes pushed to github will automatically trigger a re-build.

## License

All source code in this repository, consisting of files with extensions `.html`, `.css`, `.less`, `.rb` or `.js`, is freely available under an MIT license, unless otherwise noted within a file. 

**The MIT License (MIT)**

Copyright (c) 2021 Floris Barthel

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
