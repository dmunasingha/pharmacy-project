<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleController extends Controller {
    /**
     * Display a listing of the resource.
     */
    public function index() {

        // Retrieve all roles with their associated permissions
        $roles = Role::with('permissions')->latest()->get();

        if ($roles->isEmpty()) {
            return response()->json([
                'status' => 'failed',
                'message' => 'No roles found!',
            ], 404);
        }

        $response = [
            'status' => 'success',
            'message' => 'Roles with permissions are retrieved successfully.',
            'data' => $roles,
        ];

        return response()->json($response, 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string|unique:roles,name|max:255',
        ]);

        if ($validate->fails()) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Validation Error!',
                'data' => $validate->errors(),
            ], 403);
        }

        $role = Role::create(['name' => $request->name, 'created_by' => $request->user()->id]);

        $response = [
            'status' => 'success',
            'message' => 'Role created successfully.',
            'data' => $role,
        ];

        return response()->json($response, 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($id) {
        $role = Role::find($id);

        if (is_null($role)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Role is not found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'Role is retrieved successfully.',
            'data' => $role,
        ];

        return response()->json($response, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id) {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:roles,name,' . $id,
        ]);

        if ($validate->fails()) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Validation Error!',
                'data' => $validate->errors(),
            ], 403);
        }

        $role = Role::find($id);

        if (is_null($role)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Role is not found!',
            ], 200);
        }

        $role->update(['name' => $request->name, 'updated_by' => $request->user()->id]);

        $response = [
            'status' => 'success',
            'message' => 'Role is updated successfully.',
            'data' => $role,
        ];

        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function delete(Request $request, $id) {
        $role = Role::find($id);

        if (!$role) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Role is not found!',
            ], 200);
        }

        // Update the specific Medication instance with the deleted_by field
        $role->update(['deleted_by' => $request->user()->id]);

        // Soft delete the Medication instance
        $role->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Role is deleted successfully.'
        ], 200);
    }

    public function assignPermissionToRole(Request $request) {
        $request->validate([
            'role' => 'required|string',
            'permission' => 'required|string',
        ]);

        $role = Role::where('name', $request->role)->first();
        if (!$role) {
            return response()->json(['status' => 'failed', 'message' => 'Role not found'], 404);
        }

        $permission = Permission::where('name', $request->permission)->first();
        if (!$permission) {
            return response()->json(['status' => 'failed', 'message' => 'Permission not found'], 404);
        }

        $role->givePermissionTo($permission);

        return response()->json(['status' => 'success', 'message' => 'Permission assigned to role successfully'], 200);
    }
}
