function [jaccard] = JaccardCoefficient(ground_truth, prediction)

% Author: Simon Graham
% Tissue Image Analytics Lab
% Department of Computer Science, 
% University of Warwick, UK.
%-------------------------------------------------------------------
% Both prediction and ground_truth 
% should conatain 1-Channel 
%------------------------------------------------------------------


% Check if images contain single channel
if ~islogical(ground_truth)
    error('Image must be in logical format');
end
if ~islogical(prediction)
    error('Image must be in logical format');
end

% Find the intersection of the two images
intersection = ground_truth & prediction;

% Find the union of the two images
union = ground_truth | prediction;

jaccard = sum(intersection(:))/sum(union(:));

end
