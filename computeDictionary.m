% Computes filter bank and dictionary, and saves it in dictionary.mat 

function computeDictionary()

	load('../data/traintest.mat');                              %pass the training images to generate a dictionary
	interval= 1;
	train_imagenames = train_imagenames(1:interval:end);
	[filterBank,dictionary] = getFilterBankAndDictionary(strcat(('../data/'),train_imagenames));  %creating a appropirate string function 

	save('dictionary.mat','filterBank','dictionary');  
   

end
