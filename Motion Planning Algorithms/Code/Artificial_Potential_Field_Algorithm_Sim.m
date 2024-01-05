clc
clear all

    rob = [3,7];
    rob_init = [3,7];
    goal = [8,85];
    obs1 = [3, 27];
    obs2 = [3, 37];
    obs3 = [3, 47];
    obs4 = [3, 57];
    obs5 = [3, 67];
 

    rob_pos_1 = [20,25];
    rob_pos_2 = [27,29];
    rob_pos_test = [rob_pos_1,rob_pos_2];
    goal_r = 8;

    dis_cric = 7;

    t = 0.5;

 while (((rob(1)-goal(1))^2 + (rob(2)-goal(2))^2) > goal_r^2)


    r = nsidedpoly(1000, 'Center', rob, 'Radius', 0.5);
    g = nsidedpoly(1000, 'Center', goal, 'Radius', goal_r);
    o1 = nsidedpoly(1000, 'Center', obs1, 'Radius', 2);
    o2 = nsidedpoly(1000, 'Center', obs2, 'Radius', 2);
    o3 = nsidedpoly(1000, 'Center', obs3, 'Radius', 2);
    o4 = nsidedpoly(1000, 'Center', obs4, 'Radius', 2);
    o5 = nsidedpoly(1000, 'Center', obs5, 'Radius', 2);
    %o_b = nsidedpoly(1000, 'Center', obs, 'Radius', dis_cric);

    disp('Loop Entered');
    disp(rob(1));
    disp(rob(2));
    

    dist_rob_goal = norm(rob-goal);
    dist_rob_goal_init = norm(rob_init-goal);
    dist_rob_obs1 = norm(rob-obs1);
    dist_rob_obs2 = norm(rob-obs2);
    dist_rob_obs3 = norm(rob-obs3);
    dist_rob_obs4 = norm(rob-obs4);
    dist_rob_obs5 = norm(rob-obs5);

    disp('Distances Calculated');

    disp(dist_rob_goal);
    disp(dist_rob_obs1);
    disp(dist_rob_obs2);
    disp(dist_rob_obs3);
    disp(dist_rob_obs4);
    disp(dist_rob_obs5);

    disp('Potential Values are')

    pot_att_val = pot_att(dist_rob_goal,dist_rob_goal_init);
    disp('Attractive Potential is')
    disp(pot_att_val);

    pot_rep_val1 = pot_rep(dist_rob_obs1,dis_cric);
    disp('Repulsive Potential1 is')
    disp(pot_rep_val1);

    pot_rep_val2 = pot_rep(dist_rob_obs2,dis_cric);
    disp('Repulsive Potential2 is')
    disp(pot_rep_val2);

    pot_rep_val3 = pot_rep(dist_rob_obs3,dis_cric);
    disp('Repulsive Potential3 is')
    disp(pot_rep_val3);

    pot_rep_val4 = pot_rep(dist_rob_obs4,dis_cric);
    disp('Repulsive Potential4 is')
    disp(pot_rep_val4);

    pot_rep_val5 = pot_rep(dist_rob_obs5,dis_cric);
    disp('Repulsive Potential5 is')
    disp(pot_rep_val5);

    
    disp('Force Values are')

    
    [force_att_x, force_att_y, dist_ratio] = force_att(rob,goal,dist_rob_goal,dist_rob_goal_init);
    disp('Attractive Force is')
    disp(force_att_x);
    disp(force_att_y);
    disp("Distance ratio is")
    disp(dist_ratio)

    
    [force_rep_x1, force_rep_y1] = force_rep(rob,obs1,dist_rob_obs1,dis_cric);
    [force_rep_x2, force_rep_y2] = force_rep(rob,obs2,dist_rob_obs2,dis_cric);
    [force_rep_x3, force_rep_y3] = force_rep(rob,obs3,dist_rob_obs3,dis_cric);
    [force_rep_x4, force_rep_y4] = force_rep(rob,obs4,dist_rob_obs4,dis_cric);
    [force_rep_x5, force_rep_y5] = force_rep(rob,obs5,dist_rob_obs5,dis_cric);

    disp('Repulsive Force1 is')
    disp(force_rep_x1);
    disp(force_rep_y1);

    disp('Repulsive Force2 is')
    disp(force_rep_x2);
    disp(force_rep_y2);
    
    disp('Repulsive Force3 is')
    disp(force_rep_x3);
    disp(force_rep_y3);
    
    disp('Repulsive Force4 is')
    disp(force_rep_x4);
    disp(force_rep_y4);
    
    disp('Repulsive Force5 is')
    disp(force_rep_x5);
    disp(force_rep_y5);

    force_rep_x = force_rep_x1 + force_rep_x2 + force_rep_x3 + force_rep_x4 + force_rep_x5;
    force_rep_y = force_rep_y1 + force_rep_y2 + force_rep_y3 + force_rep_y4 + force_rep_y5;
  
    disp('Repulsive Force is')
    disp(force_rep_x);
    disp(force_rep_y);

    force_total_x = force_att_x + force_rep_x;
    force_total_y = force_att_y + force_rep_y;
    disp('Total Force is');
    disp(force_total_x);
    disp(force_total_y);

   if ((((rob(1)-obs1(1))^2 + (rob(2)-obs1(2))^2) < dis_cric^2)||(((rob(1)-obs2(1))^2 + (rob(2)-obs2(2))^2) < dis_cric^2)||(((rob(1)-obs3(1))^2 + (rob(2)-obs3(2))^2) < dis_cric^2)||(((rob(1)-obs4(1))^2 + (rob(2)-obs4(2))^2) < dis_cric^2)||(((rob(1)-obs5(1))^2 + (rob(2)-obs5(2))^2) < dis_cric^2))
       update_factor_x = 0.009*force_total_x;
       update_factor_y = 0.009*force_total_y;

   else
       update_factor_x = 0.009*force_total_x;
       update_factor_y = 0.009*force_total_y;


   end


    rob(1) = rob(1) + 2*update_factor_x;
    rob(2) = rob(2) + 2*update_factor_y;

    disp('Updated rob pos');
    disp(rob(1));
    disp(rob(2));

    plot(r, 'FaceColor', 'r')
    hold on;
    plot(g, 'FaceColor', 'b')
    hold on;
    plot(o1, 'FaceColor','g')
    hold on;
    plot(o2, 'FaceColor','g')
    hold on;
    plot(o3, 'FaceColor','g')
    hold on;
    plot(o4, 'FaceColor','g')
    hold on;
    plot(o5, 'FaceColor','g')
    hold on;
    %plot(o_b, 'FaceColor','y')
    %quiver(rob(1),rob(2),0.05*force_rep_x,0.05*force_rep_y,"off","filled"); 
    hold on;
    hold all;
    xlim([0,100])
    ylim([0,100])

    disp('Figures Plotted')

    pause(0.5)

 end

 function pot_att_val = pot_att(dist1, dist2)
    
    dist_ratio = dist1/dist2;
    if 0.2<dist_ratio && dist_ratio < 0.4
      ka = 5;
    elseif dist_ratio < 0.3
        ka = 10;
    else 
        ka = 1.5;
    end
    pot_att_val = 0.5 * ka * (dist1)^2;

 end


function pot_rep_val = pot_rep(dist1,dist2)
        
        kb = 50000;

        if (dist1<dist2)

            pot_rep_val = 0.5 * kb * ((dist1)^(-1) - (dist2)^(-1))^2;

        else 
            pot_rep_val = 0;
        end

end


function [force_att_x,force_att_y,dist_ratio] = force_att(rob_pos,goal_pos,dist1,dist2)

        dist_ratio = dist1/dist2;

    if 0.2<dist_ratio && dist_ratio < 0.4
      ka = 5;
    elseif dist_ratio < 0.2
        ka = 10;
    else 
        ka = 1.5;
    end
           
        force_att_x = -ka * (rob_pos(1)-goal_pos(1));
        force_att_y = -ka * (rob_pos(2)-goal_pos(2));

end

function [force_rep_x,force_rep_y] = force_rep(rob_pos,goal_pos,dist1,dist2)
        
        kb = 50000;
 
        %if (dist1<dist2)

            force_rep_x =  kb * ((dist1)^(-1) - (dist2)^(-1)) * ((dist1)^2)^(-1) * (rob_pos(1)-goal_pos(1)) * (dist1)^(-1);

        %else 
        %    force_rep_x = 0;
        %end
        
        %if (dist1<dist2)

            force_rep_y =  kb * ((dist1)^(-1) - (dist2)^(-1)) * ((dist1)^2)^(-1) * (rob_pos(2)-goal_pos(2)) * (dist1)^(-1);

        %else 
        %    force_rep_y = 0;
        %end

end
