<?php
/**
 * Theme functions and definitions
 *
 * @package HelloElementor
 */

if (!defined('ABSPATH')) {
	exit; // Exit if accessed directly.
}

define('HELLO_ELEMENTOR_VERSION', '3.4.4');
define('EHP_THEME_SLUG', 'hello-elementor');

define('HELLO_THEME_PATH', get_template_directory());
define('HELLO_THEME_URL', get_template_directory_uri());
define('HELLO_THEME_ASSETS_PATH', HELLO_THEME_PATH . '/assets/');
define('HELLO_THEME_ASSETS_URL', HELLO_THEME_URL . '/assets/');
define('HELLO_THEME_SCRIPTS_PATH', HELLO_THEME_ASSETS_PATH . 'js/');
define('HELLO_THEME_SCRIPTS_URL', HELLO_THEME_ASSETS_URL . 'js/');
define('HELLO_THEME_STYLE_PATH', HELLO_THEME_ASSETS_PATH . 'css/');
define('HELLO_THEME_STYLE_URL', HELLO_THEME_ASSETS_URL . 'css/');
define('HELLO_THEME_IMAGES_PATH', HELLO_THEME_ASSETS_PATH . 'images/');
define('HELLO_THEME_IMAGES_URL', HELLO_THEME_ASSETS_URL . 'images/');

if (!isset($content_width)) {
	$content_width = 800; // Pixels.
}

if (!function_exists('hello_elementor_setup')) {
	/**
	 * Set up theme support.
	 *
	 * @return void
	 */
	function hello_elementor_setup()
	{
		if (is_admin()) {
			hello_maybe_update_theme_version_in_db();
		}

		if (apply_filters('hello_elementor_register_menus', true)) {
			register_nav_menus(['menu-1' => esc_html__('Header', 'hello-elementor')]);
			register_nav_menus(['menu-2' => esc_html__('Footer', 'hello-elementor')]);
		}

		if (apply_filters('hello_elementor_post_type_support', true)) {
			add_post_type_support('page', 'excerpt');
		}

		if (apply_filters('hello_elementor_add_theme_support', true)) {
			add_theme_support('post-thumbnails');
			add_theme_support('automatic-feed-links');
			add_theme_support('title-tag');
			add_theme_support(
				'html5',
				[
					'search-form',
					'comment-form',
					'comment-list',
					'gallery',
					'caption',
					'script',
					'style',
					'navigation-widgets',
				]
			);
			add_theme_support(
				'custom-logo',
				[
					'height' => 100,
					'width' => 350,
					'flex-height' => true,
					'flex-width' => true,
				]
			);
			add_theme_support('align-wide');
			add_theme_support('responsive-embeds');

			/*
			 * Editor Styles
			 */
			add_theme_support('editor-styles');
			add_editor_style('editor-styles.css');

			/*
			 * WooCommerce.
			 */
			if (apply_filters('hello_elementor_add_woocommerce_support', true)) {
				// WooCommerce in general.
				add_theme_support('woocommerce');
				// Enabling WooCommerce product gallery features (are off by default since WC 3.0.0).
				// zoom.
				add_theme_support('wc-product-gallery-zoom');
				// lightbox.
				add_theme_support('wc-product-gallery-lightbox');
				// swipe.
				add_theme_support('wc-product-gallery-slider');
			}
		}
	}
}
add_action('after_setup_theme', 'hello_elementor_setup');

function hello_maybe_update_theme_version_in_db()
{
	$theme_version_option_name = 'hello_theme_version';
	// The theme version saved in the database.
	$hello_theme_db_version = get_option($theme_version_option_name);

	// If the 'hello_theme_version' option does not exist in the DB, or the version needs to be updated, do the update.
	if (!$hello_theme_db_version || version_compare($hello_theme_db_version, HELLO_ELEMENTOR_VERSION, '<')) {
		update_option($theme_version_option_name, HELLO_ELEMENTOR_VERSION);
	}
}

if (!function_exists('hello_elementor_display_header_footer')) {
	/**
	 * Check whether to display header footer.
	 *
	 * @return bool
	 */
	function hello_elementor_display_header_footer()
	{
		$hello_elementor_header_footer = true;

		return apply_filters('hello_elementor_header_footer', $hello_elementor_header_footer);
	}
}

if (!function_exists('hello_elementor_scripts_styles')) {
	/**
	 * Theme Scripts & Styles.
	 *
	 * @return void
	 */
	function hello_elementor_scripts_styles()
	{
		if (apply_filters('hello_elementor_enqueue_style', true)) {
			wp_enqueue_style(
				'hello-elementor',
				HELLO_THEME_STYLE_URL . 'reset.css',
				[],
				HELLO_ELEMENTOR_VERSION
			);
		}

		if (apply_filters('hello_elementor_enqueue_theme_style', true)) {
			wp_enqueue_style(
				'hello-elementor-theme-style',
				HELLO_THEME_STYLE_URL . 'theme.css',
				[],
				HELLO_ELEMENTOR_VERSION
			);
		}

		if (hello_elementor_display_header_footer()) {
			wp_enqueue_style(
				'hello-elementor-header-footer',
				HELLO_THEME_STYLE_URL . 'header-footer.css',
				[],
				HELLO_ELEMENTOR_VERSION
			);
		}
	}
}
add_action('wp_enqueue_scripts', 'hello_elementor_scripts_styles');

if (!function_exists('hello_elementor_register_elementor_locations')) {
	/**
	 * Register Elementor Locations.
	 *
	 * @param ElementorPro\Modules\ThemeBuilder\Classes\Locations_Manager $elementor_theme_manager theme manager.
	 *
	 * @return void
	 */
	function hello_elementor_register_elementor_locations($elementor_theme_manager)
	{
		if (apply_filters('hello_elementor_register_elementor_locations', true)) {
			$elementor_theme_manager->register_all_core_location();
		}
	}
}
add_action('elementor/theme/register_locations', 'hello_elementor_register_elementor_locations');

if (!function_exists('hello_elementor_content_width')) {
	/**
	 * Set default content width.
	 *
	 * @return void
	 */
	function hello_elementor_content_width()
	{
		$GLOBALS['content_width'] = apply_filters('hello_elementor_content_width', 800);
	}
}
add_action('after_setup_theme', 'hello_elementor_content_width', 0);

if (!function_exists('hello_elementor_add_description_meta_tag')) {
	/**
	 * Add description meta tag with excerpt text.
	 *
	 * @return void
	 */
	function hello_elementor_add_description_meta_tag()
	{
		if (!apply_filters('hello_elementor_description_meta_tag', true)) {
			return;
		}

		if (!is_singular()) {
			return;
		}

		$post = get_queried_object();
		if (empty($post->post_excerpt)) {
			return;
		}

		echo '<meta name="description" content="' . esc_attr(wp_strip_all_tags($post->post_excerpt)) . '">' . "\n";
	}
}
add_action('wp_head', 'hello_elementor_add_description_meta_tag');

// Settings page
require get_template_directory() . '/includes/settings-functions.php';

// Header & footer styling option, inside Elementor
require get_template_directory() . '/includes/elementor-functions.php';

if (!function_exists('hello_elementor_customizer')) {
	// Customizer controls
	function hello_elementor_customizer()
	{
		if (!is_customize_preview()) {
			return;
		}

		if (!hello_elementor_display_header_footer()) {
			return;
		}

		require get_template_directory() . '/includes/customizer-functions.php';
	}
}
add_action('init', 'hello_elementor_customizer');

if (!function_exists('hello_elementor_check_hide_title')) {
	/**
	 * Check whether to display the page title.
	 *
	 * @param bool $val default value.
	 *
	 * @return bool
	 */
	function hello_elementor_check_hide_title($val)
	{
		if (defined('ELEMENTOR_VERSION')) {
			$current_doc = Elementor\Plugin::instance()->documents->get(get_the_ID());
			if ($current_doc && 'yes' === $current_doc->get_settings('hide_title')) {
				$val = false;
			}
		}
		return $val;
	}
}
add_filter('hello_elementor_page_title', 'hello_elementor_check_hide_title');



//archive page shortcode.


function dispensary_filter()
{
    // Start output buffering
    ob_start();
    ?>
    <div class="dispensary-archive-container">
        <form class="dispensary-filter">
            <?php
            // Get initial count for display
            $initial_args = array(
                'post_type' => 'dispensary',
                'posts_per_page' => -1,
                'post_status' => 'publish',
            );
            $initial_query = new WP_Query($initial_args);
            $total_initial = $initial_query->found_posts;
            wp_reset_postdata();

            // Calculate display range
            $posts_per_page = 4;
            $current_page = max(1, get_query_var('paged'));
            ?>

            <h4>Showing Results <?php echo $current_page; ?> - <?php echo $posts_per_page; ?> of
                <?php echo $total_initial; ?>
            </h4>

            <div class="form-group">
                <label for="dispensary-name">Search by Dispensary Name</label>
                <input type="text" id="dispensary-name" name="dispensary" placeholder="Search by Dispensary Name">
            </div>
            <div class="form-group location-wrapper">
                <label for="location">Location</label>
                <input type="text" id="dispensary_location" name="location" value="Philadelphia, PA, USA">
                <span class="location-icon">📍</span>
            </div>
            <div class="form-group">
                <label for="state">State</label>
                <select id="state" name="state">
                    <option value="">All States</option>
                    <?php
                    $states = [];

                    $posts = get_posts([
                        'post_type' => 'dispensary',
                        'posts_per_page' => -1,
                        'post_status' => 'publish',
                        'fields' => 'ids',
                    ]);
                    foreach ($posts as $post_id) {
                        $state = get_field('state', $post_id);
                        if ($state && !in_array($state, $states)) {
                            $states[] = $state;
                        }
                    }

                    $field = get_field_object('state', $post_id);
                    $state_options = $field['choices'];


                    if (is_array($state_options)) {
                        foreach ($state_options as $state_option) {
                            echo "<option value='$state_option'>" . $state_option . "</option>";
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="view">View</label>
                <select id="view" name="view">
                    <option value="">View All</option>
                    <option value="closed">Closed</option>
                    <option value="open">Open</option>
                </select>
            </div>
            <div class="form-group">
                <label for="type">Type</label>
                <select id="type" name="type">
                    <option value="">All Categories</option>
                    <?php
                    $categories = [];

                    $posts = get_posts([
                        'post_type' => 'dispensary',
                        'posts_per_page' => -1,
                        'post_status' => 'publish',
                        'fields' => 'ids',
                    ]);
                    foreach ($posts as $post_id) {
                        $category = get_field('categories', $post_id);
                        if ($category && !in_array($category, $categories)) {
                            $categories[] = $category;
                        }
                    }

                    $field = get_field_object('categories', $post_id);
                    $category_options = $field['choices'];


                    if (is_array($category_options)) {
                        foreach ($category_options as $category_option) {
                            echo "<option value='$category_option'>" . $category_option . "</option>";
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="range-wrapper">
                <label for="distance">Distance</label>
                <input type="range" id="distance" name="distance" min="0" max="500" value="10">
                <div class="range-labels">
                    <span>0 Miles</span>
                    <span>500 Miles</span>
                </div>
                <div style="font-size: 0.85rem; color: #2f5d2f; font-weight: 500;">10 Miles</div>
            </div>
            <button type="submit" class="search-btn">Search</button>
        </form>

        <div class="dispensary-grid" id="dispensary-results">

            <?php
            $args = array(
                'post_type' => 'dispensary',
                'posts_per_page' => 4,
                'paged' => $current_page,
                'post_status' => 'publish',
            );

            $dispensary_query = new WP_Query($args);

            if ($dispensary_query->have_posts()):
                while ($dispensary_query->have_posts()):
                    $dispensary_query->the_post();


                    //open and closed time:
                    $tz = new DateTimeZone('America/New_York');
                    $today = date('Y-m-d');

                    $open = new DateTime($today . ' ' . get_field('open_time'), $tz);
                    $close = new DateTime($today . ' ' . get_field('close_time'), $tz);
                    $now = new DateTime('now', $tz);

                    $status = ($now >= $open && $now <= $close) ? 'open' : 'closed';


                    // $permalink = get_permalink();
                    $featured_image_url = 'https://placehold.co/600x400';

                    if (has_post_thumbnail()) {
                        $featured_image_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                    }
                    $dispensary_address = get_field('dispensary_full_address');
                    $type = get_field('categories');
                    $permalink = get_permalink();

                    ?>
                    <!-- card  -->
                    <div class="card">
                        <a href="<?php echo esc_url($permalink); ?>" class="card-link">
                            <div class="image-wrapper">
                                <img src="<?php echo $featured_image_url; ?>" alt="Image">
                            </div>
                            <div class="card-content">
                                <div class="title"><?php the_title(); ?></div>
                                <div class="address"><?php echo $dispensary_address; ?></div>
                                <div class="status"><?php echo $status; ?></div>
                            </div>
                        </a>
                    </div>
                    <?php
                endwhile;
                wp_reset_postdata();

                // WordPress Default Pagination
                $total_pages = $dispensary_query->max_num_pages;
                if ($total_pages > 1):
                    echo '<div class="pagination-wrapper">';
                    echo paginate_links(array(
                        'base' => add_query_arg('paged', '%#%'),
                        'format' => '',
                        'current' => $current_page,
                        'total' => $total_pages,
                        'prev_text' => __('&laquo; Previous'),
                        'next_text' => __('Next &raquo;'),
                        'type' => 'plain',
                        'end_size' => 1,
                        'mid_size' => 4
                    ));
                    echo '</div>';
                endif;
            else:
                echo 'No dispensaries found.';
            endif;
            ?>
        </div>
        <script>
            jQuery(document).ready(function ($) {
                // Form submission event
                $('.dispensary-filter').on('submit', function (e) {
                    e.preventDefault(); // Prevent default form submission

                    var selectedState = $('#state').val();
                    var selectedView = $('#view').val();
                    var selectedType = $('#type').val();
                    var selectedDistance = $('#distance').val();
                    var searchName = $('#dispensary-name').val();

                    // Show loading state
                    $('#dispensary-results').html('<div style="text-align: center; padding: 40px;"><p>Loading...</p></div>');

                    // Make AJAX request
                    $.ajax({
                        url: '<?php echo admin_url('admin-ajax.php'); ?>',
                        type: 'POST',
                        data: {
                            action: 'filter_dispensaries',
                            state: selectedState,
                            view: selectedView,
                            type: selectedType,
                            distance: selectedDistance,
                            dispensary: searchName,
                            page: 1, // Reset to first page on new search
                            nonce: '<?php echo wp_create_nonce('dispensary_filter_nonce'); ?>'
                        },
                        success: function (response) {
                            console.log('AJAX Response:', response);
                            if (response.success) {
                                // Build HTML from JSON data
                                var html = '';
                                if (response.data.dispensaries && response.data.dispensaries.length > 0) {
                                    response.data.dispensaries.forEach(function (dispensary) {
                                        html += '<div class="card">' +
                                            '<a href="' + dispensary.permalink + '" class="card-link">' +
                                            '<div class="image-wrapper">' +
                                            '<img src="' + dispensary.image + '" alt="Image">' +
                                            '</div>' +
                                            '<div class="card-content">' +
                                            '<div class="title">' + dispensary.title + '</div>' +
                                            '<div class="address">' + dispensary.address + '</div>' +
                                            '<div class="status">' + dispensary.status + '</div>' +
                                            '</div>' +
                                            '</a>' +
                                            '</div>';
                                    });

                                    // Add pagination if needed
                                    if (response.data.total_pages > 1) {
                                        html += buildPagination(response.data.current_page, response.data.total_pages);
                                    }
                                } else {
                                    html = '<p>No dispensaries found matching your criteria.</p>';
                                }

                                $('#dispensary-results').html(html);

                                // Update results count
                                var totalPosts = <?php echo $total_initial; ?>;
                                var totalFilteredPosts = response.data.total;
                                var currentPage = response.data.current_page;
                                var postsPerPage = response.data.posts_per_page;
                                $('h4').text('Showing Results ' + currentPage + ' - ' + postsPerPage + ' of ' + totalFilteredPosts);
                            } else {
                                $('#dispensary-results').html('<p>Error loading results. Please try again.</p>');
                            }
                        },
                        error: function (xhr, status, error) {
                            console.error('AJAX Error:', status, error);
                            console.error('Response:', xhr.responseText);
                            $('#dispensary-results').html('<p>Error loading results. Please try again.</p>');
                        }
                    });
                });

                // Pagination click handler for filtered results
                $(document).on('click', '.ajax-page-link', function (e) {
                    e.preventDefault();
                    var page = $(this).data('page');
                    loadFilteredPage(page);
                });

                // Function to load specific page for filtered results
                function loadFilteredPage(page) {
                    var selectedState = $('#state').val();
                    var selectedView = $('#view').val();
                    var selectedType = $('#type').val();
                    var selectedDistance = $('#distance').val();
                    var searchName = $('#dispensary-name').val();

                    // Show loading state
                    $('#dispensary-results').html('<div style="text-align: center; padding: 40px;"><p>Loading...</p></div>');

                    $.ajax({
                        url: '<?php echo admin_url('admin-ajax.php'); ?>',
                        type: 'POST',
                        data: {
                            action: 'filter_dispensaries',
                            state: selectedState,
                            view: selectedView,
                            type: selectedType,
                            distance: selectedDistance,
                            dispensary: searchName,
                            page: page,
                            nonce: '<?php echo wp_create_nonce('dispensary_filter_nonce'); ?>'
                        },
                        success: function (response) {
                            if (response.success) {
                                var html = '';
                                if (response.data.dispensaries && response.data.dispensaries.length > 0) {
                                    response.data.dispensaries.forEach(function (dispensary) {
                                        html += '<div class="card">' +
                                            '<a href="' + dispensary.permalink + '" class="card-link">' +
                                            '<div class="image-wrapper">' +
                                            '<img src="' + dispensary.image + '" alt="Image">' +
                                            '</div>' +
                                            '<div class="card-content">' +
                                            '<div class="title">' + dispensary.title + '</div>' +
                                            '<div class="address">' + dispensary.address + '</div>' +
                                            '<div class="status">' + dispensary.status + '</div>' +
                                            '</div>' +
                                            '</a>' +
                                            '</div>';
                                    });

                                    // Add pagination
                                    if (response.data.total_pages > 1) {
                                        html += buildPagination(response.data.current_page, response.data.total_pages);
                                    }
                                }
                                $('#dispensary-results').html(html);

                                // Update results count
                                var availablePosts = response.data.total;
                                var currentPage = response.data.current_page;
                                var postsPerPage = response.data.posts_per_page;
                                var startResult = ((currentPage - 1) * postsPerPage) + 1;
                                var endResult = Math.min(startResult + postsPerPage - 1, availablePosts);
                                $('h4').text('Showing Results ' + startResult + ' - ' + endResult + ' of ' + availablePosts);
                            }
                        }
                    });
                }

                // Function to build pagination HTML for filtered results
                function buildPagination(currentPage, totalPages) {
                    var html = '<div class="pagination-wrapper">';
                    html += '<div class="pagination">';

                    // Previous page
                    if (currentPage > 1) {
                        html += '<a href="#" class="ajax-page-link page-link prev-page" data-page="' + (currentPage - 1) + '">&laquo; Previous</a>';
                    }

                    // Page numbers
                    for (var i = 1; i <= totalPages; i++) {
                        if (i == currentPage) {
                            html += '<span class="page-link current-page">' + i + '</span>';
                        } else {
                            html += '<a href="#" class="ajax-page-link page-link" data-page="' + i + '">' + i + '</a>';
                        }
                    }

                    // Next page
                    if (currentPage < totalPages) {
                        html += '<a href="#" class="ajax-page-link page-link next-page" data-page="' + (currentPage + 1) + '">Next &raquo;</a>';
                    }

                    html += '</div></div>';
                    return html;
                }

                // Optional: Add Enter key support for search input
                $('#dispensary-name').on('keypress', function (e) {
                    if (e.which === 13) { // Enter key
                        $('.dispensary-filter').submit();
                    }
                });
            });
        </script>

    </div>
    <?php
    $output = ob_get_clean();
    return $output;
}


// AJAX handler for filtering dispensaries
function filter_dispensaries_ajax()
{
    // Verify nonce
    if (!wp_verify_nonce($_POST['nonce'], 'dispensary_filter_nonce')) {
        wp_die('Security check failed');
    }

    // Get filter parameters
    $state = isset($_POST['state']) ? sanitize_text_field($_POST['state']) : '';
    $view = isset($_POST['view']) ? sanitize_text_field($_POST['view']) : '';
    $type = isset($_POST['type']) ? sanitize_text_field($_POST['type']) : '';
    // $distance = isset($_POST['distance']) ? intval($_POST['distance']) : 10;
    $dispensary = isset($_POST['dispensary']) ? sanitize_text_field($_POST['dispensary']) : '';
    $page = isset($_POST['page']) ? max(1, intval($_POST['page'])) : 1;
    $posts_per_page = 4; // Match the main query

    // Debug: Log the type filter value
    error_log('Type filter value: ' . $type);

    // Build query args
    $args = array(
        'post_type' => 'dispensary',
        'posts_per_page' => $posts_per_page,
        'paged' => $page,
        'post_status' => 'publish',
        'meta_query' => array(),
        'tax_query' => array()
    );

    // Add state filter
    if (!empty($state)) {
        $args['meta_query'][] = array(
            'key' => 'state',
            'value' => $state,
            'compare' => '='
        );
    }

    // Add category filter
    if (!empty($type)) {
        $args['meta_query'][] = array(
            'key' => 'categories',
            'value' => '"' . $type . '"',
            'compare' => 'LIKE'
        );
    }

    // Add name search
    if (!empty($dispensary)) {
        $args['s'] = $dispensary;
    }

    // First, get total count for pagination calculation (without view filter)
    $count_args = $args;
    $count_args['posts_per_page'] = -1; // Get all posts for counting
    unset($count_args['paged']); // Remove pagination for count

    $count_query = new WP_Query($count_args);
    $filtered_post_ids = array();

    if ($count_query->have_posts()):
        while ($count_query->have_posts()):
            $count_query->the_post();
            $post_id = get_the_ID();

            // Calculate status for view filter
            if (!empty($view)) {
                $tz = new DateTimeZone('America/New_York');
                $today = date('Y-m-d');
                $open = new DateTime($today . ' ' . get_field('open_time', $post_id), $tz);
                $close = new DateTime($today . ' ' . get_field('close_time', $post_id), $tz);
                $now = new DateTime('now', $tz);
                $status = ($now >= $open && $now <= $close) ? 'open' : 'closed';

                // Only include if status matches filter
                if ($status === $view) {
                    $filtered_post_ids[] = $post_id;
                }
            } else {
                $filtered_post_ids[] = $post_id;
            }
        endwhile;
        wp_reset_postdata();
    endif;

    // Calculate pagination based on filtered results
    $total_filtered = count($filtered_post_ids);
    $total_pages = ceil($total_filtered / $posts_per_page);
    $current_page = $page;

    // Get the post IDs for current page
    $offset = ($page - 1) * $posts_per_page;
    $current_page_ids = array_slice($filtered_post_ids, $offset, $posts_per_page);

    // Now get the actual posts for current page
    $dispensaries = array();
    if (!empty($current_page_ids)) {
        $final_args = array(
            'post_type' => 'dispensary',
            'posts_per_page' => -1,
            'post_status' => 'publish',
            'post__in' => $current_page_ids,
            'orderby' => 'post__in'
        );

        $final_query = new WP_Query($final_args);

        if ($final_query->have_posts()):
            while ($final_query->have_posts()):
                $final_query->the_post();
                $post_id = get_the_ID();

                // Get dispensary data
                $open_time = get_field('open_time', $post_id);
                $close_time = get_field('close_time', $post_id);
                $featured_image_url = 'https://placehold.co/600x400';
                $dispensary_address = get_field('dispensary_full_address', $post_id);
                $permalink = get_permalink($post_id);

                if (has_post_thumbnail()) {
                    $featured_image_url = get_the_post_thumbnail_url($post_id, 'full');
                }

                // Calculate status
                $tz = new DateTimeZone('America/New_York');
                $today = date('Y-m-d');
                $open = new DateTime($today . ' ' . get_field('open_time', $post_id), $tz);
                $close = new DateTime($today . ' ' . get_field('close_time', $post_id), $tz);
                $now = new DateTime('now', $tz);
                $status = ($now >= $open && $now <= $close) ? 'open' : 'closed';

                // Add dispensary data to array
                $dispensaries[] = array(
                    'id' => $post_id,
                    'title' => get_the_title(),
                    'address' => $dispensary_address,
                    'status' => $status,
                    'image' => $featured_image_url,
                    'open_time' => $open_time,
                    'close_time' => $close_time,
                    'permalink' => $permalink
                );

            endwhile;
            wp_reset_postdata();
        endif;
    }

    wp_send_json_success(array(
        'dispensaries' => $dispensaries,
        'count' => $total_filtered,
        'total' => $total_filtered,
        'total_pages' => $total_pages,
        'current_page' => $current_page,
        'posts_per_page' => $posts_per_page
    ));
}

// Register AJAX actions
add_action('wp_ajax_filter_dispensaries', 'filter_dispensaries_ajax');
add_action('wp_ajax_nopriv_filter_dispensaries', 'filter_dispensaries_ajax');

// Register the shortcode
add_shortcode('dispensary_filter', 'dispensary_filter');

/**
 * BC:
 * In v2.7.0 the theme removed the `hello_elementor_body_open()` from `header.php` replacing it with `wp_body_open()`.
 * The following code prevents fatal errors in child themes that still use this function.
 */
if (!function_exists('hello_elementor_body_open')) {
	function hello_elementor_body_open()
	{
		wp_body_open();
	}
}

require HELLO_THEME_PATH . '/theme.php';

HelloTheme\Theme::instance();
