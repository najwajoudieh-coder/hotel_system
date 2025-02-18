<footer>
    <div class="footer">
       <div class="container">
          <div class="row">
             <div class=" col-md-4">
                <h3>Contact US</h3>
                <ul class="conta">
                   <li><i class="fa fa-map-marker" aria-hidden="true"></i> Address</li>
                   <li><i class="fa fa-mobile" aria-hidden="true"></i> +01 1234569540</li>
                   <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> Royal_Hotel@gmail.com</a></li>
                </ul>
             </div>
             <div class="col-md-4">
                <h3>Menu Link</h3>
                <ul class="link_menu">
                   <li><a href="{{url('/')}}">Home</a></li>
                   <li><a href="{{url('our_rooms')}}">Our Rooms</a></li>
                   <li><a href="{{url('hotel_gallery')}}">Gallery</a></li>
                   <li><a href="{{url('contact_us')}}">Contact Us</a></li>
                </ul>
             </div>
             <div class="col-md-4">
                <h3>News letter</h3>
                <form class="bottom_form" onsubmit="subscribe(event)" autocomplete="off">
                  <input class="enter" placeholder="Enter your email" type="text" name="email" required>
                  <button class="sub_btn" id="subscribeBtn">Subscribe</button>
              </form>
              
              <script>
                  function subscribe(event) {
                      event.preventDefault();
                      let button = document.getElementById("subscribeBtn");
                      if (button.innerHTML === "Subscribe" )
                      {
                           button.innerHTML = "Unsubscribe";
                      }
                      else
                      {
                        if (button.innerHTML === "Unsubscribe" )
                           button.innerHTML = "Subscribe";
                      }
                   
                  }
              </script>
              
                <ul class="social_icon">
                   <li><a href="https://www.facebook.com/LeRoyalBeirut/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                   <li><a href="https://www.instagram.com/leroyalbeirut/?hl=en"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                   <li><a href="https://www.youtube.com/channel/UClSzAevjSoUZAzjcDjyInnQ"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                </ul>
             </div>
          </div>
       </div>
       <div class="copyright">
          <div class="container">
             <div class="row">
                <div class="col-md-10 offset-md-1">
                   <p>©2025 All Rights Are Preseved</p>
                </div>
             </div>
          </div>
       </div>
    </div>
 </footer>