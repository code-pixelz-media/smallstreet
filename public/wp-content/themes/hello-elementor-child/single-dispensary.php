<?php
get_header();



if (have_posts()):
    while (have_posts()):

        the_post();

        // Get SCF field values
        $dispensary_logo = get_field('dispensary_logo');
        $dispensary_name = get_field('dispensary_name');
        $dispensary_phone = get_field('dispensary_phone');
        $dispensary_address = get_field('dispensary_full_address');

        // Get individual address components
        $street = get_field('street');
        $city = get_field('city');
        $state = get_field('state');
        $zip_code = get_field('zip_code');
        $country = get_field('country');

        // Get amenities (these are individual boolean/checkbox fields)
        $cash_payment = get_field('cash_payment_option');
        $debit_card = get_field('debit_card_option');
        $pickup = get_field('pickup_option');
        $online_order = get_field('online_order_option');
        $onsite_atm = get_field('onsite_atm_option');
        $onsite_security = get_field('onsite_security_option');
        $wheelchair_accessibility = get_field('wheelchair_accissibility_option');

        $cash_payment_text = get_field('cash_payment');
        $debit_card_text = get_field('debit_cards');
        $pickup_text = get_field('pickup');
        $online_order_text = get_field('online_order');
        $onsite_atm_text = get_field('onsite_atm');
        $onsite_security_text = get_field('onsite_security');
        $wheelchair_accessibility_text = get_field('wheelchair_accessibility');

        //social links
        $social_links = get_field('social_links');

        // Get featured image
        $featured_image_url = '';
        if (has_post_thumbnail()) {
            $featured_image_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
        }


        // Get about_content_image for main content
        $about_content_image = get_field('about_content_image');


        //open and closed time:
        $tz = new DateTimeZone('America/New_York');
        $today = date('Y-m-d');
        
        $open  = new DateTime($today . ' ' . get_field('open_time'), $tz);
        $close = new DateTime($today . ' ' . get_field('close_time'), $tz);
        $now   = new DateTime('now', $tz);
        
        $status = ($now >= $open && $now <= $close) ? 'open' : 'closed';

        ?>

        <main>
            <section class="dispensary-hero"
                style="background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
      url('<?php echo esc_url($featured_image_url); ?>');  background-size: cover;  background-position: center; background-repeat: no-repeat;">
                <div class="hero-overlay">
                    <div class="custom-container hero-content">
                        <div class="logo-section">
                            <div class="logo">
                                <div class="dispensary-logo">
                                    <?php if ($dispensary_logo): ?>
                                        <img src="<?php echo esc_url($dispensary_logo); ?>"
                                            alt="<?php echo esc_attr($dispensary_name); ?> logo">
                                    <?php endif; ?>

                                </div>
                                <div class="dispensary-availability">
                                    <strong><?php echo $status; ?></strong>
                                </div>
                            </div>
                            <h1><?php echo esc_html($dispensary_name); ?></h1>
                        </div>

                        <div class="contact-info">
                            <div class="location">
                                <p><i class="fas fa-map-marker-alt"></i><strong>Located at:</strong></p>
                                <p><a href="http://maps.google.com/maps?q=<?php echo urlencode($dispensary_address); ?>"
                                        target="_blank"><?php echo esc_html($dispensary_address); ?></a></p>
                            </div>

                            <div class="phone">
                                <p><i class="fas fa-phone"></i> <strong>Contact us:</strong></p>
                                <a
                                    href="tel:<?php echo esc_attr(preg_replace('/[^0-9]/', '', $dispensary_phone)); ?>"><?php echo esc_html($dispensary_phone); ?></a>
                                <div class="social-links">
                                    <?php
                                    // Handle social links repeater field
                                    if (!empty($social_links) && is_array($social_links)) {
                                        foreach ($social_links as $social_link) {
                                            $link_url = isset($social_link['social_link']) ? $social_link['social_link'] : '';
                                            $logo_data = isset($social_link['social_logo']) ? $social_link['social_logo'] : '';
                                            $social_name = isset($social_link['social_name']) ? $social_link['social_name'] : '';

                                            // Get logo URL from image field
                                            $logo_url = '';
                                            if (!empty($logo_data) && is_array($logo_data)) {
                                                $logo_url = isset($logo_data['url']) ? $logo_data['url'] : '';
                                            }

                                            if (!empty($link_url)) {
                                                ?>
                                                <a href="<?php echo esc_url($link_url); ?>" target="_blank" rel="noopener">
                                                    <?php if (!empty($logo_url)): ?>
                                                        <img src="<?php echo esc_url($logo_url); ?>"
                                                            alt="<?php echo esc_attr($social_name); ?>">
                                                    <?php else: ?>
                                                        <i class="fab fa-<?php echo strtolower($social_name); ?>"></i>
                                                    <?php endif; ?>
                                                </a>
                                                <?php
                                            }
                                        }
                                    }
                                    ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>

            <!-- Main Content -->
            <section class="main-content">
                <div class="custom-container">
                    <div class="content-grid">
                        <!-- Left Column - Image -->
                        <div class="image-section">
                            <img src="<?php echo esc_url($about_content_image); ?>" alt="Dispensary Interior"
                                class="dispensary-image">
                        </div>

                        <!-- Right Column - Content -->
                        <div class="content-section">
                            <h2>About Us</h2>
                            <?php the_content(); ?>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Amenities Section -->
            <section class="amenities">
                <div class="custom-container">
                    <h2>Amenities</h2>
                    <div class="amenities-grid">
                        <?php if (is_array($cash_payment) && in_array('yes', $cash_payment)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-money-bill-wave"></i>
                                <h3>Cash Payment</h3>
                                <p><?php echo wp_kses_post($cash_payment_text); ?></p>
                            </div>
                        <?php endif; ?>

                        <?php if (is_array($debit_card) && in_array('yes', $debit_card)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-credit-card"></i>
                                <h3>Debit Card</h3>
                                <p><?php echo wp_kses_post($debit_card_text); ?></p>
                            </div>
                        <?php endif; ?>

                        <?php if (is_array($pickup) && in_array('yes', $pickup)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-car"></i>
                                <h3>Curbside Pickup</h3>
                                <p><?php echo wp_kses_post($pickup_text); ?></p>
                            </div>
                        <?php endif; ?>

                        <?php if (is_array($online_order) && in_array('yes', $online_order)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-shopping-cart"></i>
                                <h3>Online Ordering</h3>
                                <p><?php echo wp_kses_post($online_order_text); ?></p>
                            </div>
                        <?php endif; ?>

                        <?php if (is_array($onsite_atm) && in_array('yes', $onsite_atm)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-university"></i>
                                <h3>Onsite ATM</h3>
                                <p><?php echo wp_kses_post($onsite_atm_text); ?></p>
                            </div>
                        <?php endif; ?>

                        <?php if (is_array($onsite_security) && in_array('yes', $onsite_security)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-shield-alt"></i>
                                <h3>Onsite Security</h3>
                                <p><?php echo wp_kses_post($onsite_security_text); ?></p>
                            </div>
                        <?php endif; ?>

                        <?php if (is_array($wheelchair_accessibility) && in_array('yes', $wheelchair_accessibility)): ?>
                            <div class="amenity-item">
                                <i class="fas fa-wheelchair"></i>
                                <h3>Wheelchair Accessibility</h3>
                                <p><?php echo wp_kses_post($wheelchair_accessibility_text); ?></p>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <section class="footer-location">
                <div class="custom-container">
                    <div class="location">
                        <strong>Located at:</strong><a
                            href="http://maps.google.com/maps?q=<?php echo urlencode($dispensary_address); ?>"
                            target="_blank"><?php echo esc_html($dispensary_address); ?></a>
                    </div>
                </div>
            </section>
        </main>
        <?php
    endwhile;
endif;


get_footer();
?>