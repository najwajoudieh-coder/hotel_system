<!DOCTYPE html>
<html>
  <head> 
    
    @include('admin.css')
    <style type="text/css">
        .table_design{
            border: 2px solid white;
            width: 80%;
            margin:auto;
            text-align: center;
            margin-top: 30px;
        }
        .th_design{
            background-color: rebeccapurple;
            padding: 15px;
        }
        tr{
            border: 3px solid white;
        }
        td {
            padding: 20px;
        }
        </style>
  </head>
  <body>
   @include('admin.header')
   
   @include('admin.sidebar')

   <div class="page-content">
    <div class="page-header">
      <div class="container-fluid">
        <div class="container text-center mt-4">
            <h2 class="mb-4" style="font-weight:bold; font-size: larger ">Users</h2>
        </div>
   <table class="table_design">
    <tr>
        <th class="th_design">Name</th>
        <th class="th_design">Email</th>
        <th class="th_design">Phone</th>
        <th class="th_design">Delete User</th>
       
    </tr>
    
    @foreach($data as $item )
    <tr>
        <td>{{$item->name}}</td>
        <td>{{$item->email}}</td>
        <td>{{$item->phone}}</td>
        <td><a onclick="return confirm('Are you sure you want to delete this user?');" class="btn btn-danger" href="{{ url('delete_user', $item->id) }}">Delete</a>
        </td>
    </tr>
    @endforeach
</table>
      </div>
    </div>
   </div>

     @include('admin.footer')
  </body>
</html>