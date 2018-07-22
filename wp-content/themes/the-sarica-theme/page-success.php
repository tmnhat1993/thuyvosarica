<?php get_header(); ?>

<div class="success-modal">
    <div class="container">
        <div class="success-notification">
            <h3 class="notif-title">Đặt  thành công</h3>
            <p class="notif-content">
                Chân thành cám ơn quý khách đã ủng hộ, chúng tôi sẽ liên lạc để xác nhận đơn
            </p>
            <a href="<?php echo site_url('/'); ?>">Bấm vào đây nếu trình duyệt không tự chuyển</a>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
      setTimeout(function(){
        window.location.href = siteDetail['root_url'];
      }, 5000)
    })
</script>

<?php get_footer(); ?>
