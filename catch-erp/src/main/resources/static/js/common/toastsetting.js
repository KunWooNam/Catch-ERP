/** 
 * 에디터 타입 
 * gridNumber : 숫자
 * gridTime : 시간
 * gridDate : 날짜
 * gridCheckbox : 체크박스(로우넘)
 * tooltipOut() : 부트스트랩 툴팁 함수
 * header nav-bar css를 위한 함수
 * saveExcel(grid) : 토스트 그리드 엑셀다운 
*/


// 필수 값 빨간 * 표시
class RequiredColumnHeader {
  constructor(props) {
    const columnInfo = props.columnInfo; // 해당 컬럼의 정보
    const el = document.createElement('div');
    el.className = 'msg'; // 필요한 경우 스타일 클래스 지정
    el.innerHTML = `${columnInfo.header} <span style="color: red;">*</span>`; // 헤더에 HTML 추가
    this.el = el;
  }

  getElement() {
    return this.el; // 생성된 엘리먼트를 반환
  }
}


class UnderlineRenderer {
    constructor(props) {
        const el = document.createElement('div');
        el.style.textDecoration = 'underline';
        el.textContent = props.value;
        this.el = el;
    }

    getElement() {
        return this.el;
    }
}


//숫자타입 인풋
class gridNumber {
  constructor(props) {
    const el = document.createElement('input');

    el.type = 'number';
    el.value = String(props.value);
    el.style = 'width : 100%; border:0;'; 
    this.el = el;
  }

  getElement() {
    return this.el;
  }

  getValue() {
    return this.el.value;
  }

  mounted() {
    this.el.select();
  }
}



//숫자있는 체크박스
  class gridCheckbox {
    constructor(props) {
      const { grid, rowKey } = props;
	
      const label = document.createElement('label');
      label.className = `checkbox tui-grid-row-header-checkbox selectCheck countCheck-${grid.el.id}`;
      label.setAttribute('for', 'selectCheck'+grid.el.id+String(rowKey));
      label.innerText = `${grid.getIndexOfRow(rowKey)+1}`;
      const hiddenInput = document.createElement('input');
      hiddenInput.className = 'hidden-input';
      hiddenInput.id = 'selectCheck'+grid.el.id+String(rowKey);

      const customInput = document.createElement('span');
      customInput.className = 'custom-input';

      customInput.appendChild(hiddenInput);
      customInput.appendChild(label);

      hiddenInput.type = 'checkbox';
      label.addEventListener('click', (ev) => {
        ev.preventDefault();

        if (ev.shiftKey) {
          grid[!hiddenInput.checked ? 'checkBetween' : 'uncheckBetween'](rowKey);
          return;
        }

        grid[!hiddenInput.checked ? 'check' : 'uncheck'](rowKey);
      });

      this.el = customInput;

      this.render(props);
    }

    getElement() {
      return this.el;
    }

    render(props) {
      const hiddenInput = this.el.querySelector('.hidden-input');
      const checked = Boolean(props.value);

      hiddenInput.checked = checked;
    }
  }

  



//토스트 컬럼 타입 정의(시간)
class gridTime {
constructor(props) {
    const el = document.createElement('input');

    el.type = 'time';
    el.value = String(props.value);
    el.className = 'form-control from-control-sm'
    this.el = el;
}

getElement() {
    return this.el;
}

getValue() {
    return this.el.value;
}

mounted() {
    this.el.select();
}
}
//토스트 컬럼 타입 정의 (날짜)
class gridDate {
constructor(props) {
    const el = document.createElement('input');

    el.type = 'date';
    el.value = String(props.value);
    el.className = 'form-control from-control-sm'
    this.el = el;
}

getElement() {
    return this.el;
}

getValue() {
    return this.el.value;
}

mounted() {
    this.el.select();
}
}




//토스트 사용불가 컬럼 타입 정의(시간)
class gridDisableTime {
constructor(props) {
    const el = document.createElement('input');

    el.type = 'time';
    el.value = String(props.value);
    el.className = 'form-control from-control-sm'
    el.disabled = 'true'
    this.el = el;
}

getElement() {
    return this.el;
}

getValue() {
    return this.el.value;
}

mounted() {
    this.el.select();
}
}





//토스트 사용불가 컬럼 타입 정의 (날짜)
class gridDisableDate {
constructor(props) {
    const el = document.createElement('input');

    el.type = 'date';
    el.value = String(props.value);
    el.className = 'form-control from-control-sm'
	el.disabled = true
    this.el = el;
}

getElement() {
    return this.el;
}

getValue() {
    return this.el.value;
}

mounted() {
    this.el.select();
}
}

function tooltipOut(){
	    const tooltipTriggerList = [].slice.call(document.querySelectorAll('[title]'));
	    tooltipTriggerList.map(function (tooltipTriggerEl) {
	        return new bootstrap.Tooltip(tooltipTriggerEl);
	    });  
    }
    
/*//header nav-bar css를 위한 함수
window.addEventListener('resize', () => {
    const headerLi = document.getElementById('headerLi');
    if (window.innerWidth <= 992) {
        headerLi.classList.add('ms-auto');
    } else {
        headerLi.classList.remove('ms-auto');
    }
});


if (window.innerWidth <= 992) {
    document.getElementById('headerLi').classList.add('ms-auto');
}*/

/*
console.log("gd")
//토스트 시간 타임피커 정의(시간)
class gridTimePicker {
constructor(props) {
	const { grid, rowKey } = props;
    const el = document.createElement('div');
    const picker = document.createElement('div');
    const scripts = document.createElement('script')
    console.log("gd")
	let pickerid = grid.el.id+'Time-'+String(rowKey)
    picker.id = pickerid;
    picker.value = String(props.value);
    scripts.innerText = `const ${pickerid} = document.getElementById('${pickerid})\\n const instance = new TimePicker('#'+${pickerid},{initialHour: 22,initialMinute: 33,inputType: 'spinbox',showMeridiem: false});');`
    console.log("gd")
    console.log(el)
    el.appendChild(picker)
    el.appendChild(scripts)
    this.el = el;
    
}

getElement() {
    return this.el;
}

getValue() {
    return this.el.value;
}

}
*/
//토스트 그리드 엑셀다운
function saveExcel(grid){
		let userName = document.getElementById('loginUserName').value; //header.html에 hidden input값을 읽어온다.
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0' + (today.getMonth() + 1)).slice(-2);
		var day = ('0' + today.getDate()).slice(-2);
		var dateString = year + month + day + "_" + userName;
		const options = {
			/*includeHeader: true,
			includeHiddenColumns: false,
			onlySelected: false,*/
			fileName: `${dateString}.xlsx`,
		};
		
		grid.export('xlsx',options);
	
	}

function saveExcel2(grid){
    let userName = document.getElementById('loginUserName').value; //header.html에 hidden input값을 읽어온다.
    var today = new Date();
    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);
    var dateString = year + month + day + "_" + "판매내역";
    const options = {
        /*includeHeader: true,
        includeHiddenColumns: false,
        onlySelected: false,*/
        fileName: `${dateString}`,
    };

    grid.export('xlsx',options);

}
