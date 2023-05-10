import numpy as np 

def conv(dat,kernel,dat_h,kernel_h):
    '''
    Hint
    ----------
    1.捲積輸出圖片公式 : input size is(i,i),filter size is(k,k),stride size is(s,s),padding size is(p,p)
                        then convolution output size is (o,o) -> o = (i-k+2p)/s+1
    2.只適用於stride=1,padding=0之情形
    ----------
    
    Parameters
    ----------
    dat : numpy array type
        input array
    kernel : numpy array type
        weight filter
    dat_h : input array high 
        dat_h = dat_w,不滿足此條件無法計算
    kernel_h : kernel high
        kernel_h = kernel_w,不滿足此條件無法計算
    Returns
    -------
    
    result : numpy array type
        return convolution result
    '''
    OutputSize=(dat_h-kernel_h)/1+1 #python除法出來是小數型態,ex:1.0
    if OutputSize.is_integer() : pass #is_integer() -> 可判斷1.0是整數;1.1是小數
    else : return print('dim is float')
    result = np.zeros([int(OutputSize), int(OutputSize)])
    for i in range(int(OutputSize)):
        for j in range(int(OutputSize)):
            temp = dat[i:i+kernel_h , j:j+kernel_h]
            temp = np.multiply(temp,kernel) #點乘 ; np.dot才為矩陣相乘
            result[i][j] = temp.sum()
    return result
    
if __name__ == '__main__':
    dat = [[2,1,2],
           [1,2,1],
           [2,1,1]]
    
    np.savetxt('pattern.dat' , dat , delimiter='\n' , fmt = '%x')
    
    kernel = [[1,1],
              [1,1]]
    
    np.savetxt('kernel.dat' , kernel , delimiter='\n' , fmt = '%x')
    
    golden = [[6,6],
              [6,5]] 
    
    dat_h = np.array(dat).shape[0]
    dat_w = np.array(dat).shape[1]
    kernel_h = np.array(kernel).shape[0]

    ans = conv(np.array(dat), np.array(kernel), dat_h, kernel_h)
    
    ans = ans.astype(int) #convert float type array to int array
    #print(ans)
            
    np.savetxt('golden.dat' , ans , delimiter='\n' , fmt = '%x')
    
    

    
    
    
    
    
        
    
        