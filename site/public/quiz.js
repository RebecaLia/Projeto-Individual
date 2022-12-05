const nome_usuario = sessionStorage.getItem("NOME_USUARIO");
const id_usuario = sessionStorage.getItem("ID_USUARIO");

var answers = {};

var question_1 = document.getElementById('question-1');
var question_2 = document.getElementById('question-2');
var question_3 = document.getElementById('question-3');
var question_4 = document.getElementById('question-4');
var question_5 = document.getElementById('question-5');
var question_6 = document.getElementById('question-6');
var question_7 = document.getElementById('question-7');
var question_8 = document.getElementById('question-8');
var question_9 = document.getElementById('question-9');
var question_10 = document.getElementById('question-10');

function storeAnswer(question_number, event){
    if(event.target.type === 'radio'){
        console.log(event.target.value);
        answers['question'+question_number] = parseInt(event.target.value);
        console.log(answers);
    }
}

question_1.addEventListener('click', function(event){
    storeAnswer(1, event)
})
question_2.addEventListener('click', function(event){
    storeAnswer(2, event)
})
question_3.addEventListener('click', function(event){
    storeAnswer(3, event)
})
question_4.addEventListener('click', function(event){
    storeAnswer(4, event)
})
question_5.addEventListener('click', function(event){
    storeAnswer(5, event)
})
question_6.addEventListener('click', function(event){
    storeAnswer(6, event)
})
question_7.addEventListener('click', function(event){
    storeAnswer(7, event)
})
question_8.addEventListener('click', function(event){
    storeAnswer(8, event)
})
question_9.addEventListener('click', function(event){
    storeAnswer(9, event)
})
question_10.addEventListener('click', function(event){
    storeAnswer(10, event)
})

function totalScore(){
    var total_score = 
    answers.question1+
    answers.question2+
    answers.question3+
    answers.question4+ 
    answers.question5+
    answers.question6+
    answers.question7+
    answers.question8+
    answers.question9+ 
    answers.question10;

    return total_score;
}

function getInfoBasedOnScore(){
    if(totalScore() <= 5){
        var score_info = "Você não conhece muito sobre a Marvel";
    } else if(totalScore() > 5){
        var score_info = "Parabéns! Você é um vedadeiro fã da Marvel"
    }

    return score_info;
}

var submit1 = document.getElementById('submit1');
var submit2 = document.getElementById('submit2');
var submit3 = document.getElementById('submit3');
var submit4 = document.getElementById('submit4');
var submit5 = document.getElementById('submit5');
var submit6 = document.getElementById('submit6');
var submit7 = document.getElementById('submit7');
var submit8 = document.getElementById('submit8');
var submit9 = document.getElementById('submit9');
var submit10 = document.getElementById('submit10');

function nextQuestion(question_number){
    var current_question_number = question_number - 1;
    var question_number = question_number.toString();
    var current_question_number = current_question_number.toString();

    var el = document.getElementById('question-'+question_number);
    var el2 = document.getElementById('question-'+current_question_number);

    el.style.display = "block";
    el2.style.display = "none";
}

submit1.addEventListener('click', function(){
    nextQuestion(2);
    growProgressBar('20%');
})
submit2.addEventListener('click', function(){
    nextQuestion(3);
    growProgressBar('30%');
})
submit3.addEventListener('click', function(){
    nextQuestion(4);
    growProgressBar('40%');
})
submit4.addEventListener('click', function(){
    nextQuestion(5);
    growProgressBar('50%');
})

submit5.addEventListener('click', function(){
    nextQuestion(6);
    growProgressBar('60%');
})

submit6.addEventListener('click', function(){
    nextQuestion(7);
    growProgressBar('70%');
})

submit7.addEventListener('click', function(){
    nextQuestion(8);
    growProgressBar('80%');
})

submit8.addEventListener('click', function(){
    nextQuestion(9);
    growProgressBar('90%');
})

submit9.addEventListener('click', function(){
    nextQuestion(10);
    growProgressBar('100%');
})
submit10.addEventListener('click', function(){
    nextQuestion(11);
})

submit10.addEventListener('click', function(){
    document.getElementById("printtotalscore").innerHTML = `${totalScore()} / 10`;
    document.getElementById("printscoreinfo").innerHTML = getInfoBasedOnScore();

    console.log(totalScore())
    fetch("/quizes/cadastrar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            pontuacaoServer: totalScore(),
            usuarioServer: id_usuario
        })
    }).then(function (resposta) {
    
        console.log("resposta: ", resposta);
    
        if (resposta.ok) {
    
    
    
        } else {
            throw ("Houve um erro ao tentar realizar o cadastro!");
        }
    }).catch(function (resposta) {
        console.log(`#ERRO: ${resposta}`);
    });
})

function growProgressBar(percentage_width){
    var bar = document.getElementById("progress_bar");
    bar.style.width = percentage_width;
}

function navigateTo(caminho) {
    window.location.href = caminho;
}

window.onload = () => {
    

    if (nome_usuario) {
        const botao_sair = document.querySelector('.menu-sair');
        botao_sair.style.display = "block"
    }

}




    
 


function sair() {
    sessionStorage.clear()
    navigateTo(window.location.href="./index.html")
}

