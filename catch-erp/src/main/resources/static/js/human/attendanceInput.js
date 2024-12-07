/**
 * 
 *
/**
 * dataToAeSearch() = 모달 그리드 데이터불러어기

 */
//열을 추가하는 이벤트
document.querySelector(".addBtn").addEventListener('click',function() {
	let tbody = document.querySelector('tbody');
	let html ='<tr class="blank"><td><input type="checkbox"></td><td><input type="text" readonly size=4 name="employeeCode"></td><td><input type="text" readonly size=4 ></td><td><input type="date" class="lock"  name="attendanceDate"></td><td><input type="text" class="lock" name="attCode" readonly size=4 ></td><td><input type="time" class="lock" name="attendanceTime" readonly size=4 ></td><td><input type="time" class="lock" name="leaveTime" readonly size=4 ></td><td><input type="text" name="toalWorktime" readonly size=4 ></td><td><input type="text" name="overtimeWorktime" readonly size=4 ></td><td><input type="text" name="nightWorktime" readonly size=4 ></td><td><input type="text" name="weekendWorktime" readonly size=4 ></td></tr>'


	tbody.insertAdjacentHTML('beforeend',html)
})

let currentTarget = null;

//인사발령입력 테이블의 이벤트
grid.on('click',function (ev) {
	console.log(ev)
	
	if (ev.columnName == 'employeeId' || ev.columnName == 'name') {
			currentTarget = ev;
            window.setTimeout(function(){
            empGrid.refreshLayout();
            }, 200)
            dataToEmpModal()
            empModal.show()
	}
	if (ev.columnName == 'attName') {
		currentTarget = ev
        window.setTimeout(function(){
        aeSearchGrid.refreshLayout();
        }, 200)
        dataToAeSearch() 
        aeSearchModal.show()
				
	}
})



//사원검색 테이블의 이벤트
empGrid.on('click', function(ev) {
	if(ev.targetType == 'cell') {
		let empId = empGrid.getFormattedValue(ev.rowKey,'employeeId')
		let empName = empGrid.getFormattedValue(ev.rowKey,'name')
		let empCode = empGrid.getFormattedValue(ev.rowKey,'employeeCode')
		grid.setValue(currentTarget.rowKey,'employeeCode',empCode)
		grid.setValue(currentTarget.rowKey,'employeeId',empId)
		grid.setValue(currentTarget.rowKey,'name',empName)
		empModal.hide()
	}
})

//근태유형 테이블의 이벤트

aeSearchGrid.on('click', function (ev) {
	console.log(ev)
	if (ev.targetType == 'cell'){
	let attName = aeSearchGrid.getFormattedValue(ev.rowKey,'attName');
	let attCode = aeSearchGrid.getFormattedValue(ev.rowKey,'attCode');
	let commonName = aeSearchGrid.getFormattedValue(ev.rowKey,'commonName');
	if (commonName == '휴가' || commonName == '공제' ) {
		grid.setValue(currentTarget.rowKey,'attendanceTime',null);
		grid.setValue(currentTarget.rowKey,'leaveTime',null);
	}
		grid.setValue(currentTarget.rowKey,'attCode',attCode);	
		grid.setValue(currentTarget.rowKey,'attName',attName);
		grid.setValue(currentTarget.rowKey,'commonName',commonName);
		
		aeSearchModal.hide();
	}	
})

//저장버튼 클릭시 이벤트
document.querySelector('.insert-Btn').addEventListener('click',function () {
	//널검사
	
	if (validateCheck()) {
		return;
	}
	
	let row = grid.getData()
	let flag = nullCheck(row)
	console.log(flag)
	if (flag == false ) {
		alert("값을 입력하세요")
		return;
	}
	
		
	fetch("/employees/att",{
		method:"post",
		headers:{"Content-Type":"application/json"},
		body:JSON.stringify(row)
	})
	.then(data => data.json())
	.then(data => {
		
	})
})

function validateCheck () {
	let nullCheck = grid.validate();
    if (nullCheck.length !== 0 ) {
		grid.focus(nullCheck[0].rowKey, nullCheck[0].errors[0].columnName)
		alert("값을 입력해주세요")
		return true;
	}
}
function nullCheck (data) {
	
	for (let ele of data) {
		console.log(ele)
		console.log(ele.commonName)
		
		if ((ele.commonName !== '휴가') || (ele.commonName !== '공제')) {
			if (ele.attendanceTime == null) {
				alert("출근시간 입력")
				grid.focus(ele.rowKey, 'attendanceTime')
				return false ; 
			} else if (ele.leaveTime == null) {
				grid.focus(ele.rowKey, 'leaveTime')
				alert("퇴근시간 입력")
				return false;
			}
		}
	}
	return true;
}