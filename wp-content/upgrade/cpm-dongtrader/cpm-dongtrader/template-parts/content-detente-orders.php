<?php

defined('ABSPATH') || exit;
$order_details              = get_user_meta(get_current_user_id(), '_buyer_details', true);
$filter_template_path       = CPM_DONGTRADER_PLUGIN_DIR . 'template-parts' . DIRECTORY_SEPARATOR . 'partials' . DIRECTORY_SEPARATOR . 'filter-top.php';
$pagination_template_path   = CPM_DONGTRADER_PLUGIN_DIR . 'template-parts' . DIRECTORY_SEPARATOR . 'partials' . DIRECTORY_SEPARATOR . 'pagination-buttom.php';
extract($args);


$paid_orders = get_user_orders(['completed']);
$unpaid_backorders = get_user_orders(['on-hold', 'processing', 'pending']);

$can_user_pay = get_user_meta(get_current_user_id(), 'can_pay', true);
$can_user_pay = $can_user_pay == '1' ? true : false;
$is_order_payable = (isLastDayOfMonth() && $can_user_pay) ? true : false;

$pay_btn = '';

$seven_percent_total_unfunded = 0;
$seven_percent_total_funded = 0;


?>
<div class="detente-orders cpm-table-wrap">
	<h3><?php esc_html_e('My orders', 'cpm-dongtrader'); ?></h3>
	<br class="clear" />


	<!-- ============================== -->
	<!-- ============================== -->
	<!-- ============================== -->

	<?php
	echo '<h5>Unpaid Backorders</h5>';
	if (!empty($unpaid_backorders)) { ?>
		<table class="woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
			<thead>
				<tr>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-number"><span class="nobr">Order</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-date"><span class="nobr">Date</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total"><span class="nobr">Total</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total"><span class="nobr">7%(unfunded)</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-actions"><span class="nobr">Actions</span></th>
				</tr>
			</thead>

			<tbody>

				<?php foreach ($unpaid_backorders as $order) {
					$total_quantity = 0;
					$seven_percent = ($order->get_total() * 0.07);
					$seven_percent_total_unfunded += $seven_percent;

					foreach ($order->get_items() as $item_id => $item) {
						$total_quantity += $item->get_quantity();
					}

					if($is_order_payable){
						$pay_btn = '<a href="' . esc_url($order->get_checkout_payment_url()) . '" class="woocommerce-button wp-element-button button view">Pay Now</a>';
					}

					echo '
					<tr class="woocommerce-orders-table__row woocommerce-orders-table__row--status-completed order">
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
							<a href="' . esc_url($order->get_view_order_url()) . '">#' . $order->get_id() . '</a>
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
							<time datetime="2024-06-17T05:17:35+00:00">' . date_i18n('F j, Y', strtotime($order->get_date_created())) . '</time>
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
							<span class="woocommerce-Price-amount amount">' . $order->get_formatted_order_total() . ' for ' . $total_quantity . ' item(s)
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
							<span class="woocommerce-Price-amount amount">' . wc_price($seven_percent) . '</span>
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
							'.$pay_btn.'
						</td>
					</tr>
					';
					
				} ?>
			</tbody>
		</table>
		<p>Total 7%(unfunded): <?php echo wc_price($seven_percent_total_unfunded); ?></p>
		<br class="clear" />
	<?php
	} else {
		echo '<p>No unpaid backorders found.</p>';
	}

	echo '<h5>Paid Orders</h5>';
	if (!empty($paid_orders)) { ?>
		<table class="woocommerce-orders-table woocommerce-MyAccount-orders shop_table shop_table_responsive my_account_orders account-orders-table">
			<thead>
				<tr>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-number"><span class="nobr">Order</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-date"><span class="nobr">Date</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total"><span class="nobr">Total</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-total"><span class="nobr">7%(funded)</span></th>
					<th class="woocommerce-orders-table__header woocommerce-orders-table__header-order-actions"><span class="nobr">Actions</span></th>
				</tr>
			</thead>

			<tbody>
				<?php
				$total_paid_amount = 0;
				foreach ($paid_orders as $order) {
					$total_quantity = 0;
					$total_paid_amount += $order->get_total();
					$seven_percent = ($order->get_total() * 0.07);
					$seven_percent_total_funded += $seven_percent;
					foreach ($order->get_items() as $item_id => $item) {
						$total_quantity += $item->get_quantity();
					}

					echo '
					<tr class="woocommerce-orders-table__row woocommerce-orders-table__row--status-completed order">
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-number" data-title="Order">
							<a href="' . esc_url($order->get_view_order_url()) . '">#' . $order->get_id() . '</a>
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-date" data-title="Date">
							<time datetime="2024-06-17T05:17:35+00:00">' . date_i18n('F j, Y', strtotime($order->get_date_created())) . '</time>
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
							<span class="woocommerce-Price-amount amount">' . $order->get_formatted_order_total() . ' for ' . $total_quantity . ' item(s)
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-total" data-title="Total">
							<span class="woocommerce-Price-amount amount">' . wc_price($seven_percent) . '</span>
						</td>
						<td class="woocommerce-orders-table__cell woocommerce-orders-table__cell-order-actions" data-title="Actions">
							<a href="' . esc_url($order->get_view_order_url()) . '" class="woocommerce-button wp-element-button button view">View</a>
						</td>
					</tr>
					';
				} ?>
			</tbody>
		</table>
		<p>Total 7%(funded): <?php echo wc_price($seven_percent_total_funded); ?></p>
		<p>Total Paid Amount: <?php echo wc_price($total_paid_amount);?></p>
		<br class="clear" />
	<?php 
	} else {
		echo '<p>No paid orders found.</p>';
	} ?>
</div>