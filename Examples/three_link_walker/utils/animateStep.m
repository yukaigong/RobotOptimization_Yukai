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
            [ pH, pT, pR, pL ] = positions( q );
            
            hold off
            plot ([-10 10],[0,0],'g','LineWidth',3); % ground
            hold on
            
            % Draw right leg
            plot([pH(1) pR(1)],[pH(2) pR(2)],'r','LineWidth',2);
            
            % Draw left leg
            plot([pH(1) pL(1)],[pH(2) pL(2)],'b','LineWidth',2);
            
            % Draw torso
            plot([pH(1) pT(1)],[pH(2) pT(2)],'k','LineWidth',2);
            axis([-1 3 -.5 2])
            
            pause(input{n}.t(1)/nNodes)
        end
    end
    offset = [pR(1);0];
end
end

