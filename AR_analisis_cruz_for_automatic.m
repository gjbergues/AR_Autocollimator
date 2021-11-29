%horario=0;
%antihorio=1;

function  [Isf]=AR_analisis_cruz_for_automatic(k,h)
    NI = 20;%Numero de imagenes a ser 	promediadas.Etiquetadas consecutivamente
	sum_I = 0;
	SumaTotal = 0;
    n = 5; %nº de cortes de gaussianas
	
    d = 51-k; %Para cuando es el sentido horario, empiezo del directorio 50
    
	for i=1:NI
 
       
        if h==1
            %f=['I:\EXP6\antihorario\p' num2str(k-1) '\ima' num2str(i) '.bmp'];
            f=['F:\Fotos autocolimador\EXP9\antihorario\p' num2str(k-1) '\ima' num2str(i) '.bmp'];
            %f=['J:\DATOS\TECNOLOGICA\datos_paper_pattern\Exp 2\ahorario\p' num2str(k-1) '\ima' num2str(i) '.bmp'];
        end
        
        if h==0
            f=['J:\EXP4\horario\p' num2str(d) '\ima' num2str(i) '.bmp'];
            %f=['J:\DATOS\TECNOLOGICA\datos_paper_pattern\Exp 2\horario\p' num2str(d) '\ima' num2str(i) '.bmp'];
        end
        
        %bmp ingresa color por canal? o mezcla colores?
 
        rgb_img = imread(f);
 
    	I = .2989*rgb_img(:,:,1)+.5870*rgb_img(:,:,2) +.1140*rgb_img(:,:,3);
 
        sum_I = sum_I+(double(I)+1);
 
	end
 
	Ip = sum_I/(NI);% Imagen promediada
	Ipneg = 1-(Ip./255);% imagen negada
    
    [Isf] = AR_centercruz_function(Ipneg);%obtengo el centro por cada imagen
        

end