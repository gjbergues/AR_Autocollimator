%hace todo el procedimienot dependiendo si es horario o antihorario
%horario=0;
%antihorio=1;

function AR_all_automatic(h)
%     clear all
%     close all

    ND = 51;

    for k = 1:ND % numero de directorios
	
       [Isf] = AR_analisis_cruz_for_automatic(k,h);
       Isf_n(:,:,k) = Isf;

    end
 
 
save('Isf.mat','Isf_n') 

end%FINAL FUNCIÓN