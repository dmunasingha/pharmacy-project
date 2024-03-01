<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller {
    /**
     * Display a listing of the resource.
     */
    public function index() {
        $users = User::with('roles')->latest()->get();

        if (is_null($users->first())) {
            return response()->json([
                'status' => 'failed',
                'message' => 'No users found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'Users are retrieved successfully.',
            'data' => $users,
        ];

        return response()->json($response, 200);
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id) {
        $user = User::with('roles')->find($id);

        if (is_null($user)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'User is not found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'User is retrieved successfully.',
            'data' => $user,
        ];

        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id, Request $request) {
        $user = User::find($id);

        if (!$user) {
            return response()->json([
                'status' => 'failed',
                'message' => 'User is not found!',
            ], 200);
        }

        // Update the specific user instance with the deleted_by field
        $user->update(['deleted_by' => $request->user()->id]);

        // Soft delete the user instance
        $user->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'User is deleted successfully.'
        ], 200);
    }
}
