<?php echo $header; ?>
<!-- BREADCRUMB ================================================== -->
<div class="breadcrumb">
    <div class="container">
        <div class="clearfix">
            <ul>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>
<!-- MAIN CONTENT ================================================== -->
<div class="main-content full-width home">
    <div class="container">
        <?php echo $content_top; ?>
        <div class="row">
            <div class="col-sm-12 center-column">
                <h2 id="title-page"><?php echo $heading_title; ?></h2>

                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left" colspan="2"><?php echo $text_recurring_detail; ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-left" style="width: 50%;"><b><?php echo $text_order_recurring_id; ?></b> #<?php echo $order_recurring_id; ?><br />
                                <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?><br />
                                <b><?php echo $text_status; ?></b> <?php echo $status; ?><br />
                                <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?></td>
                            <td class="text-left" style="width: 50%;"><b><?php echo $text_order_id; ?></b> <a href="<?php echo $order; ?>">#<?php echo $order_id; ?></a><br />
                                <b><?php echo $text_product; ?></b> <a href="<?php echo $product; ?>"><?php echo $product_name; ?></a><br />
                                <b><?php echo $text_quantity; ?></b> <?php echo $product_quantity; ?></td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left"><?php echo $text_description; ?></td>
                            <td class="text-left"><?php echo $text_reference; ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-left" style="width: 50%;"><?php echo $recurring_description; ?></td>
                            <td class="text-left" style="width: 50%;"><?php echo $reference; ?></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <h3><?php echo $text_transaction; ?></h3>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left"><?php echo $column_date_added; ?></td>
                            <td class="text-left"><?php echo $column_type; ?></td>
                            <td class="text-right"><?php echo $column_amount; ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if ($transactions) { ?>
                            <?php foreach ($transactions as $transaction) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $transaction['date_added']; ?></td>
                                    <td class="text-left"><?php echo $transaction['type']; ?></td>
                                    <td class="text-right"><?php echo $transaction['amount']; ?></td>
                                </tr>
                            <?php } ?>
                        <?php } else { ?>
                            <tr>
                                <td colspan="3" class="text-center"><?php echo $text_no_results; ?></td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <?php echo $content_bottom; ?>
    </div>
</div>
<?php echo $column_right; ?>
<?php echo $footer; ?>