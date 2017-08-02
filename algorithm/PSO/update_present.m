function [present, gbest]=update_present(present,gbest)
%v=wv+c1*rand()*(gbest-present)+c2*rand()*(gbest-present);
%present=present+v;
present.x=present.x+present.vx;
present.y=present.y+present.vy;
present.fit=calculate_fun(present);
c1=1;c2=1;w=1;
present.vx=w*present.vx+c1*rand()*(gbest.x-present.x)+c2*rand()*(present.bestx-present.x);
present.vy=w*present.vy+c1*rand()*(gbest.y-present.y)+c2*rand()*(present.besty-present.y);
if present.fit>present.bestfit      
        present.bestfit=present.fit;    
        present.bestx=present.x;       
        present.besty=present.y;
        if present.bestfit>gbest.fit     
            gbest.fit=present.bestfit;   
            gbest.x=present.x;           
            gbest.y=present.y;
        end
    end

end