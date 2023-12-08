        document.addEventListener("DOMContentLoaded", function() {
            var chartContainer = document.getElementById('chart-container');
            var chartCanvas = document.getElementById('chart');
            var ctx = chartCanvas.getContext('2d');
            
            var chart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: [],
                    datasets: [{
                        label: '실시간 데이터',
                        data: [],
                        borderColor: 'blue',
                        borderWidth: 1,
                        fill: false
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            display: true,
                            ticks: {
                                autoSkip: true,
                                maxTicksLimit: 10
                            }
                        },
                        y: {
                            display: true,
                            suggestedMin: 0,
                            suggestedMax: 100
                        }
                    }
                }
            });

            // 데이터 업데이트 함수
            function updateData() {
                var time = new Date().toLocaleTimeString('en-US', { hour12: false, hour: '2-digit', minute: '2-digit', second: '2-digit' });
                chart.data.labels.push(time);
                chart.data.datasets[0].data.push(Math.random() * 100);
                chart.update();

                // 일정 간격으로 데이터 업데이트
                setTimeout(updateData, 1000);
            }

            // 초기 데이터 업데이트
            updateData();
        });
