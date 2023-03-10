# Welcome to the amazing repository for Aaron Herres's resume!
Like many developers, I am not a fan of wysiwyg editors for text formatting.

While writing this resume (the first time I've done something like this since 2013), I spent a a lot of time fighting the resume templates in Google Docs, as the little changes I wanted to make caused all sorts of frustrating problems when it came to the style or layout of the resume.

So I went on a quest to experiment with patterns that separate the data of the resume with the style.
You know, the thing you're supposed to do when doing front-end development.

I researched a few ways to do this, and found an existing project for this kind of thing called [JSON Resume](https://jsonresume.org/).

I didn't have a lot of luck with the existing theming system, as I had trouble generating pdfs that had sensible page breaks. I'm not a big fan of `float` in css, and after fighting a theme that used it for a while, I ended up making [this less-than-pretty resume](old/less-pretty-resume.pdf). I unfortunately didn't notice how messed up the resulting resume was, and applied to a few places with it :(. Once I noticed this about my resume, I decided to use "designing a pretty resume" as an excuse to try out a tech stack. This repo is a result of that ongoing project.

So here it is!

## Tech Stack

### JSON Resume
I used the [JSON Resume](https://jsonresume.org/) schema to define the data for my resume, with some modifications that made generating an aesthetic resume easier in my opinion. So anyone else using JSON Resume can use it, with a few alterations.

### Preact
I didn't want a build step, so I could avoid webpack and it's associated complexity. Instead, I decided to try out [Preact](https://preactjs.com/), which is similar to React, but using pure javascript and can be imported via a cdn! It can also emulate React if you want to use a build step, but I don't know why you'd do that.

### Styles
I wanted to try out grid, so I used [CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout) for the layout. I also wanted to try out [CSS Variables](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_variables) for the colors, so I did that too.

I spent too much time learning about font weights, and using a color eyedropper to pick colors from websites I thought had a nice theme. I ended up using [mubasic](https://www.mubasic.com/) as an inspiration for some of the design choices.

### Deployment
I wanted to use the html/css I wrote to generate a pdf, so I used Github Actions (that in turn uses [Puppeteer](https://pptr.dev/) to generate a pdf from the html and publish it to this repo's releases.


## Be Impressed!

Well, that's about it for this project. I hope _somebody_ reads this someday, and gets something out of it! If you're already using Json Resume, this will (mostly) work for you!
