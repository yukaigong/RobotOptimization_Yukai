classdef AtriasAnimator < Animator.AbstractAnimator
    properties
        leg1Color = 'r';
        leg2Color = 'b';
        torsoColor = 'k';
        groundColor = 'g';
    end
    
    properties (Access = private)
        ground;

        torso;
        p1HR;
        p2HR;
        p31R;
        p42R;
        p0HR;
        p1HL;
        p2HL;
        p31L;
        p42L;
        p0HL;
        
        text;
        
        starting_index;
        next_frame_time;
        
        H;
        
        q_all;
        t_all;
    end
    
    properties
        updateWorldPosition logical
    end
    
    methods
        function obj = AtriasAnimator(t, q, varargin)
            obj = obj@Animator.AbstractAnimator(); % Calling super constructor
    
            obj.q_all = q;
            obj.t_all = t;
            
            obj.startTime = t(1);
            obj.currentTime = obj.startTime;
            obj.endTime = t(end);
            obj.updateWorldPosition = false;
            
            if isempty(varargin)
                [terrain.Tx, terrain.Ty] = meshgrid(-10:1:10, -10:1:10);
                terrain.Tz = 0.*terrain.Tx;
            else
                terrain = varargin{1};
            end
            
            Rz = @(th) [cos(th), -sin(th), 0; sin(th), cos(th), 0; 0,0,1];
            Ry = @(th) [cos(th), 0, sin(th); 0, 1, 0; -sin(th), 0, cos(th)];
            Rx = @(th) [1,0,0; 0, cos(th), -sin(th); 0, sin(th), cos(th)];
            
            r = obj.q_all(1:3, end) - obj.q_all(1:3, 1);
            th = obj.q_all(4:6, end) - obj.q_all(4:6, 1);
            obj.H = [Rx(th(1))*Ry(th(2))*Rz(th(3)), r; 0,0,0,1];
            
            % Initialization
            q = obj.q_all(:,1);
            
            p0 = q(1:3);
            pT = p_TorsoTop(q);
            
            pHR = p_qARight(q);
            p1R = p_fourBarARight(q);
            p2R = p_fourBarBRight(q);
            p3R = p_RightFourBarConnect(q);
            p4R = p_RightFoot(q);
            
            pHL = p_qALeft(q);
            p1L = p_fourBarALeft(q);
            p2L = p_fourBarBLeft(q);
            p3L = p_LeftFourBarConnect(q);
            p4L = p_LeftFoot(q);
            
            % Define Terrain
            obj.ground = surf(terrain.Tx,terrain.Ty,terrain.Tz); hold on;
            
             % Define stance leg
            obj.p1HR = line([p1R(1) pHR(1)],[p1R(2) pHR(2)],[p1R(3) pHR(3)]);
            obj.p2HR = line([p2R(1) pHR(1)],[p2R(2) pHR(2)],[p2R(3) pHR(3)]);
            obj.p31R = line([p3R(1) p1R(1)],[p3R(2) p1R(2)],[p3R(3) p1R(3)]);
            obj.p42R = line([p4R(1) p2R(1)],[p4R(2) p2R(2)],[p4R(3) p2R(3)]);
            obj.p0HR = line([p0(1) pHR(1)],[p0(2) pHR(2)],[p0(3) pHR(3)]);
            
            set(obj.p1HR,'LineWidth',3,'Color',obj.leg1Color);
            set(obj.p2HR,'LineWidth',3,'Color',obj.leg1Color);
            set(obj.p31R,'LineWidth',3,'Color',obj.leg1Color);
            set(obj.p42R,'LineWidth',3,'Color',obj.leg1Color);
            set(obj.p0HR,'LineWidth',3,'Color',obj.torsoColor);
            
            % Define swing leg
            obj.p1HL = line([p1L(1) pHL(1)],[p1L(2) pHL(2)],[p1L(3) pHL(3)]);
            obj.p2HL = line([p2L(1) pHL(1)],[p2L(2) pHL(2)],[p2L(3) pHL(3)]);
            obj.p31L = line([p3L(1) p1L(1)],[p3L(2) p1L(2)],[p3L(3) p1L(3)]);
            obj.p42L = line([p4L(1) p2L(1)],[p4L(2) p2L(2)],[p4L(3) p2L(3)]);
            obj.p0HL = line([p0(1) pHL(1)],[p0(2) pHL(2)],[p0(3) pHL(3)]);
            
            set(obj.p1HL,'LineWidth',3,'Color',obj.leg2Color);
            set(obj.p2HL,'LineWidth',3,'Color',obj.leg2Color);
            set(obj.p31L,'LineWidth',3,'Color',obj.leg2Color);
            set(obj.p42L,'LineWidth',3,'Color',obj.leg2Color);
            set(obj.p0HL,'LineWidth',3,'Color',obj.torsoColor);
            
            % Define torso
            obj.torso = line([p0(1) pT(1)], [p0(2) pT(2)], [p0(3) pT(3)]);
            set(obj.torso,'LineWidth',3,'Color',obj.torsoColor);
            


        end
        
        function Draw(obj, t, x)
            q = x;                     

            % Update Positions            
            p0 = q(1:3);
            pT = p_TorsoTop(q);
            
            pHR = p_qARight(q);
            p1R = p_fourBarARight(q);
            p2R = p_fourBarBRight(q);
            p3R = p_RightFourBarConnect(q);
            p4R = p_RightFoot(q);
            
            pHL = p_qALeft(q);
            p1L = p_fourBarALeft(q);
            p2L = p_fourBarBLeft(q);
            p3L = p_LeftFourBarConnect(q);
            p4L = p_LeftFoot(q);
            
            set(obj.p1HR,'XData',[p1R(1) pHR(1)],'YData',[p1R(2) pHR(2)],'ZData',[p1R(3) pHR(3)]);
            set(obj.p2HR,'XData',[p2R(1) pHR(1)],'YData',[p2R(2) pHR(2)],'ZData',[p2R(3) pHR(3)]);
            set(obj.p31R,'XData',[p3R(1) p1R(1)],'YData',[p3R(2) p1R(2)],'ZData',[p3R(3) p1R(3)]);
            set(obj.p42R,'XData',[p4R(1) p2R(1)],'YData',[p4R(2) p2R(2)],'ZData',[p4R(3) p2R(3)]);
            set(obj.p0HR,'XData',[p0(1) pHR(1)],'YData',[p0(2) pHR(2)],'ZData',[p0(3) pHR(3)]);
            
            set(obj.p1HL,'XData',[p1L(1) pHL(1)],'YData',[p1L(2) pHL(2)],'ZData',[p1L(3) pHL(3)]);
            set(obj.p2HL,'XData',[p2L(1) pHL(1)],'YData',[p2L(2) pHL(2)],'ZData',[p2L(3) pHL(3)]);
            set(obj.p31L,'XData',[p3L(1) p1L(1)],'YData',[p3L(2) p1L(2)],'ZData',[p3L(3) p1L(3)]);
            set(obj.p42L,'XData',[p4L(1) p2L(1)],'YData',[p4L(2) p2L(2)],'ZData',[p4L(3) p2L(3)]);
            set(obj.p0HL,'XData',[p0(1) pHL(1)],'YData',[p0(2) pHL(2)],'ZData',[p0(3) pHL(3)]);
            
            set(obj.torso,'XData',[p0(1) pT(1)],'YData',[p0(2) pT(2)],'ZData',[p0(3) pT(3)]);
            
            
            delete(obj.text);
            obj.text = text(p0(1),p0(2),p0(3)+1,['t = ',sprintf('%.2f',t)]);
            obj.text.FontSize = 14;
            obj.text.FontWeight = 'Bold';
            obj.text.Color = [0,0,0];
            %  set(obj.text);

            drawnow;
        end
        
        function x = GetData(obj, t)
            t_start = obj.t_all(1);
            t_end = obj.t_all(end);
            delta_t = t_end - t_start;
            
            val = 0;
            
            if t < t_start || t > t_end
                val = floor((t - t_start) / delta_t);
                t = t - val * delta_t;
            end
            
            if t < t_start
                t = t_start;
            elseif t > t_end
                t = t_end;
            end
            
            n = length(obj.t_all);
            x = obj.q_all(:, 1); % Default
            
            a = 1;
            b = n;
            
            while (a <= b)
                c = floor((a + b) / 2);
                
                if t < obj.t_all(c)
                    x = obj.q_all(:, c);
                    b = c - 1;
                elseif t > obj.t_all(c)
                    a = c + 1;
                else
                    x = obj.q_all(:, c);
                    break;
                end
            end
            
            delta_q = obj.q_all(1:6, end) - obj.q_all(1:6, 1);
            
            %T = obj.H(1:3,4);
            %roll = atan2(-obj.H(2,3),obj.H(3,3));
            %pitch = asin(obj.H(1,3));
            %yaw = atan2(-obj.H(1,2),obj.H(1,1));
            
            if obj.updateWorldPosition
                Rz = @(th) [cos(th), -sin(th), 0; sin(th), cos(th), 0; 0,0,1];
                Ry = @(th) [cos(th), 0, sin(th); 0, 1, 0; -sin(th), 0, cos(th)];
                Rx = @(th) [1,0,0; 0, cos(th), -sin(th); 0, sin(th), cos(th)];
                
                x_orig_init = obj.q_all(1:6, 1);
                x_current_init = obj.q_all(1:6, 1);
                if val > 0
                    for i = 1:val
                        x_end = obj.q_all(1:6, end);
                        
                        r1 = x_current_init(1:3) - x_orig_init(1:3);
                        th1 = x_current_init(4:6) - x_orig_init(4:6);
                        H1 = [Rx(th1(1))*Ry(th1(2))*Rz(th1(3)), r1; 0,0,0,1];
                        
                        r2 = x_end(1:3) - x_orig_init(1:3);
                        th2 = x_end(4:6) - x_orig_init(4:6);
                        H2 = [Rx(th2(1))*Ry(th2(2))*Rz(th2(3)), r2; 0,0,0,1];
                        
                        H = H1*H2;
                        T = H(1:3,4);
                        roll = atan2(-H(2,3),H(3,3));
                        pitch = asin(H(1,3));
                        yaw = atan2(-H(1,2),H(1,1));
                        
                        x_current_init = x_orig_init(1:6) + [T;roll;pitch;yaw];   
                    end
                    
                    x_current = x(1:6);
                        
                    r1 = x_current_init(1:3) - x_orig_init(1:3);
                    th1 = x_current_init(4:6) - x_orig_init(4:6);
                    H1 = [Rx(th1(1))*Ry(th1(2))*Rz(th1(3)), r1; 0,0,0,1];

                    r2 = x_current(1:3) - x_orig_init(1:3);
                    th2 = x_current(4:6) - x_orig_init(4:6);
                    H2 = [Rx(th2(1))*Ry(th2(2))*Rz(th2(3)), r2; 0,0,0,1];

                    H = H1*H2;
                    T = H(1:3,4);
                    roll = atan2(-H(2,3),H(3,3));
                    pitch = asin(H(1,3));
                    yaw = atan2(-H(1,2),H(1,1));

                    x(1:6) = x_orig_init(1:6) + [T;roll;pitch;yaw];   
                end
            end
        end
        
        function [center, radius, yaw] = GetCenter(obj, t, x)
            q = x;
            
            center = q(1:3);
            radius = 1.5;
            yaw = rad2deg(q(6));
        end
    end
end
