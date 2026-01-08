
int binaryTodecimal(String binary){
  int ans = 0;
  int pow = 1;
  int binNum = int.parse(binary);
  while(binNum>0){
    int rem = binNum%10;
    ans = ans + (rem*pow);
    binNum ~/=10;
    pow = pow*2;
  }
  return ans;
}