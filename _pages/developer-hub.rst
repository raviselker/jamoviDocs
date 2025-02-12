.. sectionauthor:: Jonathon Love

=============
developer hub
=============

Welcome to the `developer hub <https://dev.jamovi.org>`__ for
`jamovi <https://www.jamovi.org>`__.

Here you will find resources that cover the development of analyses for
jamovi (and R). It’s still a work in progress, and we’ll be adding to it
over time, but the current tutorial series has everything you need to
get up and running.

There are forums available at `forum.jamovi.org <https://forum.jamovi.org>`__,
so if you have questions about developing modules for jamovi, or feedback on
how we can improve the developer hub, we’re keen to hear from you there.

contact <at> jamovi.org

For those interested in the jamovi platform, it is hosted on GitHub
`here <https://github.com/jamovi/jamovi>`__. Don’t forget to ‘star’ us!

----------

.. toctree::
   :titlesonly:

   tutorial_introduction
   tutorial_advanced
   tutorial_ui
   api_overview
   info_overview

----------

.. raw:: html

   <h2>News</h2>

**28-02-2020**

Versions 1.2.5 and newer of jamovi on macOS are notarized: This is a
requirement Apple have introduced; without notarization, the user is presented
with an error message, and encouraged to move jamovi to the bin! Apple are
jerks.

Unfortunately, notarized versions of jamovi do not work with jmvtools, and it
looks like getting them to work together won’t be possible. For development,
use an unsigned version of jamovi `available here 
<https://www.jamovi.org/downloads/jamovi-unsigned.zip>`__.

When starting this version on macOS catalina and newer, the first time you try
and start it it will present the nasty error. Hit cancel. Then right-click
(cmd-click) on jamovi, select ‘Open’ from the menu, and then it will give you
the option to run it. Once jamovi has been run once, it will start in the usual
way from then on.

Apologies for the inconvenience and that Apple are jerks.

**08-07-2019**

We’ve refined the advanced UI customization in jamovi 1.0.4 and newer.
This is not backwards compatible, so we discourage its use in existing
modules for the time being (Until the 1.0.4+ is is in broader use).
People developing or releasing modules for the first time are encouraged
to make use of it. More info `here <tut_0303-advanced-customisation.html>`__.

**09-06-2017**

We’ve added a new document to our tutorial series describing how jamovi
analyses can use *state*. State is used with longer running analyses,
and allows the analysis to re-use results that were calculated
previously. This can lead to much faster analyses, and a much nicer user
experience.

Read more about *state* `here <tut_0203-state.html>`__.


**20-04-2017: Changes to dev tools for jamovi 0.7.3**

We’ve just released a beta of jamovi 0.7.3 (available from
`here <https://www.jamovi.org/download.html>`__), which brings some
significant improvements, and minor changes to developing jamovi
modules.

*Changes to dependency resolution*

In the past, we’re had a number of difficulties with dependency
resolution for jamovi modules. Sometimes jmvtools would install more
dependencies than were necessary, and other times not enough. This
stemmed from contamination of the R library path, from R packages
installed on the system. In this release we’ve successfully isolated the
system libraries from the jmvtools, and only the required dependencies
will now be installed.

*Improvements to* ``.u.yaml`` *files*

Previously, .u.yaml files (the UI definition) were automatically
generated from .a.yaml files (the analysis definition). This was
sometimes problematic when additional changes were made to the .a.yaml
files. It wasn’t always clear which changes should be propagated to the
.u.yaml files, and which should not.

In the 0.7.3, the .a.yaml and .u.yaml files work together. The .u.yaml
file, by default, contains minimal information (mostly just describing
the layout), and the property values, for example labels, are taken
directly from the .a.yaml file. For many people, they will only need to
edit the .a.yaml file, and jmvtools can take care of the .u.yaml file
itself. More documentation for UI Design will be coming soon.

.u.yaml files using this new scheme will have the ``jus``, near the top
of the file, specified as ``2.0``. .u.yaml files using the older ``jus``
of ``1.0`` will be automatically upgraded. Upgraded files will be placed
in ``tame`` ``compilerMode`` (explained next), you may want to change it
to ``aggressive``.

``compilerMode``: *aggressive vs tame*

jmvtools also introduces a new option in .u.yaml files:
``compilerMode``. By default, .u.yaml files are created in
``aggressive`` mode. This means that jmvtools will take a heavy handed
approach when updating the .u.yaml files. If new options are added to
the .a.yaml file, it will aggressively add them into the .u.yaml file,
overwriting any manual changes.

In contrast, the ``compilerMode`` of ``tame`` does not overwrite manual
changes in the u.yaml. The trade off is that it often can’t position UI
elements as optimally.

We recommend beginning with your .u.yaml files in ``aggressive``
``compilerMode``, and when you begin to refine your UI by adding custom
changes to your .u.yaml files swap over to ``tame`` ``compilerMode`` so
that your changes are preserved. Again, for a lot of people,
``aggressive`` mode will be all that they will ever need.

*Outstanding issues*

For the time being, changes to the .a.yaml and/or the .u.yaml files,
will still require you to shut jamovi down and restart it before you’ll
see the changes to the UI. We hope to fix this issue in the next few
weeks.

On windows, jmvtools is still not able to find the jamovi installation
by default. You will still need to pass the ``home`` option, or set the
``jamovi_home`` option.


**02-04-2017: Added dev mode to jamovi 0.7.2.7**

jamovi 0.7.2.7 Adds dev mode, providing a stack trace when an analysis
errors for whatever reason. The tutorial has been updated to describe
this: `Debugging an Analysis <tut_0105-debugging-an-analysis.html>`__
