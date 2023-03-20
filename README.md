# Welcome to my response to  Canonical's written interview!

You will find some crazy systems I made to answer the prompts in order to make writing them a little more fun. I know it's overkill, but I wanted to try out some new stuff.

Were these the best technologies to writing a document? Definitely. This is the first time such software has been written.

This repo is forked from my resume generating repo, which I will refrain from linking to in an effort to try to keep this this written portion anonymous.

The primary purpose of this repo is to write the prompts sent to me by Canonical. It can, however, be used to answer any prompt set. This is a one-off repo. But since you're here, let me show you around!


## What is this, besides answers to prompts?
I'm glad you asked! I didn't think anybody would ever see this code but me. But since you're curious:

This repo can help navigate around the prompts as you answer them. You can answer prompts in any order, and keep track of:
* prompts you have answered
* prompts you haven't answered
* prompts that are in "draft form"
  - I found myself thinking about _some_ information that I wanted to record related to a prompt, but I wanted to make sure I didn't count it as completed just because there was some text below the prompt.

You can also easily link to other areas of the document to tie concepts together.

Below is an example of what 'edit mode' looks like:
![edit mode](images/edit-mode.png)
I also wrote it to help encourage me to keep writing - I needed it, at times.


If you go through the history, you'll see me slowly converging on to this solution.

## How to use this repo

To run the system you should execute `./scripts/run.sh` Shocking, I know. If you want to run the whole thing, you'll need `fish`, `yq`, and `npm`. Not everything these scripts do are necessary - this was written just for me.

Once it's running, you can go to `localhost:8080` and see the rendered document there, presented as the PDF printer will see it. If you append a `edit=true` as a query param, you'll end up in (big surprise) "edit mode". Like this: `localhost:8080?edit=true`.

After you enter edit mode, the state is stored in localStorage, so you'll have to set `edit=false` as a query param if you want to get out of it.

The content is stored in `./messages/message.yaml`, because I wasn't sure what I was making yet. The file contains all your prompts and responses. It's format is the following:
```yaml
  main:
    - title: Identity and Authorization Technology
      prompts:
      - prompt: Describe your experience with authorization systems, specifically Open Policy Agent and OAuth.
        answers:
        - response: |
            your answer here
```

The key "main" is an array of question categories, as given to me by Canonical. The title being the name of the category has an array of prompts, which should be self-explanatory. Each prompt
Each category
### Tech Stack

#### Preact
I didn't want a build step, so I could avoid webpack and it's associated complexity. Instead, I decided to try out [Preact](https://preactjs.com/), which is similar to React, but using pure javascript and can be imported via a cdn! It can also emulate React if you want to use a build step, but I don't know why you'd do that.

#### YAML
I'm usually not a huge fan, but It's definitely nicer than writing JSON by hand.

#### Styles
I wanted to try out grid, so I used [CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout) for the layout. I also wanted to try out [CSS Variables](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_variables) for the colors, so I did that too.
