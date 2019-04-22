<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="nav">
  <nav id="global-nav" class="global-nav" role="navigation">
    <ul class="menu">
      <li id="shortcuts-nav" class="nav">
        <a href="#" id="shortcuts-item"><span>Shortcuts</span></a>
        <ul class="panel">
          <li>
            <a href="#services">Services</a>
          </li>
          <li>
            <a href="#case-studies">Case Studies</a>
          </li>
          <li>
            <a href="#careers">Careers</a>
          </li>
          <li>
            <a href="#news">News</a>
          </li>
          <li>
            <a href="#events">Events</a>
          </li>
        </ul>
      </li>
      <li id="utility-nav">
        <ul>
          <li id="nav-search" class="nav">
            <a href="#"><span>Search</span></a>
            <form id="form-search" class="form-fields panel" action="#">
              <fieldset class="fields-search">
                <input id="search-terms" class="input-text" type="text" placeholder="Enter keywords..." />
                <input id="submit-search" class="button" type="submit" value="Search" />
              </fieldset>
            </form>
          </li>
          <li id="nav-directory" class="nav">
            <a href="#" id="nav-directory-item"><span><b>A-Z</b> Directory</span></a>
            <div class="panel" id="panel-directory">
              <p>Alphabetical Directory</p>
              <ul id="alpha">
                <li>
                  <a href="#a" rel="A">A</a>
                </li>
                <li>
                  <a href="#b" rel="B">B</a>
                </li>
                <li>
                  <a href="#c" rel="C">C</a>
                </li>
                <li>
                  <a href="#d" rel="D">D</a>
                </li>
                <li>
                  <a href="#e" rel="E">E</a>
                </li>
                <li>
                  <a href="#f" rel="F">F</a>
                </li>
                <li>
                  <a href="#g" rel="G">G</a>
                </li>
                <li>
                  <a href="#h" rel="H">H</a>
                </li>
                <li>
                  <a href="#i" rel="I">I</a>
                </li>
                <li>
                  <a href="#j" rel="J">J</a>
                </li>
                <li>
                  <a href="#k" rel="K">K</a>
                </li>
                <li>
                  <a href="#l" rel="L">L</a>
                </li>
                <li>
                  <a href="#m" rel="M">M</a>
                </li>
                <li>
                  <a href="#n" rel="N">N</a>
                </li>
                <li>
                  <a href="#o" rel="O">O</a>
                </li>
                <li>
                  <a href="#p" rel="P">P</a>
                </li>
                <li>
                  <a href="#q" rel="Q">Q</a>
                </li>
                <li>
                  <a href="#r" rel="R">R</a>
                </li>
                <li>
                  <a href="#s" rel="S">S</a>
                </li>
                <li>
                  <a href="#t" rel="T">T</a>
                </li>
                <li>
                  <a href="#u" rel="U">U</a>
                </li>
                <li>
                  <a href="#v" rel="V">V</a>
                </li>
                <li>
                  <a href="#w" rel="W">W</a>
                </li>
                <li>
                  <a href="#x" rel="X">X</a>
                </li>
                <li>
                  <a href="#y" rel="Y">Y</a>
                </li>
                <li>
                  <a href="#z" rel="Z">Z</a>
                </li>
                <li>
                  <a href="##" rel="#">#</a>
                </li>
              </ul>
            </div>
          </li>
          <li id="nav-contact" class="nav">
            <a href="#"><span>Email</span></a>
            <form id="form-contact" class="form-fields panel" action="#">
              <fieldset class="fields-contact">
                <input id="email-name" class="input-text" type="text" placeholder="Full Name" />
                <input id="email-address" class="input-text" type="email" placeholder="name@example.com" />
                <input id="email-subject" class="input-text" type="text" placeholder="Subject" />
              </fieldset>
              <textarea id="email-message" class="textarea" placeholder="Enter your message" cols="8"></textarea>
              <input id="submit-contact" class="button" type="submit" value="Send Message" />
            </form>
          </li>
        </ul>
      </li>
    </ul>
  </nav>
</xsl:template>

</xsl:stylesheet>
