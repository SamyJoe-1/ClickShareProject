<?php

namespace App\Http\Controllers\APIs;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\APIs\ResponseJSON;

class AuthenticationController extends Controller
{
    use ResponseJSON;

    public function __construct()
    {
//        $this->middleware(['auth_otp_api'])->only(['send_otp', 'check_otp']);
    }

    public function index(){
        return $this->ResponseAPI(200, "User Details", ['user' => Auth()->user()]);
    }

    public function register(Request $request){
        $rules = [
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users,email'],
            'password' => ['required'],
        ];

        $validator = Validator::make($request->all(), $rules);
        if (count($validator->errors()) > 0){
            return $this->ResponseAPI(401, "error", $validator->errors()->first());
        }
        $user = User::create([
            'name' => $request['name'],
            'email' => $request['email'],
            'password' => Hash::make($request['password']),
        ]);
        return $this->ResponseAPI(200, "Registration has done successfully", $user->createToken('API Token')->plainTextToken);
    }

    public function login(Request $request){
        $rules = [
            'email' => "required",
            'password' => "required"
        ];
        $validator = Validator::make($request->all(), $rules);
        if (count($validator->errors()) > 0){
            return $this->ResponseAPI(401, "error", $validator->errors()->first());
        }
        $credentials = $request->only(['email', 'password']);
        $attempt = Auth()->attempt($credentials);
        if ($attempt){
            $user = User::find(User::where('email', $request->email)->first()->id);
            return $this->ResponseAPI(200, "User has logged successfully", $user->createToken('API Token')->plainTextToken);
        }else{
            return $this->ResponseAPI(401, "error", 'wrong credentials');
        }
    }
}
