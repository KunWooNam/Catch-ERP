/** 
 * 에디터 타입 
 * gridNumber : 숫자
 * gridTime : 시간
 * gridDate : 날짜
 * gridCheckbox : 체크박스(로우넘)
 * 
 * 
 * 
*/







//숫자타입 인풋
class gridNumber {
  constructor(props) {
    const el = document.createElement('input');

    el.type = 'number';
    el.value = String(props.value);
	el.className = 'form-control form-control-sm'
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
      label.className = 'checkbox tui-grid-row-header-checkbox selectCheck countCheck';
      label.setAttribute('for', 'selectCheck'+String(rowKey));
      label.innerText = `${grid.getIndexOfRow(rowKey)+1}`;
      const hiddenInput = document.createElement('input');
      hiddenInput.className = 'hidden-input';
      hiddenInput.id = 'selectCheck'+String(rowKey);
	
      
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

