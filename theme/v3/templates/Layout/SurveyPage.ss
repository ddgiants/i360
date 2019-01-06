<!--=== Breadcrumbs ===-->
<div class="breadcrumbs">
    <div class="container">
        <h1 class="pull-left">$Title</h1>
    </div>
</div>
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container content">		
    <div class="row">
        <% if SurveyComplete %>
        <div class="col-md-12">
            $Content
        </div>
        <% else %>
        <div class="col-md-8">
            $Form
    	</div>
    	<div class="col-md-4">
            <div class="row margin-bottom-20">
                <div class="col-xs-12">
                    <div class="shadow-wrapper margin-bottom-20">
                        <div class="tag-box tag-box-v1 tag-box-p10 box-shadow shadow-effect-1">
                            <h2>A message from the publisher...</h2>
                            $Content
                        </div>
                    </div>
                </div>
            </div>
    	</div>
        <% end_if %>
    </div>
</div>
<!--=== End Content Part ===-->