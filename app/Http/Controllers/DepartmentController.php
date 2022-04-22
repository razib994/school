<?php

namespace App\Http\Controllers;

use App\Models\ClassSubject;
use App\Models\Department;
use App\Models\Subject;
use App\Models\Topic;
use App\Traits\HasPermission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class DepartmentController extends Controller
{
    use HasPermission;
    public function __construct(Request $request)
    {
        $this->page_title   = $request->route()->getName();
        $description        = \Request::route()->getAction();
        $this->page_desc    = isset($description['desc']) ? $description['desc'] : $this->page_title;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $data['page_title']     = $this->page_title;
        $data['module_name']    = "Academic";
        $data['sub_module']     = "Subject";

        $admin_user_id          = Auth::user()->id;
        $add_action_id          = 164;
        $add_permission         = $this->PermissionHasOrNot($admin_user_id, $add_action_id);
        $data['actions']['add_permission'] = $add_permission;
        return view('department.department', $data);
    }

    public function createOrEdit(Request $request)
    {
        $admin_user_id          = Auth::user()->id;
        $userType               = Auth::user()->type;
        $entry_permission       = $this->PermissionHasOrNot($admin_user_id, 163);
        $update_permission      = $this->PermissionHasOrNot($admin_user_id, 164);

        // update
        if (!is_null($request->input('edit_id')) && $request->input('edit_id') != "" && $update_permission) {
            $response_data =  $this->editDepartment($request->all(), $request->input('edit_id'));
        }
        // new entry
        else if ($entry_permission) {
            $response_data =  $this->createDepartment($request->all());
        } else {
            $return['response_code'] = 0;
            $return['errors'] = "You are not authorized to insert a Subject";
            $response_data = json_encode($return);
        }
        return $response_data;
    }

    private function createDepartment($request)
    {
        $centerId = Auth::user()->center_id;
        try {
            $rule = [
                'department_name'               => 'required',
                'color'                         => 'required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['response_code'] = "0";
                $return['errors'] = $validation->errors();
                return json_encode($return);
            } else {
                DB::beginTransaction();
                $department = Department::create([
                    'department_name'   =>  $request['department_name'],
                    'color'             =>  $request['color'],
                    'created_by'        =>  Auth::user()->id,
                    'status'            => (isset($request['status'])) ? 'Active' : 'Inactive'
                ]);
                DB::commit();
                $return['response_code'] = 1;
                $return['message'] = "Department saved successfully";
                return json_encode($return);
            }
        } catch (\Exception $e) {
            DB::rollback();
            $return['response_code']     = 0;
            $return['errors'] = "Failed to save !" . $e->getMessage();
            return json_encode($return);
        }
    }

    private function editDepartment($request, $id)
    {
        try {
            if ($id == "") { return json_encode(array('response_code' => 0, 'errors' => "Invalid request! ")); }
            $department = Department::findOrFail($id);
            if (empty($department)) {
                return json_encode(array('response_code' => 0, 'errors' => "Invalid request! No Subject found"));
            }
            $rule = [
                'department_name'     => 'required',
                'color'               => 'required',
            ];
            $validation = Validator::make($request, $rule);
            if ($validation->fails()) {
                $return['response_code'] = "0";
                $return['errors'] = $validation->errors();
                return json_encode($return);
            } else {
                DB::beginTransaction();
                $department->department_name    = $request['department_name'];
                $department->color              = $request['color'];
                $department->status             =  (isset($request['status'])) ? "Active" : 'Inactive';
                $department->update();
                DB::commit();
                $return['response_code'] = 1;
                $return['message'] = "Department Updated successfully";
                return json_encode($return);
            }
        } catch (\Exception $e) {
            DB::rollback();
            $return['response_code']     = 0;
            $return['errors'] = "Failed to update !" . $e->getMessage();
            return json_encode($return);
        }
    }

    public function show($id)
    {
        if ($id == "") return 0;
        $department = Department::findOrFail($id);
        return json_encode(array('department' => $department));
    }

    public function showList()
    {
        $admin_user_id       = Auth::user()->id;
        $userType            = Auth::user()->type;
        $edit_action_id      = 165; //  edit
        $delete_action_id    = 166; //  delete
        $edit_permisiion     = $this->PermissionHasOrNot($admin_user_id, $edit_action_id);
        $delete_permisiion   = $this->PermissionHasOrNot($admin_user_id, $delete_action_id);

        $departments     = Department::orderBy('created_at', 'desc')->get();
        $return_arr = array();
        foreach ($departments as $department) {
            $data['actions']            = "";
            $data['status']             = ($department->status == 'Active') ? "<button class='btn btn-xs btn-success' disabled>Active</button>" : "<button class='btn btn-xs btn-danger' disabled>Inactive</button>";
            $data['department_name']    = $department->department_name;
            $data['color']              = $department->color;
            $data['actions']            = "<button title='View' onclick='departmentView(" . $department->id . ")' id='view_" . $department->id . "' class='btn btn-xs btn-info' ><i class='lnr-eye'></i></button>&nbsp;";
            if ($edit_permisiion > 0) {
                $data['actions'] .= "<button onclick='departmentEdit(" . $department->id . ")' id=edit_" . $department->id . " class='btn btn-xs btn-hover-shine  btn-primary' ><i class='lnr-pencil'></i></button>";
            }
            if ($delete_permisiion > 0) {
                $data['actions'] .= " <button onclick='departmentDelete(" . $department->id . ")' id='delete_" . $department->id . "' class='btn btn-xs btn-danger' ><i class='fa fa-trash'></i></button>";
            }
            $return_arr[] = $data;
        }
        return json_encode(array('data' => $return_arr));
    }

    public function destroy($id)
    {
        if ($id == "") {
            return json_encode(array('response_code' => 0, 'errors' => "Invalid request! "));
        }

        try {
            DB::beginTransaction();

               $department =  Department::findOrFail($id);
               $department->delete();
               $return['message'] = "Department Deleted successfully";
//                $department->status = 'Inactive';
//                $department->update();
//                $return['message'] = "Department is not possible, but Inactive the Department";
            DB::commit();
            $return['response_code'] = 1;
            return json_encode($return);

        }  catch (\Exception $e) {
            DB::rollback();
            $return['response_code']     = 0;
            $return['errors'] = "Failed to delete !" . $e->getMessage();
            return json_encode($return);
        }
    }
}
