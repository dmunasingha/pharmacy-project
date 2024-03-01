<?php

namespace App\Http\Controllers;

use App\Models\Medication;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class MedicationController extends Controller {
    /**
     * Display a listing of the resource.
     */
    public function index() {
        $products = Medication::latest()->get();

        if (is_null($products->first())) {
            return response()->json([
                'status' => 'failed',
                'message' => 'No medications found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'Medications are retrieved successfully.',
            'data' => $products,
        ];

        return response()->json($response, 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) {
        $validate = Validator::make($request->all(), [
            'name' => 'required|string|max:250',
            'description' => 'required|string|',
            'quantity' => 'required'
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
            'description' => $request->description,
            'quantity' => $request->quantity,
            'created_by' => $request->user()->id,
        ];


        $product = Medication::create($data);

        $response = [
            'status' => 'success',
            'message' => 'Medication is added successfully.',
            'data' => $product,
        ];

        return response()->json($response, 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($medication) {
        $product = Medication::find($medication);

        if (is_null($product)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Medication is not found!',
            ], 200);
        }

        $response = [
            'status' => 'success',
            'message' => 'Medication is retrieved successfully.',
            'data' => $product,
        ];

        return response()->json($response, 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $medication) {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'description' => 'required',
            'quantity' => 'required'
        ]);

        if ($validate->fails()) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Validation Error!',
                'data' => $validate->errors(),
            ], 403);
        }

        $product = Medication::find($medication);

        if (is_null($product)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Medication is not found!',
            ], 200);
        }

        $data = [
            'name' => $request->name,
            'description' => $request->description,
            'quantity' => $request->quantity,
            'updated_by' => $request->user()->id,
        ];

        $product->update($data);

        $response = [
            'status' => 'success',
            'message' => 'Medication is updated successfully.',
            'data' => $product,
        ];

        return response()->json($response, 200);
    }

    /**
     * Soft Remove the specified resource from storage.
     */
    public function delete(Request $request, $medication) {
        $product = Medication::find($medication);

        if (!$product) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Medication is not found!',
            ], 200);
        }

        // Update the specific Medication instance with the deleted_by field
        $product->update(['deleted_by' => $request->user()->id]);

        // Soft delete the Medication instance
        $product->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Medication is deleted successfully.'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($medication) {

        // Retrieve the Medication model, even if it's soft deleted
        $product = Medication::withTrashed()->find($medication);

        if (is_null($product)) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Medication is not found!',
            ], 200);
        }

        $product->forceDelete();

        return response()->json([
            'status' => 'success',
            'message' => 'Medication is deleted successfully.'
        ], 200);
    }
}
