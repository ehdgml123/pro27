<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/index.css" rel="stylesheet"/> 
<link href="${path}/resources/csss/comparison.css" rel="stylesheet"/> 
</head>
<body>
<%@ include file="../includes/header.jsp"%>

<div class="pt_cart">
   <div class="contents">
      <div class="cart-wrap">
        <div class="cart-top">
             <div class="row flex-no-gutters">
                 <div class="cart-group-list col-12">
                    <div class="cart-top-title">
                       <div class="flex flex-align-center display-show-pc">
                         <p class="title display-small-none">핸드폰 견적비교</p>
                       </div>
                        <div class="cart-list checkout-list">
                            <div class="list-sort-name flex flex-justify-center flex-align-center flex-no-gutters">
                                <div class="col-md-7">
                                   <div class="flex flex-no-gutters checked-all-wrap">
                                        <span class="col">핸드폰 이름</span>
								 </div>
                                </div>
                                <div class="col-md-3" style="font-size: 20px">시리얼 넘버</div>                             
                            </div>
                            <div class="cart-list-item cart-item product-opt_cart">
                               <div class="flex flex-no-gutters flex-justify-start">
                               <!--  forEach  -->
                                  <div class="item-dec col-md-7 col-12">
                                     <div class="flex flex-align-start">
                                     <div class="check_wrap">
                                               <input type="checkbox" id="check_btn" onclick="updateSelection(this, 'ASPEN TECH HEAT JACKET')"/>
                                               <label for="check_btn"></label>
                                        </div>
                                        <div class="item-detail">
                                          <a class="link-underline name">ASPEN TECH HEAT JACKET</a>
                                        </div>
                                     </div>
                                  </div>
                                  <div class="item-price col-md-3 col-6 flex-align-center flex-justify-center display-small-none">
                                  <span class="serialnumber">4534534534</span>
                                  </div>
                                   <!--  forEach  끝 -->
                               </div>
                            </div>
                        </div>
                    </div>
                 </div>                  
             </div>
        </div>
      </div> 
   </div>
</div>
<div class="bottom-layer-pop">
   <div class="bottom-container" id="paymentdetail">
      <div class="bottom-container" id="paymentdetail">
          <div class="show-conts">
           <div class="selectbox" id="selected-items">
 
             </div>
             <button class="btns md-ripples ripples-light" type="button" id="comparison" onclick="showComparisonModal()">
             휴대폰 비교하기
           </button>
          </div>
      </div>
   </div> 
</div>

<!--  모달 창 -->
<div id="comparison-modal" class="modal" style="display: none;">
    <div class="modal-content">
        <span class="close-btn" onclick="closeModal()">&times;</span>
        <h2>휴대폰 견적 비교</h2>
        <table class="comparison-table">
            <thead>
                <tr>
                    <th>항목</th>
                    <th id="phone1-name">휴대폰 1</th>
                    <th id="phone2-name">휴대폰 2</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>GIGA</td>
                    <td id="phone1-screen">-</td>
                    <td id="phone2-screen">-</td>
                </tr>
                <tr>
                    <td>PHONE_SIZE</td>
                    <td id="phone1-cpu">-</td>
                    <td id="phone2-cpu">-</td>
                </tr>
                <tr>
                    <td>PHONE_WEIGHT</td>
                    <td id="phone1-memory">-</td>
                    <td id="phone2-memory">-</td>
                </tr>
                <tr>
                    <td>CAMERA</td>
                    <td id="phone1-camera">-</td>
                    <td id="phone2-camera">-</td>
                </tr>
                <tr>
                    <td>BATTERY</td>
                    <td id="phone1-security">-</td>
                    <td id="phone2-security">-</td>
                </tr>
                <tr>
                    <td>MEMORY</td>
                    <td id="phone1-battery">-</td>
                    <td id="phone2-battery">-</td>
                </tr>
                <tr>
                    <td>SECURITY</td>
                    <td id="phone1-weight">-</td>
                    <td id="phone2-weight">-</td>
                </tr>
                 <tr>
                    <td>WATERPROOF</td>
                    <td id="phone1-weight">-</td>
                    <td id="phone2-weight">-</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


<!--  모달 창 -->
</body>
</html>
<script>
function updateSelection(checkbox, itemName) {
    // 선택된 항목이 표시될 컨테이너 가져오기
    const selectedItemsContainer = document.getElementById("selected-items");

    if (checkbox.checked) {
        // 체크박스가 체크되면 항목 추가
        const newItem = document.createElement("div");
        newItem.classList.add("selected-item");
        newItem.textContent = itemName; // 전달된 이름을 항목 텍스트로 설정
        newItem.setAttribute("data-name", itemName); // 고유 식별 속성 추가
        selectedItemsContainer.appendChild(newItem);
    } else {
        // 체크박스 체크 해제 시 해당 항목 제거
        const items = selectedItemsContainer.querySelectorAll(".selected-item");
        items.forEach((item) => {
            if (item.getAttribute("data-name") === itemName) {
                selectedItemsContainer.removeChild(item);
            }
        });
    }
}

function showComparisonModal() {
    // 선택된 항목 컨테이너 가져오기
    const selectedItems = document.querySelectorAll("#selected-items .selected-item");

    // 선택된 항목 두 개만 비교한다고 가정
    const phone1Name = selectedItems.length > 0 ? selectedItems[0].textContent : "-";
    const phone2Name = selectedItems.length > 1 ? selectedItems[1].textContent : "-";

    // 모달에 정보 업데이트
    document.getElementById("phone1-name").textContent = phone1Name;
    document.getElementById("phone2-name").textContent = phone2Name;

    // 모달 창 표시
    const modal = document.getElementById("comparison-modal");
    modal.style.display = "block";
}

function closeModal() {
    // 모달 창 숨기기
    const modal = document.getElementById("comparison-modal");
    modal.style.display = "none";
}
</script>