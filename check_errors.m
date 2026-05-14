function res = check_errors(H, current_frame)
syndrome =  H * transpose(current_frame); % H * c^T
areErrors = any(mod(syndrome,2)) % nếu có ít nhất 1 bit khác 0 thì kết quả là 0 là sai
res = areErrors;
end