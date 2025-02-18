<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Booking;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    public function getBookedDates($room_id)
{
    $bookings = Booking::where('room_id', $room_id)
        ->get(['start_date', 'end_date']);

    return response()->json($bookings);
}

}
