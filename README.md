# XSLT Static Site Generator

## HTML Templates

This markup library contains the XML, XSLT and HTML used to build a
basic demo of an XSLT static site generator. It is being maintained as
a [Git repository on GitHub](https://github.com/bauhouse/xslt-staticgen).

### Preprocessing HTML

XSLT is being used as a preprocessor (using xsltproc) to output valid,
well-formed XHTML structure. This process of static site generation
should be easy to manage on any Unix-based system (Mac, Linux) without
having to install any software. On Windows, install xsltproc. On Glitch,
xsltproc has been compiled from source and is stored in `bin/xsltproc`.

To process HTML, run the `./build` script in the src directory.

To process individual files, open the `src/build` file and find the
`xsltproc` command referring to the HTML file you would like to process
and run the command.

### Design Templates

The page layouts can be viewed in a browser at the following URLs: 

* <http://xslt.glitch.me/>
* <http://xslt.glitch.me/news/>
* <http://xslt.glitch.me/events/>
* <http://xslt.glitch.me/services/>
* <http://xslt.glitch.me/about/>
* <http://xslt.glitch.me/contact/>
