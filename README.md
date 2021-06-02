[![Build Status](https://travis-ci.com/carpentries/workshop-template.svg?branch=gh-pages)](https://travis-ci.com/carpentries/workshop-template)

# CMS Open Data Workshop 2021

This is the main repository for the [CMS Open Data Workshop 2021](https://cms-opendata-workshop.github.io/2021-07-19-cms-open-data-workshop/) event.  The workshop is based on  The Carpentries' ([Software Carpentry][swc-site], [Data Carpentry][dc-site], and
[Library Carpentry][lc-site]'s) templates for creating websites for workshops.  In particular, we followed the instructions in the official [workshop template repository](https://github.com/carpentries/workshop-template) and used the "template" function to make a copy and customize it.  As it is explained there, it builds automatically on Github.

## How to contribute

In order to modify the main workshop website, i.e., this repository, please follow the SW Carpentry's [default instructions](https://github.com/carpentries/workshop-template#customizing-your-website-required-steps).

Lessons are generally added to the main workshop site from a repository in the current Github organization, i.e., from the [cms-opendata-workshop](https://github.com/cms-opendata-workshop) organization.  If you need to create or modify a lesson, please follow the [instructions below](#creating-a-lesson).


## Creating a lesson

In order to create a new lesson for this workshop, follow the procedure below (which is based on [these](https://carpentries.github.io/lesson-example/setup.html#creating-a-new-lesson) original instructions):  

We will assume that the name of your the new lesson is `worshop2021-lesson-temp`.  

1.  We'll use the [GitHub's importer](https://github.com/new/import) to make a copy of the lesson template in the workshops github organization. (Note: This is like a GitHub Fork, but not connected to the upstream changes)

2.  Put the URL of **[the styles repository](https://github.com/cms-opendata-workshop/styles)**, that is
    **https://github.com/cms-opendata-workshop/styles** in the "Your old repository’s clone URL" box.

3.  Select the owner for the new repository as `cms-opendata-workshop`.

4.  Choose a name for your lesson repository.
    In our example, this is `worshop2021-lesson-temp`. Please follow this pattern, i.e., `workshop2021-lesson-{description}`

5.  Make sure the repository is public.

6.  At this point, you should have a page like this:

    <img src="fig/using-github-import-cmsodworkshop.png" width="400"> 
    
    You can now click "Begin Import". When the process is done, you can click
    "Continue to repository" to visit your newly-created repository.

7.  In order to properly initialize the lesson repository, you need to work from your local machine or have someone do it for you (after the initialization process is done, you can work directly using the Github browser page).  Clone your newly-created repository to your computer:

    ~~~
    $ git clone -b gh-pages https://github.com/cms-opendata-workshop/workshop2021-lesson-temp.git
    ~~~

    Note: Replace the name of your lesson.

8.  Go into that directory using:

    ~~~
    $ cd workshop2021-lesson-temp
    ~~~

9. To be able to pull upstream style changes, you should manually add the
     styles repository as a remote called `template`:

    ~~~
    $ git remote add template https://github.com/cms-opendata-workshop/styles.git
    ~~~
    
    This will allow you to pull in changes made to the template,
    such as improvements to our CSS style files.

10. Configure the `template` remote to not download tags:

    ~~~
    $ git config --local remote.template.tagOpt --no-tags
    ~~~
    
10. Make sure you are using the `gh-pages` branch of the lesson template:

    ~~~
    $ git checkout gh-pages
    ~~~
 
11. Run `bin/lesson_initialize.py` to create all of the boilerplate files
    that cannot be put into the styles repository
    (because they would trigger repeated merge conflicts).

12. Create and edit files as explained further in
    [the episodes of this lesson](https://carpentries.github.io/lesson-example/index.html#schedule).

13. (requires [Jekyll Setup](#installing-software) from below) Preview the HTML pages for your lesson:

    ~~~
    $ make serve
    ~~~
  
    Alternatively, you can try using Docker:

    ~~~
    $ make docker-serve
    ~~~
  
14. Commit your changes and push to the `gh-pages` branch of your
    repository:

    ~~~
    $ cd workshop2021-lesson-temp
    $ git add changed-file.md
    $ git commit -m "Explanatory message"
    $ git push origin gh-pages
    ~~~
    
15. Do not forget to choose the `gh-pages` branch as the default one: go to the `Settings` option of the new lesson repository, chosee `Branches` from the left menu, and choose the `gh-pages` branch as the default.
 




## Working locally

There is the option of working directly on Github using your web browser.  However, whether you are working on the main site or on a particular lesson, it is always recommended to work locally, so you can test the aspect of the material before you push your changes to the repositories.  

If you are already familiar with Git, you can clone the repository to your desktop, edit anything you need and push your changes back to the repository.

```shell
git clone https://github.com/your_username/YYYY-MM-DD-site
```

In order to view your changes once you are done editing, if you have bundler installed (see the
[installation instructions below](#installing-software)), you can preview your site locally with:

```shell
make serve
```
and go to <http://0.0.0.0:4000> to preview your site.

Before pushing your changes to your repository, we recommend that you also check for any potential
issues with your site by running:

```shell
make workshop-check
```

Once you are satisfied with the edits to your site, commit and push the changes to your repository.
A few minutes later, you can go to the GitHub Pages URL for your workshop site and preview it. In the example above, this is `https://gvwilson.github.io/2016-12-01-oomza`. [The finished
page should look something like this](fig/completed-page.png?raw=true).


**Note:**
please do all of your work in your repository's `gh-pages` branch,
since [GitHub automatically publishes that as a website][github-project-pages].

**Note:**
this template includes some files and directories that most workshops do not need,
but which provide a standard place to put extra content if desired.
See the [design notes][design] for more information about these.

Further instructions are available in [the customization instructions][customization].
This [FAQ][faq] includes a few extra tips (additions are always welcome)
and these notes on [the background and design][design] of this template may help as well.


## Installing Software

If you want to set up Jekyll so that you can preview changes on your own machine before pushing them
to GitHub, you must install the software described in the lesson example [setup
instructions](https://carpentries.github.io/lesson-example/setup.html#jekyll-setup-for-lesson-development).

**Note:**
There might be some issues with the ruby versions.  The default Carpentry instructions seem to be outdated.  One might need to fiddle a little bit with the installation.  Fortunately, there are external (Google) instructions that can be used to fix potential problems.


## Getting and Giving Help

Please join our [Mattermost channel](https://mattermost.web.cern.ch/cmsodws2021/channels/workshop-preparation) or [contact us][email]. 



[email]: mailto:cms-dpoa-coordinators@cern.ch
[customization]: https://carpentries.github.io/workshop-template/customization/index.html
[dc-site]: https://datacarpentry.org
[design]: https://carpentries.github.io/workshop-template/design/index.html
[faq]: https://carpentries.github.io/workshop-template/faq/index.html
[github-project-pages]: https://help.github.com/en/github/working-with-github-pages/creating-a-github-pages-site
[issues]: https://github.com/carpentries/workshop-template/issues
[lesson-example]: https://carpentries.github.io/lesson-example/
[self-organized-workshop-form]: https://amy.carpentries.org/forms/self-organised/
[swc-site]: https://software-carpentry.org
[lc-site]: https://librarycarpentry.org
