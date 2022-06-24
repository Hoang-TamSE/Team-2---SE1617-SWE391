<%-- 
    Document   : HomePage_IT
    Created on : Jun 23, 2022, 1:41:13 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Software Engineering</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="css/homepagecss.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>
    <body>
        <%@include file="Header_HomePage.jsp" %>
        <div id="myCarousel" class="carousel item" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active">
                    <img src="https://hcmuni.fpt.edu.vn/Data/Sites/1/Banner/ky-thuat-phan-mem.jpg" alt="Chania">
                    <div class="carousel-caption">
                        <h3 class="hcaption-carousel">KỸ THUẬT PHẦN MỀM</h3>
                        <div class="caption-carousel">
                            <p>Với sự hỗ trợ của phần mềm, các quy trình hoạt động tối ưu hóa,</p>
                            <p>con người được giải phóng khỏi những công việc thủ công nhàm</p>
                            <p>chán, giảm thiểu sai sót, nâng cao năng suất và hiệu quả công</p>
                            <p>việc. Khi phần mềm được ứng dụng rộng và trở thành “hạt nhân”</p>
                            <p>cho sự phát triển của đời sống, sinh viên ngành Kỹ thuật Phần</p>
                            <p>mềm trở thành nhân tố được săn đón hàng đầu trên thị trường</p>
                            <p>lao động.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="height: 15px; background-color: whitesmoke"></div>
        <div id="job" class="row d-flex justify-content-center">
            <div id="job-1" class="col-md-6">
                <h3>TRIỄN VỌNG NGHỀ NGHIỆP</h3>
                <div>
                    <p>
                        Hiện tại, sinh viên Đại học FPT đã và đang làm việc tại Mỹ, Đức, Nhật Bản, Singapore –
                        những thị trường Công nghệ Thông tin hàng đầu của thế giới.
                        Tốt nghiệp ngành Kỹ thuật Phần mềm, sinh viên trở thành Chuyên viên giải pháp phần mềm;
                        Chuyên viên phân tích dữ liệu; Chuyên viên kiểm thử phần mềm; Chuyên viên đảm bảo chất 
                        lượng phần mềm; Chuyên viên phân tích nghiệp vụ sản phẩm phần mềm; Chuyên viên phát triển 
                        ứng dụng di động. Sinh viên là những Kỹ sư lập trình, Kỹ sư phát triển hệ thống nhúng tương 
                        lai tại các doanh nghiệp phần mềm, doanh nghiệp ứng dụng Công nghệ Thông tin vào vận hành.
                    </p>
                </div>
            </div>
            <div id="job-2" class="col-md-3">
                <h3>HỌC NGÀNH NÀY LÀM NGHỀ GÌ?</h3>
                <div>
                    <ul>
                        <li>Giám đốc kỹ thuật</li>
                        <li>Quản lý dự án (PM)</li>
                        <li>Lập trình viên (Coder)</li>
                        <li>Kỹ sư cầu nối (BrSE)</li>
                        <li>Kiểm thử phần mềm (Tester)</li>
                        <li>Kỹ sư đảm bảo chất lượng phần mềm</li>
                        <li>Quản lý dự án Công nghệ Thông tin</li>
                        <li>Quản lý kỹ thuật</li>
                        <li>Quản trị viên dự án phần mềm và CNTT</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="why">
            <h3>VÌ SAO HƠN 50.000 SINH VIÊN LỰA CHỌN ĐH FPT?</h3>
            <div class="row d-flex justify-content-center">
                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-4" style="color: #f86c24">
                            <img style="width: 70%" src="images/gif1.gif">
                        </div>
                        <div class="col-md-8">
                            <span id="percent" class="count">100%</span>
                            <p>Sinh viên được nhà tuyển dụng chào đón</p>
                        </div>
                    </div>  
                </div>

                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-4">
                            <img style="width: 70%" src="images/gif2.gif">
                        </div>
                        <div class="col-md-8">
                            <p id="percent">100%</p>
                            <p>Sinh viên được học tập bằng tiếng Anh</p>
                        </div>
                    </div>  
                </div>

                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-4">
                            <img style="width: 70%" src="images/gif3.gif">
                        </div>
                        <div class="col-md-8">
                            <p id="percent">100%</p>
                            <p>Sinh viên có học kỳ nước ngoài và trải nghiệm quốc tế</p>
                        </div>
                    </div>  
                </div>
            </div>

            <div class="row d-flex justify-content-center">
                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-4">
                            <img style="width: 70%" src="images/gif4.gif">
                        </div>
                        <div class="col-md-8">
                            <p id="percent">10%</p>
                            <p>Cựu sinh viên làm việc tại nước ngoài</p>
                        </div>
                    </div>  
                </div>

                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-4">
                            <img style="width: 70%" src="images/gif5.gif">
                        </div>
                        <div class="col-md-8">
                            <p id="percent">9.8%</p>
                            <p>Cựu sinh viên trở thành lãnh đạo, quản lý</p>
                        </div>
                    </div>  
                </div>

                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-4">
                            <img style="width: 70%" src="images/gif6.gif">
                        </div>
                        <div class="col-md-8">
                            <p id="percent">5%</p>
                           
                            <p>Sinh viên khởi nghiệp</p>
                        </div>
                    </div>  
                </div>
            </div>
        </div>

        <div id="route" class="row d-flex justify-content-center">
            <div id="route-1" class="col-md-5">
                <h3>LỘ TRÌNH ĐÀO TẠO</h3>
                3 năm
                (3 học kỳ/ năm)
                <img src="images/route.jpg" class="img-fluid" alt="Responsive image">
            </div>
            <div id="route-2" class="col-md-4">
                <h3>ĐÀO TẠO KHÁC BIỆT</h3>
                <p>
                    Với lợi thế là thành viên của tập đoàn công nghệ FPT, sinh viên Đại 
                    học FPT được tiếp cận nhanh chóng với xu hướng phát triển thế giới. 
                    Chương trình đào tạo cử nhân ngành Kỹ thuật Phần mềm tại Đại học FPT 
                    được thiết kế căn cứ chuẩn ACM, ABET, VINASA (*), các chuẩn học thuật -
                    nghề nghiệp toàn cầu với sự tư vấn của các chuyên gia và doanh nghiệp 
                    danh tiếng như Tập đoàn FPT, Tập đoàn IBM… Chương trình đào tạo chuyên
                    ngành Kỹ thuật Phần mềm của Đại học FPT tích hợp kiến thức và kỹ năng, 
                    sinh viên nhanh chóng thích nghi nhanh chóng với môi trường doanh nghiệp.
                </p>
                <p>
                    Đội ngũ Giảng viên có kinh nghiệm và chuyên môn cao với trình độ Tiến sĩ, Thạc sĩ. 
                    Lãnh đạo ưu tú của các doanh nghiệp phần mềm danh tiếng là diễn giả trong các hội thảo,
                    cố vấn trong các cuộc thi tại Đại học FPT. 100% sinh viên tham gia Học kỳ Đào tạo trong 
                    doanh nghiệp và thực hiện Khoá luận tốt nghiệp. Sinh viên ngành Kỹ thuật Phần mềm tại Đại
                    học FPT thông thạo Tiếng Anh và Tiếng Nhật, sẵn sàng cho sự nghiệp toàn cầu. Sinh viên đạt
                    trình độ tiếng Anh tối thiểu tương đương IELTS 6.0 trước khi bước vào Học kỳ chuyên ngành,
                    Học kỳ đào tạo trong doanh nghiệp.
                </p>
                <p style="font-size: small;">(*) ACM: Association for Computing Machinery.</p>
                <p style="font-size: small;">ABET: Accreditation Board for Engineering and Technology.</p>
                <p style="font-size: small;">VINASA: Hiệp hội Phần mềm Việt Nam.</p>
            </div>  
        </div>

        <div style="height: 15px; background-color: whitesmoke"></div>

        <div id="narrow" class="row d-flex justify-content-center">
            
                <h3>Narrow of Software Engineering</h3>
                
                    <div class="col-md-2 list-major">
                      
                            <h4>NARROW LIST</h4>
                            <ul class="nav nav-tabs p-3 ">
                                <li class="nav-item">
                                    <a class="nav-link" href="#IT" role="tab" data-toggle="tab">PRN211(.NET)</a>
                                </li>                   
                                <li class="nav-item">
                                    <a class="nav-link" href="#BA" role="tab" data-toggle="tab">Bridge Software Engineer(JS)</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#EL"role="tab" data-toggle="tab">PRP201c(Autonomous Car)</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#JL" role="tab" data-toggle="tab">PRP201c(AI With Tensor Flow)</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#KL" role="tab" data-toggle="tab">FER201m(React/NodeJS)</a>
                                </li>
                            </ul>
                        
                    </div> <!-- col-left -->

                    <div id="narrowinfo" class="col-md-7">
                        <h4>NARROW INFORMATION</h4>
                        <div>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show" id="IT">
                                    <p class=" d-none d-sm-block">
                                        sadsadsad
                                    </p>
                                </div> <!-- IT -->

                                <div role="tabpanel" class="tab-pane fade show" id="BA">
                                    <p class=" d-none d-sm-block">
                                        asassasa
                                    </p>
                                </div> <!-- BA -->

                                <div role="tabpanel" class="tab-pane fade show" id="EL">
                                    <p class=" d-none d-sm-block">
                                        saasasas
                                    </p>
                                </div> <!-- EL -->

                                <div role="tabpanel" class="tab-pane fade show" id="JL">
                                    <p class=" d-none d-sm-block">
                                        sasaas
                                    </p>
                                </div> <!-- JL -->

                                <div role="tabpanel" class="tab-pane fade show" id="KL">
                                    <p class=" d-none d-sm-block">
                                        asassa
                                    </p>
                                </div> <!-- KL -->

                            </div> <!-- Tab Content -->

                        </div>
                    </div><!-- col-right -->
                
            
        </div>

        <div id="program" class="row d-flex justify-content-center">
            <div class="col-md-9">
                <h3>CHƯƠNG TRÌNH ĐÀO TẠO</h3>
                <div class="table-wrapper-scroll-y my-custom-scrollbar">

                    <table class="table table-bordered ">
                        <thead>
                            <tr>
                                <th scope="col">HỌC KỲ</th>
                                <th scope="col">HỌC PHẦN</th>
                                <th scope="col">KỸ NĂNG ĐẠT ĐƯỢC</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">NỀN TẢNG</th>
                                <td>
                                    <ul>
                                        <li>Định hướng + Rèn luyện tập trung</li>
                                        <li>Phương pháp học Đại học hiệu quả</li>
                                        <li>Vovinam</li>
                                        <li>01-05 Level tiếng Anh</li>
                                        <li>Học kỳ tiếng Anh tại nước ngoài</li>
                                        <li>Nhạc cụ truyền thống</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên có phương pháp học Đại học hiệu quả như: tự học, làm việc nhóm, 
                                            quản lý thời gian, tối ưu hoá năng lực não bộ cải thiện kết quả học tập.
                                        </li>
                                        <li>
                                            Sinh viên đạt trình độ tiếng Anh tương đương IELTS 6.0 hoặc TOEFL iBT 80.
                                        </li>
                                        <li>
                                            Sinh viên tự tin đọc hiểu giáo trình, học tập hoàn toàn bằng tiếng Anh,
                                            giao tiếp thông thạo với giảng viên và sinh viên quốc tế.
                                        </li>
                                        <li>
                                            Sinh viên có tinh thần rèn luyện thể chất, phát triển cá nhân toàn diện.
                                        </li>
                                        <li>
                                            Sinh viên tìm hiểu về giá trị của âm nhạc truyền thống, sinh viên có
                                            thể chơi một số nhạc cụ truyền thống như sáo, nhị, tỳ bà... Sinh viên tự tin
                                            hơn trước đám đông, rèn luyện những thói quen tốt: kiên trì và tỉ mỉ
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">1</th>
                                <td>
                                    <ul>
                                        <li>Nhập môn khoa học máy tính</li>
                                        <li>Tổ chức và Kiến trúc máy tính</li>
                                        <li>Cơ sở lập trình Toán cho ngành kỹ thuật</li>
                                        <li>Kỹ năng học tập đại học</li>
                                        <li>Vovinam 2</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên có bức tranh tổng thể về CNTT thông qua các khái niệm cơ bản: 
                                            lịch sử phát triển, công cụ, kiến trúc phần cứng, phần mềm, hệ điều hành,
                                            mạng và Internet, cấu trúc dữ liệu...
                                        </li>
                                        <li>
                                            Sinh viên tìm hiểu về kiến trúc và tổ chức máy tính: bao gồm các chủ đề 
                                            về thiết kế vật lý của máy tính (tổ chức) và thiết kế lôgic của máy tính
                                            (kiến trúc).
                                        </li>

                                        <li>
                                            Sinh viên được học về các ngôn ngữ lập trình, ngôn ngữ C; quá trình phát
                                            triển phần mềm; lập trình căn bản dùng C.
                                        </li>
                                        <li>
                                            Sinh viên được tăng cường các kiến thức cơ bản của giải tích và đại số 
                                            tuyến tính và các ứng dụng của chúng trong khoa học, kỹ thuật. Sinh viên
                                            được trang bị phương pháp học đại học hiệu quả.
                                        </li>

                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>
                                    <ul>
                                        <li>Hệ điều hành</li>
                                        <li>Mạng máy tính</li>
                                        <li>Lập trình hướng đối tượng</li>
                                        <li>Toán rời rạc</li>
                                        <li>Kỹ năng giao tiếp và cộng tác</li>
                                        <li>Vovinam 3</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên được giới thiệu về hệ điều hành, nắm được các kiến thức về hệ
                                            thống mạng máy tính, kiến trúc mạng, các mô hình tham chiếu, các giao thức
                                            , họ giao thức TCP/IP, một số kiến thức cơ bản về an ninh mạng.
                                        </li>
                                        <li>Sinh viên có kiến thức nền tảng toán học cho khoa học máy tính.</li>
                                        <li>
                                            Sinh viên được trang bị kỹ năng làm việc nhóm, bao gồm cả cách làm việc, 
                                            triển khai, trao đổi các chiến lược và giao tiếp trong nhóm hiệu quả.
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>
                                    <ul>
                                        <li>Các hệ cơ sở dữ liệu</li>
                                        <li>Thiết kế Web</li>
                                        <li>Thực hành OOP với Java</li>
                                        <li>Cấu trúc dữ liệu và giải thuật</li>
                                        <li>Ngoại ngữ 2 : Tiếng Nhật 1</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên có kiến thức về các hệ cơ sở dữ liệu với các mô hình cơ sở 
                                            dữ liệu quan hệ.
                                        </li>
                                        <li>
                                            Sinh viên hiểu về Ngôn ngữ Đánh dấu Siêu văn bản để tạo các trang 
                                            web, Cascading Style Sheets, Javascript.
                                        </li>
                                        <li>
                                            Sinh viên được thực hành các bài lập trình hướng đối tượng với 
                                            ngôn ngữ Java.
                                        </li>
                                        <li>
                                            Sinh viên nắm vững các khái niệm cơ bản về cấu trúc dữ liệu và các 
                                            thuật toán được cài đặt cho các cấu trúc dữ liệu, sử dụng ngôn ngữ 
                                            Java để minh họa.
                                        </li>
                                        <li>
                                            Sinh viên sử dụng Tiếng Nhật ở mức độ căn bản: đọc, viết, giao 
                                            tiếp ở môi trường làm việc.
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>
                                    <ul>
                                        <li>Phát triển ứng dụng Java web</li>
                                        <li>Nhập môn kỹ thuật phần mềm</li>
                                        <li>Internet vạn vật</li>
                                        <li>Xác suất thống kê</li>
                                        <li>Ngoại ngữ 2 : Tiếng Nhật 2</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên biết cách xây dựng các ứng dụng web phức tạp trong môi 
                                            trường doanh nghiệp, được giới thiệu về Java Enterprise Edition.
                                        </li>
                                        <li>
                                            Sinh viên có kiến thức chung về các tiến trình và vòng đời trong 
                                            Kỹ thuật phần mềm và quản lý các dự án.
                                        </li>
                                        <li>
                                            Sinh viên được tiếp cận với các kiến thức cơ bản của Internet vạn vật.
                                        </li>
                                        <li>
                                            Sinh viên sử dụng Tiếng Nhật ở mức độ nâng cao: đọc, viết, giao tiếp
                                            ở môi trường làm việc.
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>
                                    <ul>
                                        <li>Lập trình di động</li>
                                        <li>Yêu cầu phần mềm</li>
                                        <li>Kiểm thử phần mềm</li>
                                        <li>Quản trị dự án</li>
                                        <li>Đạo đức trong CNTT</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên có đủ kiến thức cơ bản về lập trình Android để sinh
                                            viên có thể phát triển các ứng dụng hữu ích cũng như tự học thêm
                                            dễ dàng hơn.
                                        </li>
                                        <li>
                                            Sinh viên biết cách Quản trị dự án nói chung và dự án CNTT nói
                                            riêng một cách hiệu quả.</li>
                                        <li>
                                            Sinh viên nắm vững các vấn đề liên quan đến đạo đức của người 
                                            làm CNTT và người dùng CNTT, sở hữu trí tuệ, an toàn và bảo mật,
                                            tội phạm máy tính và Internet…
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">6</th>
                                <td>
                                    <ul>
                                        <li>Thực tập làm việc thực tế tại doanh nghiệp</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên làm việc thực tế từ 4 – 8 tháng tại các công ty thành 
                                            viên thuộc tập đoàn FPT hoặc hơn 300 doanh nghiệp là đối tác của 
                                            tập đoàn FPT trên toàn thế giới.
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">7</th>
                                <td>
                                    <ul>
                                        <li>UI/IX</li>
                                        <li>Kiến trúc và Thiết kế phần mềm</li>
                                        <li>Phương pháp nghiên cứu</li>
                                        <li>Môn chuyên ngành tự chọn 1</li>
                                        <li>Môn chuyên ngành tự chọn 2</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên hiểu rõ nguyên tắc tâm lý của giao tiếp người máy, Đánh giá 
                                            giao diện người sử dụng. Phân tích nhiệm vụ, thiết kế hướng người sử 
                                            dụng, mô hình hóa và các công nghệ liên quan.
                                        </li>
                                        <li>
                                            Sinh viên nắm vững các phương pháp luận quan trọng về thiết kế phần 
                                            mềm, các kiểu kiến trúc phần mềm, hướng dẫn thiết kế và công cụ thiết
                                            kế.
                                        </li>
                                        <li>
                                            Sinh viên được trang bị một số phương pháp nghiên cứu hữu ích, 
                                            điểm mạnh và điểm yếu của các phương pháp luận, các thức thiết kế 
                                            và thực hiện dự án nghiên cứu để sinh viên có thể tự thực hiện các 
                                            dự án nghiên cứu sau này.
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">8</th>
                                <td>
                                    <ul>
                                        <li>Dự án phát triển ứng dụng</li>
                                        <li>Môn chuyên ngành tự chọn 3</li>
                                        <li>Môn chuyên ngành tự chọn 4</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên có kiến thức của vai trò Quản lý dự án như: Lập kế hoạch, 
                                            dự đoán các rủi ro, điều phối nhân lực và chia công việc. Ngoài ra, 
                                            các kiến thức về quản lý nhân sự, phối hợp nhân viên, xử lý xung đột 
                                            sẽ được cung cấp để nâng cao kinh nghiệm cho việc quản lý. 
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">9</th>
                                <td>
                                    <ul>
                                        <li>Khóa luận tốt nghiệp</li>
                                        <li>Khởi sự doanh nghiệp</li>
                                    </ul>
                                </td>
                                <td>
                                    <ul>
                                        <li>
                                            Sinh viên thực hiện và sở hữu đồ án/ứng dụng/mô hình kinh doanh 
                                            dịch vụ của riêng mình.
                                        </li>
                                        <li>Sinh viên tự tin làm việc tại hầu hết các quốc gia trên thế giới.</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div style="height: 20px; background-color: whitesmoke"></div>



        <%@include file="Footer_HomePage.jsp" %>
        <script src="https://use.fontawesome.com/releases/v6.1.1/js/all.js" crossorigin="anonymous"></script>
    </body>
</html>
