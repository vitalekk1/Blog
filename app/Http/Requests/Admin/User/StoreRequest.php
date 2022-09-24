<?php

namespace App\Http\Requests\Admin\User;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string',

        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'This field is required',
            'name.string' => 'Data must match the string type',
            'email.required' => 'This field is required',
            'email.string' => 'Data must match the string type',
            'email.email' => 'Your mail must match the format mail@some.domain',
            'password.unique' => 'User with this email address already exists',
            'password.string' => 'Data must match the string type',
        ];
    }
}
