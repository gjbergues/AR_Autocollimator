
function  [Isf]=AR_centercruz_function(I)

    NI = 20;%Numero de imagenes a ser 	promediadas.Etiquetadas consecutivamente
	sum_I = 0;
	SumaTotal = 0;
 
	    
    wx = 203;
    wy = 617;
	y = 1:wy;
	x = 1:wx;
    Isf=zeros(1234,1624);
    
    k=1;
    for i = 0:1
        ymin= i*617+1;
        for j=0:7
            k=k+1;
            xmin= j*203+1;
            Ic = imcrop(I,[xmin ymin 202 616]);%[xmin ymin width height]%        
        
            [fitresult, gof] = Fit_fondo_cruz_H(x, y, Ic);
           
            [t1,t2] = meshgrid(x,y);
            promfit = fitresult( t1, t2);            
        
            J = abs(promfit-Ic);
            Isf((1+i*617):(617*(i+1)),(1+j*203):(203*(j+1)))=J;

        end
        xmin = 0;
    end
    
    %figure; imshow(Isf);


end