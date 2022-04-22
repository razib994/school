@extends('layout.master')
@section('content')
    <div class="app-main__outer">
        <div class="app-main__inner p-0">
            <div class="app-inner-layout chat-layout">
                <div class="app-inner-layout__wrapper">
                    <div class="app-inner-layout__content card">
                        <div class="app-inner-layout__top-pane">
                            <div class="pane-left" id="name_show">
                            </div>
                            <div class="pane-right">
                                <div class="btn-group dropdown" id="btn_load">
                                </div>
                            </div>
                        </div>
                        <div class="FixedHeightContainer" id="sc">
                            <div class="table-responsive">
                                {{-- <div class="app-inner-layout__top-pane">
                                    <div class="pane-left" id="name_show">
                                    </div>
                                    <div class="pane-right">
                                        <div class="btn-group dropdown" id="btn_load">
                                        </div>
                                    </div>
                                </div> --}}
                                <div class="chat-wrapper " id="message_view">
                                </div>
                                <div class="chat-box-wrapper chat-box-wrapper-right"></div>
                            </div>
                        </div>
                        <div class="app-inner-layout__bottom-pane d-block text-center">
                            <div class="mb-0 position-relative row form-group">
                                <div class="col-sm-12">
                                    <div class="message-input">
                                        <div class="wrap">
                                            <form id="sent_message_to_user" name="sent_message_to_user" enctype="multipart/form-data" class="form form-horizontal form-label-left">
                                                @csrf
                                                <p id="reply_msg" class="replied_message_p"></p>
                                                <input type="hidden" id="edit_msg_id" name="edit_msg_id">
                                                <div class="input-group">

                                                    <input type="hidden" name="app_user_id" id="app_user_id">
                                                    <input placeholder="Write here and hit enter to send..." name="admin_message" id="admin_message" type="text" class="form-control-lg form-control">

                                                    <button type="button" id="custom-button"> <i class="fa fa-paperclip " aria-hidden="true"></i></button>

                                                    <input type="file" id="attachment" name="attachment" hidden="hidden" />


                                                    <input type="hidden" id="reply_msg_id" name="reply_msg_id">
                                                    <button class="btn btn-success border-radious-0" type="submit" class="submit" id="message_sent_to_user"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="app-inner-layout__sidebar card">
                        <div class="app-inner-layout__sidebar-header">
                            <ul class="nav flex-column">
                                <li class="pt-4 pl-3 pr-3 pb-3 nav-item">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fa fa-search"></i>
                                            </div>
                                        </div>
                                        <input placeholder="Search..." name="search_user" id="search_user" type="text" class="form-control">
                                    </div>
                                </li>
                                {{-- ***************************************** --}}
                                @if(\Auth::user()->type !="School" && \Auth::user()->type !="Admin")
                                    <div id="admin_show"></div>
                                @endif
                                {{-- ************************************ --}}
{{--                                @if(\Auth::user()->type =="Student")--}}
{{--                                    <li class="nav-item-header nav-item">Teacher List:</li>--}}
{{--                                @elseif(\Auth::user()->type =="Teacher")--}}
{{--                                    <li class="nav-item-header nav-item">Student List:</li>--}}
{{--                                @else--}}
{{--                                 <li class="nav-item-header nav-item"></li>--}}
{{--                                @endif--}}
                            </ul>
                        </div>
                        <div class="FixedHeightContainer-ul">
                            <ul class="nav flex-column">
                                @if(\Auth::user()->type =="Student")
{{--                                <h6 class="p-3"><b> School Admin </b></h6>--}}
{{--                                <div id="app_user_show"></div>--}}
                                 <h6 class="p-3"><b> Teacher List </b></h6>
                                    <div id="school_teacher" style="border-bottom: 1px solid #ddd;"> </div>
                                  @elseif (\Auth::user()->type =="Teacher")
{{--                                  <h6 class="p-3"><b> School Admin </b></h6>--}}
                                  <h6 class="p-3"><b> Student List </b></h6>
                                  <div id="school_admin"> </div>
{{--                                  <div id="student_show"></div>--}}
                                @elseif (\Auth::user()->type =="School")
                                <h6 class="p-3"><b> Teacher List </b></h6>
                                <div id="school_teacher" style="border-bottom: 1px solid #ddd;"> </div>
                                <h6 class="p-3"><b> Student List </b></h6>
                                <div id="school_admin"> </div>
                               @endif
                            </ul>
                            <div class="FixedHeightContainer"></div>
                        </div>
                    </div>
                </div>
            </div>
            @endsection
            @section('JScript')
                <script src="{{ asset('assets/js/page-js/moment.js')}}"></script>
                <script src="{{ asset('assets/js/page-js/moment-with-locales.js')}}"></script>
                <script src="{{ asset('assets/js/page-js/notification&notice/message.js')}}"></script>
            @endsection

