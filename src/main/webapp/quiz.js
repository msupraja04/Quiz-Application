let currentQuestion = 1;
const totalQuestions = 5;

const questions = document.querySelectorAll('.question');
const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');
const submitBtn = document.getElementById('submitBtn');

function showQuestion(n) {
    questions.forEach((q, i) => {
        q.style.display = (i + 1 === n) ? 'block' : 'none';
    });

    // Button visibility
    prevBtn.style.display = (n === 1) ? 'none' : 'inline-block';
    nextBtn.style.display = (n === totalQuestions) ? 'none' : 'inline-block';
    submitBtn.style.display = (n === totalQuestions) ? 'inline-block' : 'none';
}

prevBtn.addEventListener('click', () => {
    if (currentQuestion > 1) currentQuestion--;
    showQuestion(currentQuestion);
});

nextBtn.addEventListener('click', () => {
    if (currentQuestion < totalQuestions) currentQuestion++;
    showQuestion(currentQuestion);
});

showQuestion(currentQuestion);
