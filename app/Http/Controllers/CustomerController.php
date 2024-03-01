<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CustomerController extends Controller {
    /**
     * Display a listing of the resource.
     */
    public function index() {
        $customers = Customer::latest()->get();

        if (is_null($customers->first())) {
            return response()->json([
                'status' => 'failed',
                'message' => 'No customers found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'Customers are retrieved successfully.',
            'data' => $customers,
        ];

        return response()->json($response, 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string|max:250|unique:customers,name',
            'email' => 'nullable|email|unique:customers,email',
            'contact' => 'required',
            'address' => 'required'
        ]);

        if ($validate->fails()) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Validation Error!',
                'data' => $validate->errors(),
            ], 403);
        }


        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'address' => $request->address,
            'contact' => $request->contact,
            'created_by' => $request->user()->id,
        ];


        $customer = Customer::create($data);

        $response = [
            'status' => 'success',
            'message' => 'Customer is added successfully.',
            'data' => $customer,
        ];

        return response()->json($response, 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($id) {
        $customer = Customer::find($id);

        if (is_null($customer)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Customer is not found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'Customer is retrieved successfully.',
            'data' => $customer,
        ];

        return response()->json($response, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id) {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string|max:250|unique:customers,name,' . $id,
            'email' => 'nullable|email|unique:customers,email,' . $id,
            'contact' => 'required',
            'address' => 'required'
        ]);

        if ($validate->fails()) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Validation Error!',
                'data' => $validate->errors(),
            ], 403);
        }

        $customer = Customer::find($id);

        if (is_null($customer)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Customer is not found!',
            ], 200);
        }

        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'address' => $request->address,
            'contact' => $request->contact,
            'updated_by' => $request->user()->id,
        ];

        $customer->update($data);

        $response = [
            'status' => 'success',
            'message' => 'Customer is updated successfully.',
            'data' => $customer,
        ];

        return response()->json($response, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id) {
        // Retrieve the Customer model, even if it's soft deleted
        $customer = Customer::withTrashed()->find($id);

        if (is_null($customer)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Customer is not found!',
            ], 200);
        }

        $customer->forceDelete();

        return response()->json([
            'status' => 'success',
            'message' => 'Customer is deleted successfully.'
        ], 200);
    }
    /**
     * Soft Remove the specified resource from storage.
     */
    public function delete(Request $request, $id) {
        $customer = Customer::find($id);

        if (!$customer) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Customer is not found!',
            ], 200);
        }

        // Update the specific Customer instance with the deleted_by field
        $customer->update(['deleted_by' => $request->user()->id]);

        // Soft delete the Customer instance
        $customer->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Customer is deleted successfully.'
        ], 200);
    }
}