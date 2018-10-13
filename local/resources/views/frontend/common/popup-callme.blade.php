<style>
    #popup-callme {
        width: 100%;
        height: 100%;
        background-color: rgba(00, 00, 00, 0.8);
        position: fixed;
        top: 0;
        left: 0;
        overflow: auto;
        text-align: center;
        display: none;
        z-index: 1031;
        overflow-y: auto;

    }

    #popup-callme .popup-content {
        width: 100%;
        min-height: 100%;
        position: relative;
        overflow-y: auto;
    }

    #popup-callme .popup-content .pop-center {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 40%;
        height: auto;
        background-color: white;
        border-radius: 3px;
        padding: 22px 16px;
        /*overflow: scroll;*/

    }

    #popup-callme .popup-content .pop-center input {
        width: 100%;
        /*border: none;*/
        border: 1px solid #2a2a2a;
        text-align: left;
        border-radius: 2px;
        padding: 8px;
    }

    #popup-callme .popup-content .pop-center textarea{
        width: 100%;
        border: 1px solid #2a2a2a;
        border-radius: 2px;
        padding: 8px;
    }

    #popup-callme .popup-content .pop-center p {
        line-height: 22px;
    }

    .btn-close-callme {
        position: absolute;
        height: 28px;
        width: 28px;
        border-radius: 50%;
        border: none;
        top: 0px;
        right: 0px;
        cursor: pointer;
        font-weight: bold;
        font-size: 15px;
        transition: .3s;
        background-color: #fff;
        z-index: 1100;
    }

    .btn-close-callme i {
        transition: .3s;
    }

    .btn-close-callme:hover i {
        transform: rotate(360deg);
    }

    .btn-send {
        margin-top: 20px;
        padding: 10px 16px;
        border-radius: 20px;
        border: none;
        background-color: #007bff;
        color: white;
    }

    @media only screen and (max-width: 800px){
        #popup-callme .popup-content .pop-center {
            width: auto;
            max-height:80% ;
            overflow: scroll;
        }
    }
    @media only screen and (max-width: 500px) {
        #popup-callme .popup-content .pop-center {
            width: 90%;
        }
    }


</style>

<div class="animated fadeIn" id="popup-callme">

    <div class="popup-content animated bounceIn delay-1s">
        <div class="pop-center">
            {{--<img src="{{URL::asset('http://heracenter.com/wp-content/uploads/2018/09/Popup-Mua-Dong-Yeu-Thuong.png')}}" alt="">--}}
            <p class="mb-2">GỚI EMAIL CHO CHÚNG TÔI</p>
            <p class="mb-3">Email cho chúng tôi vấn đề mà bạn quan tâm.</p>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <input name="name" type="text" placeholder="Tên của bạn">
                </div>
                <div class="col-md-6 mb-3">
                    <input name="phone" type="text" placeholder="Số ĐT: 099-999-9999">
                </div>
                <div class="col-md-12 mb-3">
                    <input name="email" type="text" placeholder="email">
                </div>
                <div class="col-md-12">
                <textarea name="" id="" cols="30" rows="10"></textarea>
                </div>
            </div>
            <br>
            <button id="btnSendPhone" class="btn-send mb-2">Gửi đi</button>
            <br>
            HOTLINE : 036-399-7777
            <button class="btn-close-callme animated fadeInDown delay-1s"><i class="fas fa-times"></i></button>
        </div>
    </div>

</div>

