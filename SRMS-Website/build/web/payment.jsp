<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Payment</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container-fluid" style="margin-top: 40px">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-5">
                            <dl>
                                <dt>
                                    Description lists
                                </dt>
                                <dd>
                                    A description list is perfect for defining terms.
                                </dd>
                                <dt>
                                    Euismod
                                </dt>
                                <dd>
                                    Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
                                </dd>
                                <dd>
                                    Donec id elit non mi porta gravida at eget metus.
                                </dd>
                                <dt>
                                    Malesuada porta
                                </dt>
                                <dd>
                                    Etiam porta sem malesuada magna mollis euismod.
                                </dd>
                                <dt>
                                    Felis euismod semper eget lacinia
                                </dt>
                                <dd>
                                    Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                                </dd>
                            </dl>
                        </div>
                        <div class="col-md-5">
                            <form class="form-horizontal">
                                <fieldset>
                                    <div id="legend">
                                        <legend class="">Payment</legend>
                                    </div>

                                    <!-- Name -->
                                    <div class="control-group">
                                        <label class="control-label"  for="username">Card Holder's Name</label>
                                        <div class="controls">
                                            <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                                        </div>
                                    </div>

                                    <!-- Card Number -->
                                    <div class="control-group">
                                        <label class="control-label" for="email">Card Number</label>
                                        <div class="controls">
                                            <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
                                        </div>
                                    </div>

                                    <!-- Expiry-->
                                    <div class="control-group">
                                        <label class="control-label" for="password">Card Expiry Date</label>
                                        <div class="controls">
                                            <select class="span3" name="expiry_month" id="expiry_month">
                                                <option></option>
                                                <option value="01">Jan (01)</option>
                                                <option value="02">Feb (02)</option>
                                                <option value="03">Mar (03)</option>
                                                <option value="04">Apr (04)</option>
                                                <option value="05">May (05)</option>
                                                <option value="06">June (06)</option>
                                                <option value="07">July (07)</option>
                                                <option value="08">Aug (08)</option>
                                                <option value="09">Sep (09)</option>
                                                <option value="10">Oct (10)</option>1
                                                <option value="11">Nov (11)</option>
                                                <option value="12">Dec (12)</option>
                                            </select>
                                            <select class="span2" name="expiry_year">
                                                <option value="13">2013</option>
                                                <option value="14">2014</option>
                                                <option value="15">2015</option>
                                                <option value="16">2016</option>
                                                <option value="17">2017</option>
                                                <option value="18">2018</option>
                                                <option value="19">2019</option>
                                                <option value="20">2020</option>
                                                <option value="21">2021</option>
                                                <option value="22">2022</option>
                                                <option value="23">2023</option>
                                            </select>
                                        </div>
                                    </div>

                                    <!-- CVV -->
                                    <div class="control-group">
                                        <label class="control-label"  for="password_confirm">Card CVV</label>
                                        <div class="controls">
                                            <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
                                        </div>
                                    </div>

                                    <!-- Save card -->
                                    <div class="control-group">
                                        <div class="controls">
                                            <label class="checkbox" for="save_card">
                                                <input type="checkbox" id="save_card" value="option1">
                                                    Save card on file?
                                            </label>
                                        </div>
                                    </div>

                                    <!-- Submit -->
                                    <div class="control-group">
                                        <div class="controls">
                                            <button class="btn btn-success">Pay Now</button>
                                        </div>
                                    </div>

                                </fieldset>
                            </form>
                        </div>
                        <div class="col-md-1">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/jquery-1.11.1.js"></script>
        <script src="assets/js/bootstrap.js"></script>
    </body>
</html>

