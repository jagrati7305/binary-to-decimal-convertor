
int decimalTobinary(String decimal){
  int ans = 0;
  int pow = 1;
  int decNum = int.parse(decimal);
  while(decNum>0){
    int rem = decNum%2;
    ans = ans + (rem*pow);
    decNum ~/=2;
    pow = pow*10;
  }
  return ans;
}