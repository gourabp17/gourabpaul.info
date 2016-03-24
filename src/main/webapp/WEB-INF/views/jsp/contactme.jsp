<button type="button" class="btn btn-default btn-lg " id="back-to-top">
    <span class="glyphicon glyphicon-arrow-up" aria-hidden="true"></span>
</button>
<div>CONTACT</div>
<div class="row cntct">
    <div class="col-lg-2 col-md-2 col-sm-2"></div>
    <div class="col-lg-8 col-md-8 col-sm-8">
        <hr>
        <div id="hiredwnld">
            <button class="btn btn-primary"  type="button" data-toggle="modal" data-target="#webcontactModal">
                <span class="glyphicon glyphicon-briefcase"> </span> CONTACT ME 
            </button>
            <button class="btn btn-primary"   type="button" data-toggle="modal" data-target="#downloadModal">
                <span class="glyphicon glyphicon-download-alt"> </span> RESUME <span class="glyphicon glyphicon-envelope"> </span>
            </button>
        </div>
        <div class='topic'>PERSONAL DETAILS </div>
        <div class='details'>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <p><span class="glyphicon glyphicon-user"> </span> Gourab Paul
                <p><a href="https://www.google.com.au/maps/@12.96,77.56,12z"  target="_blank">
                        <span class="glyphicon glyphicon-map-marker"> </span> Bangaluru, India</a>
                <p><span class="glyphicon glyphicon-earphone"> </span> +91 9035838711
                <p><a href="mailto:gourab.p17@gmail.com"><span class="glyphicon glyphicon-envelope"> </span> gourab.p17@gmail.com</a>
                <p><a href="mailto:gourabpaul6@yahoo.co.in"><span class="glyphicon glyphicon-envelope"> </span> gourabpaul6@yahoo.co.in</a>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <p><a href="http://in.linkedin.com/in/gourabpaul"  target="_blank"><span>Linkedin:</span> http://in.linkedin.com/in/gourabpaul</a>
                <p><a href="http://www.gourabpaul.info"  target="_blank"><span>Website:</span> http://www.gourabpaul.info</a>
                <p><span>DOB:</span> 17<sub>th</sub> Oct, 1989
                <p><span>Nationality:</span> Indian
<!--                <p>
                    <a class="twitter-follow-button"
                       href="https://twitter.com/gourab_p"
                       data-show-count="false"
                       data-show-screen-name="false"
                       data-lang="en">
                        Follow @GOURAB
                    </a>
                    <script>window.twttr = (function (d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0], t = window.twttr || {};
                            if (d.getElementById(id))
                                return;
                            js = d.createElement(s);
                            js.id = id;
                            js.src = "https://platform.twitter.com/widgets.js";
                            fjs.parentNode.insertBefore(js, fjs);
                            t._e = [];
                            t.ready = function (f) {
                                t._e.push(f);
                            };
                            return t;
                        }(document, "script", "twitter-wjs"));</script>


                <div id="fb-root"></div>
                <script>(function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id))
                            return;
                        js = d.createElement(s);
                        js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));</script>
                <div class="fb-follow" data-href="https://www.facebook.com/gourabpaul17" data-colorscheme="light" data-layout="button" data-show-faces="false"></div> 
                </p>-->
            </div>

        </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-2"></div>
</div>
<!-- Modal -->
<div class="modal fade" id="webcontactModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">CONTACT ME</h4>
            </div>
            <div class="modal-body">
                <form role="form" name="contactForm" id="contactForm">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">NAME</span>
                            <input type="text" class="form-control" id="contactName" name="contactName" placeholder="John Dao">
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="input-group">
                            <span class="input-group-addon">EMAIL</span>
                            <input type="text" class="form-control" id="contactEmail"  name="contactEmail" placeholder="xyx@examample.com">
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="input-group">
                            <span class="input-group-addon">PHONE</span>
                            <input type="text" class="form-control" id="contactPhone" name="contactPhone" placeholder="(+91)1234567890">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">SUBJECT</span>
                            <input type="text" class="form-control" id="subject" name="otherDetails" placeholder="Subject or organisation name">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><b>MESSAGE</b></span>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <textarea  maxlength="1000" class="form-control" id="comment" name="comment" cols="250" rows="5" placeholder="MAX 1000 characters"></textarea>
                        </div>
                    </div>
                    <div id="contactformAlert" style="display: none" class="alert alert-success" role="alert"></div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="contact()">SUBMIT</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="downloadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bgclr1">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">DOWNLOAD FILE TYPE</h4>
            </div>
            <div class="modal-body adjustBodyModl">
              
                <a  href="<?php echo $GLOBALS['actualurl'] ?>/gp/views/files/GourabPaul.pdf" download="Gourab_Paul.pdf" onclick="download_count('GourabPaul/pdf')">
                    <button type="button" class="btn btn-primary">PDF</button>
                </a>
                <a  href="<?php echo $GLOBALS['actualurl'] ?>/gp/views/files/GourabPaul.doc"  download="Gourab_Paul.doc" onclick="download_count('GourabPaul/doc')">
                    <button type="button" class="btn btn-primary">DOC</button>
                </a>
                <a  href="<?php echo $GLOBALS['actualurl'] ?>/gp/views/files/GourabPaul.docx"  download="Gourab_Paul.docx" onclick="download_count('GourabPaul/docx')">
                    <button type="button" class="btn btn-primary">DOCx</button>
                </a>
                
                <br>
                <input type="email" class="form-control" id="sendEmail"  name="sendEmail" placeholder="xyx@example.com" >

            </div>
            <div class="modal-footer bgclr2">


                <button type="button" class="btn btn-primary" onclick="mail('pdf')">MAIL<sub>PDF</sub></button>
                <button type="button" class="btn btn-primary" onclick="mail('doc')">MAIL<sub>DOC</sub></button>
                <button type="button" class="btn btn-primary" onclick="mail('docx')">MAIL<sub>DOCx</sub></button>

            </div>
        </div>
    </div>
</div>
