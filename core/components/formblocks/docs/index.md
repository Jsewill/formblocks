# FormBlocks introduction

Forms are often a bit of a hassle to create. You often find yourself writing and copy/pasting tedious HTML markup, with slightly different input fields each time. And you need to stay sharp, because the smallest typo's and mistakes will screw up the styling of the form, or even worse: the validation... That’s why I don't think anyone really likes building them.

Except maybe end users, because they always seem to be in need of different forms in various places. It would definitely be ideal if they could build their own forms and insert them wherever they want, but I always found the tools that are currently available either too technical (so not suitable for end user), or too limited (with Formz for example, it is not possible to segment fields in different fieldsets).

So when ContentBlocks came out and I got the hang of it a little, I quickly started thinking: how cool would it be if users could build forms this way too? Just insert the input fields they want, drag them around, add some labels and be ready to go. FormBlocks is my attempt to make that possible. Although it still has a few quirks and limitations, it does work. And thanks to CB, it provides you with a lot of flexibility.

> Please note also that it’s not a 1 click installation. You’ll need to walk through some steps to set it up, but those are not very hard.

## How does it work?

Forms are created as separate resources, with a FormBlocks template that houses the FormIt call and validation messages and such. Settings like email addresses and autoresponder configuration are attached to the template as TV’s, and ContentBlocks fields are used to insert the various input types into your form. Another ContentBlock is used to select the available forms in the regular content of your site. They are being displayed using renderResources.

For generating the email template, I ended up using the raw JSON that is being generated by ContentBlocks as input. It’s being fed to a slightly modified version of a snippet called SIMPLX Widgeteer. What this snippet does, is extract the various bits of JSON data from the inserted CB fields and feed them to their corresponding tpl chunks. It’s basically a mini templating engine for JSON strings, and it allows for a great deal of control over the output. That was something I couldn’t achieve within FormIt itself, or with hooks. Plus there is a bug in FormIt that would sometimes render fields in a different order in the email.

That’s about it.. I hope you’ll find it useful! If you have any further questions, or ideas, please feel free to drop me a line at hugo[at]qaraqter.nl.
