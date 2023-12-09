document.addEventListener("DOMContentLoaded", function () {
    var ctx = document.getElementById('login2');
    
    // 여기에 날짜 형식을 변경하는 코드를 삽입합니다.
    var initialLabels = Array.from({ length: 7 }, (_, index) => {
        var currentDate = new Date();
        currentDate.setDate(currentDate.getDate() - (6 - index));

        // 형식을 "YYYY-MM-DD"로 변경
        return currentDate.toISOString().split('T')[0];
    });

    var initialData = Array.from({ length: 7 }, () => null);

    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: initialLabels,
            datasets: [{
                label: '운동시간',
                fill: false,
                data: ['30','40','20','15','120','35','40'],
                backgroundColor: ['rgba(255, 99, 132, 0.2)'],
                borderColor: ['rgba(0, 0, 255, 1)'],
                borderWidth: 1
            }]
        },
        options: {
            responsive: false,
            scales: {
                yAxes: [{
                    ticks: {
                         min: 0,
                        max: 120,
                        stepSize: 10,
                        fontSize: 10,
                    }
                }]
            }
        }
    });

    var addMealButton = document.getElementById("addMealButton");

    function addMealData() {
        var mealDateInput = document.getElementById("mealDateInput");
        var mealAmountInput = document.getElementById("mealAmountInput");

        var mealDate = mealDateInput.value;
        var mealAmount = parseInt(mealAmountInput.value);

        myChart.data.labels.push(mealDate);
        myChart.data.datasets[0].data.push(mealAmount); // datasets 배열의 첫 번째 항목을 사용

        if (myChart.data.labels.length > 7) {
            myChart.data.labels.shift();
            myChart.data.datasets[0].data.shift();
        }

        myChart.update();

        mealDateInput.value = "";
        mealAmountInput.value = "";
    }

    addMealButton.addEventListener("click", function () {
        addMealData();
    });
});