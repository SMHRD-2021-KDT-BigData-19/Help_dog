var ctx = document.getElementById('myChart');
		var myChart = new Chart(ctx, {
		    type: 'line',           	//차트의 형태 
		    data: {					//차트에 들어갈 데이터
		        labels: ['월', '화', '수', '목', '금', '토', '일'],
		        datasets: [{  //데이터1
		            label: '운동량 기준',
		            fill: false,  //line 형태일 때, 선 안쪽을 채우는지 안채우는지
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [  //색상
		 
		                'rgba(192, 192, 192, 192)',
		            ],
		            borderColor: [     //경계선 색상
		                'rgba(192, 192, 192, 192)',
		         
		            ],
		            borderWidth: 1  //경계선 굵기
		        },
		        {  //데이터2
		            label: '운동량',
		            fill: false,  //line 형태일 때, 선 안쪽을 채우는지 안채우는지
		            data: [10, 20, 1, 6, 2, 3],
		            backgroundColor: [  //색상
		 
		                'rgba(255, 99, 132, 0.2)',
		            ],
		            borderColor: [     //경계선 색상
		                'rgba(255, 99, 132, 1)',
		         
		            ],
		            borderWidth: 1  //경계선 굵기
		        }
		    ]
		    },
		    options: {
				responsive: false,
				scales: {
					yAxes: [{
						ticks: {
							min: 0,
							max: 50,
							stepSize : 10,
							fontSize : 10,
						}
					}]
				}
			}
		});