<div id="main">
	<div class="headerbar">
        <div class="headerbar-left">
            <a href="<?php echo tep_href_link('index.php'); ?>" class="logo"><img alt="Logo" src="assets/images/oscommerce.png" /></a>
        </div>
        <nav class="navbar-custom">
                    <ul class="list-inline float-right mb-0">
                        <?php
                        if (tep_session_is_registered('admin')) {
                        ?>

					
                        <li class="list-inline-item dropdown notif">
                            <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <i class="fa fa-fw fa-user-o"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <div class="dropdown-item noti-title">
                                    <h5 class="text-overflow"><small>Hello, <?php echo $admin['username']; ?></small> </h5>
                                </div>

                                <a href="<?php echo tep_href_link('login.php', 'action=logoff'); ?>" class="dropdown-item notify-item">
                                    <i class="fa fa-power-off"></i> <span>Logout</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <button class="button-menu-mobile open-left">
								<i class="fa fa-fw fa-bars"></i>
                            </button>
                        </li>
                    </ul>
<?php
  }
?>
        </nav>
	</div>
    <?php
  if (!tep_session_is_registered('admin')) {
    ?>
<?php
  } else {
?>
	<div class="left main-sidebar">
		<div class="sidebar-inner leftscroll">
			<div id="sidebar-menu">
			<ul>
					<li class="submenu">
						<a class="active" href="<?php echo tep_href_link('index.php'); ?>"><i class="fa fa-fw fa-tachometer"></i><span> Dashboard </span> </a>
                    </li>
                    <?php
                        if (tep_session_is_registered('admin')) {
                            include('includes/column_left.php');
                        }
                    ?>
            </ul>
            <div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<?php
  }
?>
  <div class="content-page">
    <div class="content">
<div class="container-fluid">
    <div class="row">
            <div class="col-xl-12" style="margin-top:20px;">
            <?php
            if ($messageStack->size > 0) {
            echo '<div class="alert alert-info alert-dismissible fade show" role="alert">'.$messageStack->output().'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>';
            }
            ?>
            </div>
    </div>
