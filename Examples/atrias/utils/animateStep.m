function animateStep(input)
% Draws walker in right stance (for initialization testin)
figure
numSteps = length(input);
offset = [0;0];
while(1)
    for n = 1:numSteps
        nNodes = size(input{n}.q,1);
        for i=1:1:nNodes
            q = input{n}.q(i,:)';
            q(1:2) = q(1:2) + offset;
            
            [ pelvis, fixedleft, hipabductionleft, hiprotationleft, hipflexionleft, ...
            kneejointleft, fixedkneetoshinleft, anklejointleft, toejointleft, toebottomleft, ...
            fixedright, hipabductionright, hiprotationright, hipflexionright, kneejointright, ...
            fixedkneetoshinright, anklejointright, toejointright, toebottomright] = positions( q );
        
            hold off
        
            obj.l1l = line([pelvis(1) fixedleft(1)],[pelvis(2) fixedleft(2)],[pelvis(3) fixedleft(3)]);
            obj.l2l = line([fixedleft(1) hipabductionleft(1)],[fixedleft(2) hipabductionleft(2)],[hipabductionleft(3) fixedleft(3)]);
            obj.l3l = line([hipabductionleft(1) hiprotationleft(1)],[hipabductionleft(2) hiprotationleft(2)],[hipabductionleft(3) hiprotationleft(3)]);
            obj.l4l = line([hiprotationleft(1) hipflexionleft(1)],[hiprotationleft(2) hipflexionleft(2)],[hiprotationleft(3) hipflexionleft(3)]);
            obj.l5l = line([hipflexionleft(1) kneejointleft(1)],[hipflexionleft(2) kneejointleft(2)],[hipflexionleft(3) kneejointleft(3)]);
            obj.l6l = line([kneejointleft(1) fixedkneetoshinleft(1)],[kneejointleft(2) fixedkneetoshinleft(2)],[kneejointleft(3) fixedkneetoshinleft(3)]);
            obj.l7l = line([fixedkneetoshinleft(1) anklejointleft(1)],[fixedkneetoshinleft(2) anklejointleft(2)],[fixedkneetoshinleft(3) anklejointleft(3)]);
            obj.l8l = line([anklejointleft(1) toejointleft(1)],[anklejointleft(2) toejointleft(2)],[anklejointleft(3) toejointleft(3)]);
            obj.l9l = line([toejointleft(1) toebottomleft(1)],[toejointleft(2) toebottomleft(2)],[toejointleft(3) toebottomleft(3)]);

            obj.l1r = line([pelvis(1) fixedright(1)],[pelvis(2) fixedright(2)],[pelvis(3) fixedright(3)]);
            obj.l2r = line([fixedright(1) hipabductionright(1)],[fixedright(2) hipabductionright(2)],[fixedright(3) hipabductionright(3)]);
            obj.l3r = line([hipabductionright(1) hiprotationright(1)],[hipabductionright(2) hiprotationright(2)],[hipabductionright(3) hiprotationright(3)]);
            obj.l4r = line([hiprotationright(1) hipflexionright(1)],[hiprotationright(2) hipflexionright(2)],[hiprotationright(3) hipflexionright(3)]);
            obj.l5r = line([hipflexionright(1) kneejointright(1)],[hipflexionright(2) kneejointright(2)],[hipflexionright(3) kneejointright(3)]);
            obj.l6r = line([kneejointright(1) fixedkneetoshinright(1)],[kneejointright(2) fixedkneetoshinright(2)],[kneejointright(3) fixedkneetoshinright(3)]);
            obj.l7r = line([fixedkneetoshinright(1) anklejointright(1)],[fixedkneetoshinright(2) anklejointright(2)],[fixedkneetoshinright(3) anklejointright(3)]);
            obj.l8r = line([anklejointright(1) toejointright(1)],[anklejointright(2) toejointright(2)],[anklejointright(3) toejointright(3)]);
            obj.l9r = line([toejointright(1) toebottomright(1)],[toejointright(2) toebottomright(2)],[toejointright(3) toebottomright(3)]);
            
            
            pause(input{n}.t(1)/nNodes)
        end
    end
    offset = [pR(1);0];
end
end

