<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="main">
  <div id="content">
    <section class="box">
      <div class="main-content">
        <div class="container">
          <h1 class="page-title">
            <a href="#"><xsl:value-of select="$page-title" /></a>
          </h1>
          <div class="page-content">
            <div class="page-body">
              <p class="lead">Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis lacus vel augue laoreet rutrum dolor auctor.</p>
              <h3>Paragraph Head</h3>
              <blockquote class="pullquote">
                <p>Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Cras mattis consectetur purus sit amet fermentum.</p>
                <p class="quote-attribution">James Joyce</p>
              </blockquote>
              <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio,  dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod <u>semper</u>. Duis mollis, est noncommodo luctus, nisi <a href="#">erat porttitor ligula</a>, eget lacinia odio sem nec elit. Sed posuere consectetur est at lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. </p>
              <p>Donec ullamcorper nulla non metus auctor fringilla. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla.</p>
              <blockquote>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
              </blockquote>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas sed diam eget risus varius blandit sit amet non magna. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>
              <h6>Footnotes:</h6>
              <ol class="footnotes">
                <li>Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
      <aside class="section-aside">
        <nav role="navigation" class="section-nav" id="section-nav">
          <h3 class="box-title">
            <a href="#"><xsl:value-of select="$page-title" /></a>
          </h3>
          <ul class="section-menu">
            <li class="current" id="item-research">
              <a href="#" class="current">Resilience</a>
              <ul class="level-4">
                <li>
                  <a href="#">Website</a>
                </li>
                <li>
                  <a href="#">Magazine</a>
                </li>
                <li>
                  <a href="#">Podcast</a>
                </li>
              </ul>
            </li>
            <li id="item-kravis">
              <a href="#">Imagine</a>
            </li>
            <li id="item-athenaeum">
              <a href="#">Design</a>
            </li>
            <li id="item-global">
              <a href="#">Build</a>
            </li>
          </ul>
        </nav>
      </aside>

    </section>
  </div>
</xsl:template>

</xsl:stylesheet>
