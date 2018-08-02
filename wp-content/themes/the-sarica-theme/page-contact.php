<?php
    get_header();
?>

<div id="banner"
     style="background-image: url(<?php echo get_theme_file_uri('assets/img/blog-banner.jpg');?>">
    <div class="container">
        <div class="banner sm-padding">
            <!-- Banner image -->
            <div class="banner__main-img">

            </div>
            <!-- Banner image -->

            <!-- Banner content -->
            <div class="banner__content text-left">
                <h1>Liên hệ với chúng tôi</h1>
                <hr>
                <p class="opc-7">
                    Saric Shop sẽ nhanh chóng giải đáp các thắc mắc của bạn trong thời gian sớm nhất
                </p>
            </div>
            <!-- Banner Content -->
        </div>
    </div>
</div>

<!-- Main Content -->
<div class="contact-content">

    <!-- Container -->
    <div class="container">
        <!-- Rown -->
        <div class="row">
            <div class="col-md-9 col-sm-12 main-form-column">

                <div class="custom-heading no-dash mt-0 pb-0 text-left full-width">
                    <h3>Thông tin liên hệ</h3>
                </div>

                <!-- Main Contact Form -->
                <form method="post" action="<?php echo esc_url( admin_url('admin-post.php') ); ?>">
                    <input type="hidden" name="action" value="process_contact_form">

                    <!-- Main Contact Form -->
                    <div class="contact-form-wrapper">

                        <!-- Name -->
                        <div class="form-group">
                            <!-- Label -->
                            <label for="clientName">Họ tên khách hàng</label>

                            <!-- Input Field -->
                            <input type="text"
                                   class="form-control"
                                   name="clientName"
                                   placeholder="Vui lòng nhập tên của bạn">
                        </div><!-- Name -->

                        <!-- Email -->
                        <div class="form-group">
                            <!-- Label -->
                            <label for="emailAddress">Địa chỉ Email</label>

                            <!-- Input Field -->
                            <input type="email"
                                   class="form-control"
                                   name="clientEmail"
                                   placeholder="Vui lòng nhập địa chỉ email của bạn">

                            <!-- Helper Text -->
                            <small id="emailHelp" class="form-text text-muted">
                                Chúng tôi sẽ liên lạc với bạn qua địa chỉ email này
                            </small>
                        </div>
                        <!-- Email -->

                        <!-- Phone -->
                        <div class="form-group">
                            <!-- Label -->
                            <label for="emailAddress">Số điện thoại</label>

                            <!-- Input Field -->
                            <input type="number"
                                   class="form-control"
                                   name="clientPhone"
                                   placeholder="Vui lòng nhập số điện thoại của bạn">
                        </div>
                        <!-- Phone -->

                        <!-- Contact Detail -->
                        <div class="form-group">
                            <!-- Label -->
                            <label for="emailAddress">Nội dung thông tin liên hệ</label>
                            <textarea class="form-control"
                                      name="contactDetail"
                                      rows="5">
                            </textarea>
                            <!-- Textarea -->

                        </div>
                        <!-- Contact Detail -->

                        <!-- Receive Good Deal From Us -->
                        <!-- Receive Good Deal From Us -->

                    </div><!-- Main Contact Form -->
                </form>
            </div>

            <div class="col-md-3 col-sm-12 sidebar">

                <!-- News Col Heading -->
                <div class="custom-heading no-dash disabled-border text-left full-width">
                    <h3>Facebook</h3>
                </div>
                <!-- News Col Heading -->
                <div class="facebook-holder">
                    <div class="fb-page fb_iframe_widget" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-height="130" data-show-facepile="true" fb-xfbml-state="rendered" fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=972749199527382&amp;container_width=248&amp;height=130&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=true&amp;small_header=false&amp;tabs=timeline"><span style="vertical-align: bottom; width: 248px; height: 130px;"><iframe name="f76782685c464c" width="1000px" height="130px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" title="fb:page Facebook Social Plugin" src="https://www.facebook.com/v2.12/plugins/page.php?adapt_container_width=true&amp;app_id=972749199527382&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FbSTT5dUx9MY.js%3Fversion%3D42%23cb%3Df39a31cfbaa3458%26domain%3Dlocalhost%26origin%3Dhttp%253A%252F%252Flocalhost%252Ff11e388aa98505c%26relation%3Dparent.parent&amp;container_width=248&amp;height=130&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=true&amp;small_header=false&amp;tabs=timeline" style="border: none; visibility: visible; width: 248px; height: 130px;" class=""></iframe></span></div>
                </div>

                <!-- News Col Heading -->
                <div class="custom-heading no-dash disabled-border text-left full-width">
                    <h3>Thông tin liên hệ</h3>
                </div>
                <div class="conent">
                    <p>
                        Hotline: <b>094 3843868</b>
                    </p>
                    <p>
                        Email liên hệ:
                        <a href="mailto:webmaster@example.com">
                            <b>tmnhat1993@gmail.com</b>
                        </a>
                    </p>
                    <p>
                        Zalo Page:
                        <a href="javascript:;">
                            <b>zalo@gmail.com</b>
                        </a>
                    </p>
                </div>
            </div>
        </div><!-- Row -->
    </div>
</div>
<!-- Main Content -->

<?php
    get_footer();
?>
