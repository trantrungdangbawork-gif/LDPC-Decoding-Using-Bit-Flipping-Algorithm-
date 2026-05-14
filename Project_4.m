clear all;
close all;


% Ma trận kiểm tra
H=[1 1 0 1 0 0
    0 1 1 0 1 0
    1 0 0 0 1 1
    0 0 1 1 0 1];

% Từ mã truyền
c=[0 0 1 0 1 1]

% Từ mã nhận
r=[1 0 1 0 1 1]
y=r;

% Số lần lặp
maxiter=20;
iter=0;

% Đánh dấu giải mã chưa thành công
success = 0;

while (iter < maxiter && success == 0)   % Điều kiện vòng lặp

    % Tính syndrome trước
    syndrome = mod(H * transpose(y), 2); % hàng đang sai

    % Khởi tạo ma trận lỗi
    E=zeros(4,6);

    for j = 1:4
        for i = 1:6
            if (H(j,i)==1) % nghĩa là H là kiểm tra bit ở vị trí i,
                %  syndrome là check ở hàng j đó, nếu hàng đó sai, thì các bit được kiểm tra ở hàng đó có bị sai
                % Nếu check node j bị lỗi → ảnh hưởng tới bit i
                if syndrome(j) == 1
                    E(j,i) = 1;
                end
            end
        end
    end

    E = E()
    % Tìm vị trí có nhiều lỗi nhất
    for i=1:6
        M(i)=sum(E(:,i));
    end

    [M,index] = max(M) % xuất ra giá trị và vị trí bị nhiều lỗi nhất

    % Sửa lỗi (flip bit có nhiều "phiếu lỗi" nhất)
    if M~=0
        %nếu ban đầu bit 0 hoặc chẵn, ví dụ 0+1 là 1 thì chia 2 dư 1, thì 0->1
        %nếu ban đầu bit 1 hoặc lẻ, ví dụ 1+1 là 2 thì chia 2 dư 0, thì 1-> 0
        y(index) = mod(y(index) + 1, 2);
    end

    % Kiểm tra sau khi đảo bit
    areErrorsPresent = check_errors(H, y);

    if areErrorsPresent == 0 % Không lỗi
        success = 1;
        disp("No error");
        break;
    else                     % Có lỗi
        disp("Still errors");
    end

    iter=iter+1;
end

disp("Decoded result:");
disp(y);