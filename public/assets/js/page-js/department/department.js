$(document).ready(function () {
    department_table = $('#department_table').DataTable({
        destroy: true,
        "order": [[0, 'desc']],
        "processing": true,
        "serverSide": false,
        "ajax": url + "/departments",
        "aoColumns": [
            { mData: 'department_name' },
            { mData: 'color' },
            { mData: 'status', className: "text-center" },
            { mData: 'actions', className: "text-left" },
        ],
        "columnDefs": [
        ],
    });

    DepartmentAdd = function DepartmentAdd() {
        $(".delete-row").trigger('click');
        $("#form-title").html('<i class="fa fa-plus"></i> Add  Department');
        $("#clear_button").show();
        $("#save_school_admin_info").html('Save');
        $('#entry-form').modal('show');
        $("#clear_button").on('click', function () {
            clear_form();
        });
    }
    $("#emp_details").on('click', '.delete-row', function () {
        $(this).closest('tr').remove();
    });

    //save Department
    $("#save_department").on('click', function () {
       // $("#entry-form").val(null).trigger("change");
        event.preventDefault();
        var formData = new FormData($('#department_form')[0]);

        if ($.trim($('#department_name').val()) == "") {
            success_or_error_msg('#form_submit_error', 'danger', "Please enter Subject Name", "#department_name");
        }
        if ($.trim($('#color').val()) == "") {
            success_or_error_msg('#form_submit_error', 'danger', "Please enter Topic Name", "#color");
        } else {
            $.ajax({
                url: url + "/department",
                type: 'POST',
                data: formData,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    console.log(data);
                    var response = JSON.parse(data);
                    if (response['response_code'] == 0) {
                        var errors = response['errors'];
                        resultHtml = '<ul>';
                        if (typeof (errors) == 'string') {
                            resultHtml += '<li>' + errors + '</li>';
                        }
                        else {
                            $.each(errors, function (k, v) {
                                resultHtml += '<li>' + v + '</li>';
                            });
                        }
                        resultHtml += '</ul>';
                        success_or_error_msg('#master_message_div', "danger", resultHtml);
                    }
                    else {

                        toastr['success']('Saved Successfully');
                        $('.modal').modal('hide')
                        clear_form();
                        department_table.ajax.reload();
                        $("#save_department").html('Save');

                        $("#id").val('');
                    }
                    $(window).scrollTop();
                }
            });
        }
    });

    //Department Edit
    departmentEdit = function departmentEdit(id) {
        var edit_id = id;
        $.ajax({
            url: url + '/department/' + edit_id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['department'];
                $("#save_department").html('Update');
                $("#clear_button").hide();
                $("#color").val(data['color']);
                $("#department_name").val(data['department_name']);
                $("#edit_id").val(data['id']);
                (data['status'] == 'Inactive') ? $("#status").iCheck('uncheck') : $("#status").iCheck('check');
                $('#entry-form').modal('show');
                $("#form-title").html('<i class="lnr-pencil"></i> Edit Department </h5>');
            }
        });
    }

    //Department detail View
    departmentView = function departmentView(id) {
        $.ajax({
            url: url + '/department/' + id,
            cache: false,
            success: function (response) {
                var response = JSON.parse(response);
                var data = response['department'];
                var statusHtml = (data['status'] == "Active") ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-danger">In-active</span>';
                var modalHtml = "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Department Name :</strong></div>" + "<div class='col-lg-9 col-md-8'>" + data['department_name'] + "</div></div><br>" +
                    "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Color :</strong></div>" + "<div class='col-lg-9 col-md-8'><span style='color: #fff; background:"+data['color']+"; padding: 5px;'> " + data['color'] + " </span></div></div><br>" +
                    "<div class='row margin-top-5'><div class='col-lg-3 col-md-4 '><strong>Status :</strong></div>" + "<div class='col-lg-9 col-md-8'>" + statusHtml + "</div></div><br><br>";
                modalHtml += "</div></div>";
                $('#myModalLabelLg').html('Department Details');
                $('#modalBodyLg').html(modalHtml);
                $("#generic_modal_lg").modal();
            }
        });
    }

    //Department Delete
    departmentDelete = function departmentDelete(id) {
        var delete_id = id;
        swal({
            title: "Are you sure?",
            text: "You wants to delete item parmanently!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    url: url + '/department/delete/' + delete_id,
                    cache: false,
                    success: function (response) {
                        var response = JSON.parse(response);
                        swal(response['message'], {
                            icon: "success",
                        });
                        department_table.ajax.reload();
                    }
                });
            }
            else {
                swal("Your Data is safe..!", {
                    icon: "warning",
                });
            }
        });
    }
});

