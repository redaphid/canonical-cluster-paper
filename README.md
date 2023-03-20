# Welcome to my response to  Canonical's written interview!

You will find some crazy systems I made to answer the prompts in order to make writing them a little more fun. I know it's overkill, but I wanted to try out some new stuff.

Were these the best technologies to writing a document? Definitely. This is the first time such software has been written.

This repo is forked from my resume generating repo, which I will refrain from linking to in an effort to try to keep this this written portion anonymous.

The primary purpose of this repo is to write the prompts sent to me by Canonical. It can, however, be used to answer any prompt set. This is a one-off repo. But since you're here, let me show you around!


## What is this repo, besides answers to the prompts?
I'm glad you asked! I didn't think anybody would ever see this code but me. But since you're curious:


This repo was made to help me navigate around the prompts as I was answering them; I didn't answer them all in order, and I needed to know what I'd already done.
I didn't want to use a wysiwyg like Libre Office, because combining the formatting/style with my answers felt wrong as a developer. The style separation also helped me focus on answering the prompt. And when I couldn't answer any prompts, I amused myself while writing this system, thinking about them in the background


## How to use this repo



### Tech Stack

#### Preact
I didn't want a build step, so I could avoid webpack and it's associated complexity. Instead, I decided to try out [Preact](https://preactjs.com/), which is similar to React, but using pure javascript and can be imported via a cdn! It can also emulate React if you want to use a build step, but I don't know why you'd do that.

#### YAML
I'm usually not a huge fan, but It's definitely nicer than writing JSON by hand.

#### Styles
I wanted to try out grid, so I used [CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout) for the layout. I also wanted to try out [CSS Variables](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_variables) for the colors, so I did that too.
