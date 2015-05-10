[[*pagetitle:FormBlocksStripAsAlias:toPlaceholder=`title`]]

[[!FormIt?
    &hooks=`spam,FormBlocksEmail,redirect`
    &emailLayoutTpl=`[[*form_email_template:empty=`FormBlocksEmail`]]`
    &emailRowTpl=`[[*form_email_template_rows:empty=`FormBlocksEmailRow`]]`
    &emailTo=`[[*form_email_to:empty=`[[++client_email:empty=`[[++email_sender]]`]]`]]`
    &emailSubject=`[[*form_email_subject:empty=`[[%formblocks.email.subject]]`]]`
    &validate=``
    &submitVar=`submit-[[+title]]`
    &redirectTo=`[[*form_redirect]]`
]]

[[cbGetFieldContent? &field=`[[++cb_field_input_textfield_id]]` &tpl=`FormBlocksValidateRow` &fieldSettingFilter=`field_required==1`]]
[[cbGetFieldContent? &field=`[[++cb_field_input_textarea_id]]` &tpl=`FormBlocksValidateRow` &fieldSettingFilter=`field_required==1`]]
[[cbGetFieldContent? &field=`[[++cb_field_select_option_id]]` &tpl=`FormBlocksValidateRow` &fieldSettingFilter=`field_required==1`]]
[[cbGetFieldContent? &field=`[[++cb_field_select_option_collapse_id]]` &tpl=`FormBlocksValidateRow` &fieldSettingFilter=`field_required==1`]]
[[cbGetFieldContent? &field=`[[++cb_field_select_dropdown_id]]` &tpl=`FormBlocksValidateRow` &fieldSettingFilter=`field_required==1`]]
[[cbGetFieldContent? &field=`[[++cb_field_select_dropdown_auto_id]]` &tpl=`FormBlocksValidateRow` &fieldSettingFilter=`field_required==1`]]

[[!+fi.validation_error_message:notempty=`
<div class="alert alert-danger">
    <button type="button" class="icon close" data-dismiss="alert"></button>
    [[%formblocks.form.validation_error]]
</div>
`]]

<form id="form-[[+title]]" class="[[*form_layout]]" action="[[~[[+currentID]]]]" method="post" enctype="multipart/form-data">
    <input type="text" name="workemail" class="hidden" value="">

    [[*content]]

    <fieldset>
        <div class="form-group submit">
            [[*form_layout:is=`form-horizontal`:then=`<div class="col-sm-offset-4 col-sm-8">`]]
                <input type="submit" value="[[*form_submit_button:default=`[[%formblocks.form.submit_button]]`]]" name="submit-[[+title]]" class="btn btn-primary">
            [[*form_layout:is=`form-horizontal`:then=`</div>`]]
        </div>
    </fieldset>
</form>

[[FormBlocksLoadAssets]]