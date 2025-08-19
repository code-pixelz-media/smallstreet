<?php
// Exit if accessed directly
if (!defined('ABSPATH')) exit;

// BEGIN ENQUEUE PARENT ACTION
// AUTO GENERATED - Do not modify or remove comment markers above or below:

add_action('wp_enqueue_scripts', 'enqueue_parent_styles');

function enqueue_parent_styles()
{

    wp_enqueue_style('parent-style', get_stylesheet_directory_uri() . '/style.css');
    wp_enqueue_style('dashicons');

    if (wp_is_mobile()) {
        wp_enqueue_style('dong_mobile_styles', get_stylesheet_directory_uri() . '/mobile-style.css', array(), '1.0', 'all');
        wp_enqueue_script('cpm-dong-public-js', get_stylesheet_directory_uri() . '/cpm-dongtraders-public.js', '', '', true);
    }
}


if (wp_is_mobile()) {
    /* hide admin bar for mobile devices */
    // function dongtraders_nonloggedin_user_redirect()
    // {
    //     $my_account_page_url = get_permalink(wc_get_page_id('myaccount'));
    //     if (is_user_logged_in() && is_front_page()) {

    //         wp_redirect($my_account_page_url);
    //         exit;
    //     }
    // }
    // add_action('template_redirect',  'dongtraders_nonloggedin_user_redirect');
    add_filter('show_admin_bar', '__return_false');
    add_action('woocommerce_before_account_navigation', 'dongtraders_myaccount_back_section');
    function dongtraders_myaccount_back_section()
    {
        $my_account_page_url = get_permalink(wc_get_page_id('myaccount'));
        echo '<div class="dong-my-account-back"><a href="' . $my_account_page_url . '">Back</a></div>';
    }
    add_action('wp_head', 'dongtraders_hide_navigation');
    function dongtraders_hide_navigation()
    {
        $actual_link = (empty($_SERVER['HTTPS']) ? 'http' : 'https') . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $my_account_page_url = wc_get_account_endpoint_url('dashboard');
        if ($actual_link == $my_account_page_url) {
            echo '<style>
            .woocommerce-MyAccount-navigation {
                display: block;
            }
             .dong-my-account-back{
                display: none;
            }
            .dong-dash-QR{
                 display: block !important;
            }
        </style>';
        } else {
            echo '<style>
            .woocommerce-MyAccount-navigation {
                display: none;
            }
            .dong-my-account-back{
                display: block;
            }
            .dong-dash-QR, .v-card{
                 display: none;
            }

        </style>';
        }

        
    }
}

add_action('wp_head', function(){

    if ( is_account_page() && !wp_is_mobile()) {

        echo '<style>
        .elementor-widget-container>p>img{
            display:none;
        }
        </style>';
    }

});

// PEACE UNIFORM SHORTCODE

add_shortcode('dt_dong_peace_uniform', 'dt_dong_peace_uniform_shortcode');
function dt_dong_peace_uniform_shortcode($atts)
{

    $value = shortcode_atts(array(
        'product_id' => 2204,
    ), $atts);
    ob_start();

    $product_id = $value['product_id'];
    $att_colors = (wc_get_product_terms($product_id, 'pa_color'));
    $att_sizes = (wc_get_product_terms($product_id, 'pa_size'));
    $att_genders = (wc_get_product_terms($product_id, 'pa_gender'));

    if (isset($_POST["submit"])) {
        $gender = $_POST['gender'];
        $size = $_POST['size'];
        $council = $_POST['seat'];
        $dong_qty = $_POST['dong-qty'];


        $match_attributes =  array(
            "attribute_pa_color" => $council,
            "attribute_pa_size" => $size,
            "attribute_pa_gender" => $gender
        );

        $data_store   = WC_Data_Store::load('product');
        $variation_id = $data_store->find_matching_product_variation(
            new \WC_Product($product_id),
            $match_attributes
        );

        // echo $variation_id . '-varition cpm ';

        WC()->cart->add_to_cart($product_id, $dong_qty, $variation_id);
    }

?>
    <script src="https://kit.fontawesome.com/9aa1ea67c4.js" crossorigin="anonymous"></script>
    <script>
        jQuery(document).ready(function() {
            var buttonPlus = jQuery(".qtyplus");
            var buttonMinus = jQuery(".qtyminus");

            var incrementPlus = buttonPlus.click(function(e) {
                e.preventDefault();
                var $n = jQuery(this)
                    .parent(".dt-dong-quantity")
                    .find(".input-qty");
                $n.val(Number($n.val()) + 1);
            });

            var incrementMinus = buttonMinus.click(function(e) {
                e.preventDefault();
                var $n = jQuery(this)
                    .parent(".dt-dong-quantity")
                    .find(".input-qty");
                var amount = Number($n.val());
                if (amount > 0) {
                    $n.val(amount - 1);
                }
            });

            // checkbox for men and women

            jQuery('#checkbox1').change(function() {

                if (jQuery('#checkbox1').is(":checked")) {

                    var gwomen = jQuery('#get_gender-women').val();

                    jQuery("#checkbox1").val(gwomen);

                } else {
                    var gmen = jQuery('#get_gender-men').val();

                    jQuery("#checkbox1").val(gmen);
                }

            });

        });
    </script>



    <div class="dt-dong-peaceUniform">
        <form class="dt-dong-form" method="post">
            <h3>Peace Uniform</h3>
            <h4>Select Shirt Size</h4>
            <div class="dt-dong-switch">
                <?php
                foreach ($att_genders as $gender) {
                    # code...
                    echo '<input id="get_gender-' . $gender->slug . '" type="hidden" value="' . $gender->slug . '" >';
                }
                ?>
                <span id="dt-men">Men</span>
                <input id="checkbox1" type="checkbox" value="men" name="gender">
                <span id="dt-women">Women</span>
            </div>
            <div class="dt-dong-size">
                <?php
                foreach ($att_sizes as $att_size) {
                    echo '<input type="radio" id="' . $att_size->name . '" name="size" value="' . $att_size->slug . '">';
                }
                ?>
            </div>
            <div class="dt-dong-select">
                <h4>Select Council Seat<span>(required)</span></h4>
                <select name="seat" id="Seat">
                    <option value="council">Select Council Seat</option>

                    <?php
                    foreach ($att_colors as $att_color) {
                        # code...
                        echo ' <option value="' . $att_color->slug . '">' . $att_color->description . ' (' . $att_color->name . ')</option>';
                    }
                    ?>
                </select>
                <p>Your Voice is needed to allocate resources in our Détente 2.0 campaign fundraising</p>
            </div>

            <h4>Select Quantity</h4>
            <div class="dt-dong-quantity">
                <button class="qtyminus" aria-hidden="true"><i class="fa-solid fa-minus"></i></button>
                <input type="number" name="dong-qty" id="qty" min="1" step="1" value="1" class="input-qty">
                <button class="qtyplus" aria-hidden="true"><i class="fa-solid fa-plus"></i></button>
            </div>

            ​<?php
                echo get_post_field('post_content', $product_id);
                ?>
            <p class="dt-para-uniform">Each $30 campaign T-shirt earns $7.10 YAM political <span class="dong-tooltip" data-tip="Cash back, also known as “cashback,” refers to two types of financial transactions related to credit and debit cards that have grown increasingly popular in the last two decades. Most commonly, it’s a credit card benefit that refunds the cardholder a small percentage of the amount spent on each purchase above a certain dollar threshold.">cash back</span> rewards.</p>
            <input type="submit" value="Pre-order" name="submit">

        </form>
        <div class="dt-dong-colu">
            <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id($product_id)); ?>" alt="t-shirt">
        </div>
    </div>

    <?php
    $output = ob_get_contents();
    ob_get_clean();
    return $output;
}
// my account page show user v card qr

function dong_my_account_dashboard_vcard()
{
    ob_start();
    $user_id = get_current_user_id();
    $user_meta_qrs = get_user_meta($user_id, '_dongtraders_user_vcard', true);
    $my_account_page_url = get_permalink(wc_get_page_id('myaccount'));
    if($my_account_page_url == 'myaccount'){
    if (!empty($user_meta_qrs)) { ?>
        <div class="v-card">
            <img src="<?php echo $user_meta_qrs; ?>" alt="" class="dong-dash-QR">
        </div>
    
<?php
    }
    }else{
        if (!empty($user_meta_qrs)) { ?>
            <div class="v-card">
                <img src="<?php echo $user_meta_qrs; ?>" alt="" class="dong-dash-QR-landing-page">
            </div>
        
    <?php
        }
    }
    $output = ob_get_contents();
    ob_get_clean();
    return $output;
}
add_shortcode('show_vcard', 'dong_my_account_dashboard_vcard');


function add_pmpro_login_body_class($classes) {
    // Check if it's the PMPro login page
    if (function_exists('pmpro_has_membership_access') && pmpro_has_membership_access(NULL, true)) {
        // Add the unique class to the body classes array
        $classes[] = 'pmpro-login-page';
    }
    return $classes;
}
add_filter('body_class', 'add_pmpro_login_body_class');


//===========================================
//===========================================
//===========================================

add_filter('woocommerce_available_payment_gateways', 'disable_payment_gateways_on_checkout');
function disable_payment_gateways_on_checkout($available_gateways) {
    if (is_checkout()) {
        // Initialize a variable to check if the product is in the cart
        $product_in_cart = false;

        // Get the global WooCommerce object
        global $woocommerce;

        // Loop through the cart items
        foreach ($woocommerce->cart->get_cart() as $cart_item) {
            // Check if the product ID 2048 is in the cart
            if ($cart_item['product_id'] == 2481 || $cart_item['product_id'] == 1308) {
                $product_in_cart = true;
                break;
            }
        }

        if(!(isset($_GET['pay_for_order']) && $_GET['pay_for_order'])){
            if($product_in_cart){
                unset($available_gateways['preorder']);
            }else{
                unset($available_gateways['paypal']);
                unset($available_gateways['venmo']);
                unset($available_gateways['venmo-pay']);
            }
        }else{
            unset($available_gateways['preorder']);
        }
    }
    return $available_gateways;
}
// add_action('wp_footer', 'jjj');