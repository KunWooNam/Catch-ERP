/**
 * 
 */

grid.on('click',function (ev) {
	if (ev.targetType == 'cell') {
		let salaryNumber = grid.getFormattedValue(ev.rowKey,'salaryNumber')
		dataToSalModifyGrid(salaryNumber)
	    window.setTimeout(function(){
	    salModifyGrid.refreshLayout();
	    }, 200) 		
		
		salModifyModal.show()
		
	}
})

//급여수정내역 저장버튼 클릭시
//#region
document.querySelector('.update-Btn').addEventListener('click',function () {
	let datas = extractSalModifyGrid()
	fetch("/employees/payroll", {
		method:'put',
		headers:{"Content-Type": "application/json"},
		body:JSON.stringify(datas[0])
	})
	.then(data => data.json())
	.then(data => {
		salModifyModal.hide()
		datoToGrid()
	})
})
//#endregion
//삭제버튼클릭시
document.querySelector('.delete-Btn').addEventListener('click',function () {
	let checkRow = grid.getCheckedRows()
	if  (checkRow.length == 0 ) {
		return;
	}
	let str = ''
	checkRow.forEach(ele => {
		str += ','
		str += ele.salaryNumber
	})
	fetch('/employees/payroll?salaryNumber='+str.substring(1),
	      {method:'delete'})
	.then(data => data.json())
	.then(data => {
		datoToGrid()
		
	})
})
/**
 *
 *  @argument ddd
 * 
 * 인쇄버튼클릭시 모달띄우기
 */
let  ary;
let eles;
//#region
document.querySelector('.printModal-Btn').addEventListener('click',function () {
	let checkRow = grid.getCheckedRows()
	if  (checkRow.length == 0 ) {
		return;
	}
	let str = ''
	checkRow.forEach(ele => {
		str += ','
		str += ele.salaryNumber
	})
	fetch('/employees/payroll/sel?salaryNumber='+str.substring(1))
	.then(data => data.json())
	.then(data => {
		document.querySelector('#print-content').innerHTML = ""
		for (let ele of data) {		
			let index = ele.allowanceHistoryVO.length > 3 ? ele.allowanceHistoryVO.length : 3 
			let tr = "";
			let html ="";
			tr += `<tr><td>연장근무</td><td>${ele.overtimeAllowance}</td><td>소득세</td><td>${ele.incomeTax}</td></tr>`
			tr += `<tr><td>야간근무</td><td>${ele.nightAllowance}</td><td>지방세</td><td>${ele.localTax}</td></tr>`
			tr += `<tr><td>주말근무</td><td>${ele.weekendAllowance}</td><td>건강보험료</td><td>${ele.healthInsurance}</td></tr>`
			for (let i=0; i<index; i++) {
				
				let td ="<tr>";
				if (ele.allowanceHistoryVO[i] == undefined) {
				td += `<td></td><td></td>`					
				}else {
				td += `<td>${ele.allowanceHistoryVO[i].allowanceName}</td><td>${ele.allowanceHistoryVO[i].allowancePrice}</td>`
				}
				if (i == 0) {
					td += `<td>국민연금료</td><td>${ele.nationalInsurance}</td>`
				} else if (i == 1) {
					td += `<td>고용보험료</td><td>${ele.employmentInsurance}</td>`
				} else if (i == 2) {
					td += `<td>유급휴가비</td><td>${ele.leaveRate}</td>`				
				} else {
					td += `<td></td><td></td>`
				}
				td += `</tr>`
				tr += td
			}
			eles = tr;
			

			
			printBody = ``
			html = 
					`
					<style>
							#payrollPrintModal table {
		  width:800px;
		  
		
		}
		#payrollPrintModal table, td, th {
		border : 2px solid black;
		border-collapse : collapse;
		text-align: center;
		padding:8px;
		}
		#payrollPrintModal table {
		border: 3px solid black;
		}
		#payrollPrintModal .background-payment{
		background-color: rgb(216, 216, 216);
		font-weight: 500;
		}
		#payrollPrintModal .bold-color {
		background-color:rgb(20, 78, 38);
		font-size: large;
		color:white;
		}
		#payrollPrintModal tfoot {
		border-top: 3px solid black;
		
		}
		#payrollPrintModal .modal-body  {
		margin:0 auto;}
		#print-content{ 
			overflow:auto;
			max-height:700px;
		}
		</style>			
					
					<div id="a">
					  <h1>급여명세서</h1>
					  <div>
					  <span>${ele.payrollYdate}</span>
					  <span></span>
					  </div>
					  <br>
					  <table>
					      <tr>
					        <td class="background-payment">성명</td>
					        <td colspan="3">${ele.name}</td>
					        <td class="background-payment">사번</td>
					        <td>${ele.employeeId}</td>
					      </tr>
					      <tr>
					        <td class="background-payment">직급/직급</td>
					        <td colspan="3"></td>
					        <td class="background-payment">부서</td>
					        <td></td>
					      </tr>
					      <tr>
					        <td class="background-payment">생년월일</td>
					        <td colspan="3"></td>
					        <td class="background-payment">지급일</td>
					        <td>${ele.payrollYdate}</td>
					      </tr>
					  </table>
					<br>
					<br>
					<table>
					  <thead>
					    <tr>
					      <td colspan="2" class="bold-color">임금지급내역</td>
					      <td colspan="2" class="bold-color">공제내역</td>
					    </tr>
					    <tr>
					      <td class="background-payment">임금항목</td>
					      <td class="background-payment">지급액원(원)</td>
					      <td class="background-payment">공제항목</td>
					      <td class="background-payment">지급액원(원)</td>
					    </tr>
					  </thead>
					  <tbody>
					  ${tr}
					  </tbody>
					  <tfoot>
					    <tr>
					      <td class="background-payment">총지급액</td>
					      <td></td>
					      <td class="background-payment">총공제액</td>
					      <td></td>
					    </tr>
					    <tr>
					      <td class="background-payment">실지급액</td>
					      <td colspan="3"></td>
					    </tr>
					  </tfoot>
					</table> 
					  <br>
					  <table>
					    <tr>
					      <td colspan="3" class="bold-color">계산방법</td>
					    </tr>
					    <tr>
					      <td class="background-payment">구분</td>
					      <td class="background-payment">산출식 또는 산출방법</td>
					      <td class="background-payment">지급액(원)</td>
					    </tr>
					    <tr>
					      <td class="background-payment" style="background-color:black">연장근로수당</td>
					      <td></td>
					      <td></td>
					    </tr>
					    <tr>
					      <td class="background-payment">야간근로수당</td>
					      <td></td>
					      <td></td>
					    </tr>
					    <tr>
					      <td class="background-payment">주말근로수당</td>
					      <td></td>
					      <td></td>
					    </tr>
					  </table>
					</div>`
			document.querySelector('#print-content').insertAdjacentHTML('beforeend',html);	
			payrollPrintModal.show();	
				
		}
		
	})
})
//#endregion

//인쇄버튼클릭시
//#region
/*
document.querySelector('.print-Btn').addEventListener('click',function () {
    const element = document.getElementById('print-content');
	   html2canvas(element,{width:1500,height:1500}).then(function(canvas) { //저장 영역 div id
		
	    // 캔버스를 이미지로 변환
	    var imgData = canvas.toDataURL('image/png');
		window.open(imgData);
	    var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
	    var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
	    var imgHeight = canvas.height * imgWidth/ canvas.width;
	    var heightLeft = imgHeight;
	    var margin = 10; // 출력 페이지 여백설정
	    var doc = new jspdf.jsPDF('p', 'mm');
	    var position = 0;
	       
	    // 첫 페이지 출력
	    doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
	    heightLeft -= pageHeight;
	         
	    // 한 페이지 이상일 경우 루프 돌면서 출력
	    while (heightLeft >= 20) {
	        position = heightLeft - imgHeight;
	        doc.addPage();
	        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
	        heightLeft -= pageHeight;
	    }
	 
	    // 파일 저장
	    doc.save('file-name.pdf');

		  
	});
})
*/
/*
  document.querySelector(".print-Btn").addEventListener("click", () => {
    const element = document.getElementById("print-content");
    html2pdf()
      .from(element)
      .set({
        margin: 1,
        filename: "example.pdf",
        html2canvas: { scale: 1 },
        jsPDF: { orientation: "portrait" },
      })
      .save();
  });
  */
 
       document.querySelector('.print-Btn').onclick = function(){
        var element = document.querySelector('#print-content');
				html2pdf().from(element).toPdf().get('pdf').set({
  scale: 0.8  // 출력 크기를 80%로 축소
}).save();
      }
      
 //#endregion


//메인그리드 데이터 불러오기
function datoToGrid() {
	fetch("/employees/payroll")
	      .then(data => data.json())
	      .then(data => {
			grid.resetData(data)
		  })
 }
 
 
//검색버튼 클릭 이벤트
document.querySelector('.search-btn').addEventListener('click',function (ev) {
	//검색옵션들 들고오기
	let str = "";
	let option = document.querySelectorAll('.search-option')
	option.forEach(ele =>{
		if (ele.value !== "" && ele.value != null ) {
			str += '&' 
			str += ele.name
			str += '='
			str += ele.value 
		}
	})
	parameter = '?'+str.substr(1)
	fetch("/employees/payroll"+parameter)
	.then(data => data.json())
	.then(data => {
		grid.resetData(data)
	})
	
	
}) 