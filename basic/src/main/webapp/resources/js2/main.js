const qna = document.getElementById('qna');
const u_name = document.querySelector('input[type=text]');
const wrap = document.getElementById('wrap');
const tabletMQL = window.matchMedia("all and (min-width: 768px)");
const pcMQL = window.matchMedia("all and (min-width: 1024px)");
const ENDPOINT = 20;
const select = [];
let rsval= [];
let mbti='';
let qIdx = -1;

/*mbti 는 결과대로 들어감*/
/*문항별은 수정 중임 데이터를 넘기지 않을 때는 인식을 잘하지만
  넘기려고 할 때 mval, score 가 select 때문에 넘겨주질 못함
 select부분 점검 시켜주면 mval 인식함 그 부분만 수정되면 됨*/

/*
const test_result = () => {
let temp = [];
for (let i = 0; i < ENDPOINT; i++) {

	  temp.push(qnaList[i].a[select[i]].mval);
  	  console.log(temp)
  }
  return temp;
}
*/


const goTo = (dest) => { 
  let elem;
  let elemTop;
  
  elemTop = window.pageYOffset + elem.getBoundingClientRect().top;
  if (pcMQL.matches) {
    elemTop -= 150;
  } else if (tabletMQL.matches) {
    elemTop -= 115;
  } else {
    elemTop -= 60;
  }
  window.scroll({
    behavior: 'smooth',
    left: 0,
    top: elemTop
  });
}

const copy = () => {
  const tmp = document.createElement('textarea');
  document.body.appendChild(tmp);
  tmp.value = url;
  tmp.select();
  document.execCommand('copy');
  document.body.removeChild(tmp);
}

const calcScore = () => {
  let point = 0;
  for (let i = 0; i < ENDPOINT; i++) {
    point += qnaList[i].a[select[i]].score;
  }
  return point;
}


const sortResult = (point) => {
  let num = 0;
  if (point <= 22) {
    num = 0;
  } else if (point <= 25) {
    num = 1;
  } else if (point <= 28) {
    num = 2;
  } else if (point <= 31) {
    num = 3;
  } else if (point <= 34) {
    num = 4;
  } else if (point <= 37) {
    num = 5;
  } else if (point <= 40) {
    num = 6;
  } else if (point <= 43) {
    num = 7;
  } else if (point <= 46) {
    num = 8;  
  } else if (point <= 49) {
    num = 9;
  } else if (point <= 52) {
    num = 10;
  } else if (point <= 55) {
    num = 11;
  } else if (point <= 59) {
    num = 12;
  } else if (point <= 62) {
    num = 13;
  } else if (point <= 65) {
    num = 14;  
  } else {
    num = 15;
  }
  return num;
}

const goResult = () => {
  if (pcMQL.matches) {
    console.log('PC');
    wrap.style.marginTop = '150px';
  } else if (tabletMQL.matches) {
    console.log('tablet');
    wrap.style.marginTop = '115px';
  }


  const result = document.getElementById('result');
  const point = calcScore();
  const grade = sortResult(point);
  const pTitle = document.querySelector('.p');
  const res_point = document.querySelector('.point');
  const pin = document.querySelector('.pin');
  const img_url = 'resources/img2/image-' + grade + '.png';
  const res_img = document.createElement('img');
  const res_img_div = document.querySelector('.art');
  const animal = document.querySelector('.result');
  const desc = document.querySelector('.res');

  mbti=infoList[grade].name;
  pTitle.innerHTML = u_name.value + ' 님의 연애능력 점수는...';
  res_point.innerHTML = point + '점';
  pin.style.marginLeft = infoList[grade].mLeft;
  res_img.src = img_url;
  res_img.alt = infoList[grade].name;
  res_img.title = infoList[grade].name;
  res_img_div.appendChild(res_img);
  animal.innerHTML = infoList[grade].name;
  desc.innerHTML = infoList[grade].desc;

  setTimeout(() => {
  
    result.style.display = 'block';
  
    result.style.animation =
      'going-up 0.1s, ' +
      'fade-in 0.1s forwards';
  }, 600);

  $.ajax({ 
		url :'mbti_test', 
		type : 'GET', 
		dataType : 'json', 
		data : { "rsval" : rsval.join(','), "mbti": mbti}, 
		success: function(data){ console.log("성공"); } 
	});
  
  console.log(rsval);
  console.log(mbti);

  
}

const end = () => {
  qna.style.animation = '';
  const interval = setInterval(() => {
    qna.style.opacity -= 0.1;
    qna.style.transform = 'translateY(-1px)';
  }, 50);
  setTimeout(() => clearTimeout(interval), 500);
  setTimeout(() => qna.style.display = 'none', 500);
  setTimeout(() => {
    const calc = document.getElementById('calc');
    calc.style.display = 'block';
    calc.style.animation =
      'going-up 0.5s forwards, ' +
      'fade-in 0.5s forwards';
  }, 700);
  setTimeout(() => {
    calc.style.animation = '';
    calc.style.animation =
      'going-left 0.4s forwards, ' +
      'fade-out 0.4s forwards';
    setTimeout(() => {
      calc.style.display = 'none';
      goResult();	
		
    }, 400);
  }, 9000);
}

const addAnswer = (answerTxt, idx) => {
  const answer = document.createElement('button');
  const a = document.querySelector('.answer');
  answer.className += 'a box';
  answer.innerHTML = answerTxt;
  answer.addEventListener('click', () => {
    const parent = answer.parentNode;
    const children = parent.childNodes;
    for (let i in children) {
      children[i].disabled = true;
    }
    parent.classList.add('fade-out-5-4');
    setTimeout(() => {
      select[qIdx] = idx;
      a.innerHTML = '';
      parent.classList.remove('fade-out-5-4');
      goNext();
    }, 800);
  });

  setTimeout(() => answer.style.animation =
    'going-down 0.25s forwards, fade-in 0.25s forwards', 50);
  a.appendChild(answer);
}


const goNext = () => {
  if (qIdx++ === qnaList.length - 1) {
    end();
    return;
  }

  const status = document.querySelector('.status');
  const qNum = qnaList[qIdx];
  const q = document.querySelector('.q');

  status.style.width = (ENDPOINT * (qIdx + 1)) / 4 + '%';
  q.innerHTML = qNum.q;
  qna.style.animation =
    'fade-in 0.3s ease-in-out 0.4s forwards, ' +
    'going-down 0.3s ease-in-out 0.4s forwards';

  setTimeout(() => {
    const endIdx = qNum.a.length - 1;
    for (let i in qNum.a) {
      addAnswer(qNum.a[i].answer, i);
    }
    qna.style.opacity = 1;
  }, 700);
}

const begin = () => {
  const welcome = document.getElementById('welcome');

  setTimeout(() => welcome.style.animation =
    'going-up 0.4s ease-in-out forwards, ' +
    'fade-out 0.4s ease-in-out forwards', 500);
  setTimeout(() => {

    welcome.style.display = 'none';
    qna.style.display = 'block';
    if (pcMQL.matches) {
      console.log('PC');
      wrap.style.marginTop = '50px';
    } else if (tabletMQL.matches) {
      console.log('tablet');
      wrap.style.marginTop = '30px';
    }
    goNext();
  }, 1000);
}

const load = () => {
  const msg = document.querySelector('.check-name');
  const start_btn = document.querySelector('.start');

  u_name.addEventListener('blur', () => {
    try {
      if (u_name.value.length < 1) {
        throw '시작을 눌러주세요!';
      }
      msg.innerHTML = '';
    } catch (err) {
      msg.innerHTML = err;
    }
  });

  start_btn.addEventListener('click', () => {
    try {
      if (u_name.value.length < 1) {
        throw '시작을 눌러주세요';
      }
      msg.innerHTML = '';
      start_btn.disabled = true;
      begin();
    } catch (err) {
      msg.innerHTML = err;
    }
  });

}


//rsval=test_result();
//아래 임시
rsval=[11,22,31,42,51,62,71,81,91,101,112,121,132,142,152,162,171,181,191,202];


window.onload = load();