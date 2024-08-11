package com.winsoft.service;

import org.springframework.stereotype.Service;

@Service
public class CalculatorServiceImplementation implements CalculatorService {

	@Override
	public Integer performOperations(String operations) {
		
		String[] arr = operations.split("(?<=[-+*/])|(?=[-+*/])");
		int result = Integer.parseInt(arr[0]);
		
		for (int i = 1; i < arr.length; i+=2) {
			String operator = arr[i];
			double operand = Double.parseDouble(arr[i+1]);
			
			if ("+".equals(operator)) {
				result += operand;
			}
			else if ("-".equals(operator)) {
				result -= operand;
			}
			else if ("*".equals(operator)) {
				result *= operand;
			}
			else if ("/".equals(operator)) {
				result /= operand;
			}
		}
		
		return result;
	}

}
