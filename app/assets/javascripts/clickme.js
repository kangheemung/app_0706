function clickme() {
  alert("clicked");
}
  const btn = document.getElementById('btn');
      btn.addEventListener('click',() => {
        const select = document.getElementById("select").value;
        const input = Number(document.getElementById("input").value);
        const input_2 =Number( document.getElementById("input_2").value); 
        const total = document.getElementById("total");
        if(select === "+"){
            total.textContent = input + input_2;
        }else if (select === "-"){
            total.textContent =　input-input_2;
        }else if (select === "÷"){
            total.textContent = input/input_2;
        }else{
             total.textContent = input*input_2;
        }
            
        console.log (select);
     });
     //クリックしたらクリックカウントできる。
     const increment = () => {
         const num = document.getElementById('num');
         num.textContent =parseInt (num.textContent)+ 1;
     }
     
     const arrs=["apple","peer","banana"]
     let name1,name2,name3=arrs;
     
     console.log(name1,name2,name3);
     
     const person = { 
         name:"sato",
         age:34
     };
     
     const{name,age} = person;
     console.log(name,age);
   
  //クリックしたら何か出力
  //ボタンクリックしたら０を何かに変更してみる
  //ボタンを押したらテキストのないようを取得する
  // ぼたんを押したらテキストの内容を足し算する。
  // 足し算した結果を０のぶぶんに入れ替える
  // -,*,/の条件を入れていく。