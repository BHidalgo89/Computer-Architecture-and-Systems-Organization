#include<fstream>
#include<iostream>
#include<iomanip>
#include<string>

using namespace std;

/*********************************************************************
Programmer: Branden Hidalgo
Assignment: 1
Course:     CSCI 463
Instructor: J.Winans

**********************************************************************/

/**********************************************************************
Function:  string fullAdder(string a, string b, string &f)
Arguments: Takes two strings and a string reference
Returns:   Returns a string
Purpose:   Adds two binary numbers. Determines if overflow has occured
Notes:     N/A
**********************************************************************/
string fullAdder(string a, string b, string &f)
{
 f = "   ";
 char co = '0';
 string s;
 for(int i = a.length()-1; i >= 0; --i)
 {
  if(co == '0')
   {
    if(a[i] == '0' && b[i] == '0')
    {
     s[i] = '0';
     co = '0';
    }
    if(a[i] == '1' && b[i] == '0')
    {
     s[i] = '1';
     co = '0';
    }
    if(a[i] == '0' && b[i] == '1')
    {
     s[i] = '1';
     co = '0';
    }
    if(a[i] == '1' && b[i] == '1')
    {
     s[i] = '1';
     co = '1';
     if(i==0)
     {
      f[0]='S';
      f[1]='U';
     }
    }
   }

  if(co == '1')
   {
    if(a[i] == '0' && b[i] == '0')
    {
     s[i] = '1';
     co = '0';
     if(i==0)
     {
      f[0]='S';
     }
    }
    if(a[i] == '1' && b[i] == '0')
    {
     s[i] = '0';
     co = '1';
     if(i==0)
     {
      f[0]='U';
     }
    }
    if(a[i] == '0' && b[i] == '1')
    {
     s[i] = '0';
     co = '1';
     if(i==0)
     {
      f[0]='U';
     }
    }
    if(a[i] == '1' && b[i] == '1')
    {
     s[i] = '1';
     co = '1';
     if(i==0)
     {
      f[0]='U';
     }
    }
   }
 }
return s;
}

/**************************************************************************************
Function:  string fullSub(string a, string b, string &f)
Arguments: Takes two strings and a string reference
Returns:   Returns a string
Purpose:   Adds a binary number with a two's complement of a binary number (subtracts)
           Determines if overflow occurred.
Notes:     N/A
**************************************************************************************/
string fullSub(string a, string b, string &f)
{
 f = "   ";
 char co = '1';
 string s;
  for(int i = b.length()-1; i>=0; --i)
  {
   if(b[i] == '0')
     b[i] = '1';
   else
     b[i] = '0';
  }
  for(int i = a.length()-1; i>=0; --i)
  {
   if(co == '0')
   {
    if(a[i] == '0' && b[i] == '0')
    {
     s[i] = '0';
     co = '0';
    }
    if(a[i] == '1' && b[i] == '0')
    {
     s[i] = '1';
     co = '0';
    }
    if(a[i] == '0' && b[i] == '1')
    {
     s[i] = '1';
     co = '0';
    }
    if(a[i] == '1' && b[i] == '1')
    {
     s[i] = '1';
     co = '1';
     if(i==0)
     {
      f[0] = 'S';
      f[1] = 'U';
     }
    }
   }

   if(co == '1')
   {
    if(a[i] == '0' && b[i] == '0')
    {
     s[i] = '1';
     co = '0';
     if(i==0)
     {
      f[0]='S';
     }
    }
    if(a[i] == '1' && b[i] == '0')
    {
     s[i] = '0';
     co = 1;
     if(i==0)
     {
      f[0]='U';
     }
    }
    if(a[i] == '0' && b[i] == '1')
    {
     s[i] = '0';
     co = '1';
     if(i==0)
     {
      f[0]='U';
     }
    }
    if(a[i] == '1' && b[i] == '1')
    {
     s[i] = '1';
     co = '1';
     if(i==0)
     {
      f[0]='U';
     }
    }
   }
  }
 return s;
}

/**********************************************************************
Function:  void zero(string a, string &f)
Arguments: Takes a string and a string reference
Returns:   N/A
Purpose:   Determines if a string contains any non-zero digits
Notes:     N/A
**********************************************************************/
void zero(string a, string &f)
{
 for(int i = a.length()-1; i>=0; --i)
 {
  if(a[i]=='1')
   return;
 }
 f[2] = 'Z';
}

/****************************************************************************
Function:  string parity(string a)
Arguments: Takes a string
Returns:   Returns a string
Purpose:   Determines if the number of 1's in a binary number is odd or even
Notes:     N/A
*****************************************************************************/
string parity(string a)
{
 string e = "even";
 string o = "odd ";
 int counter = 0;
 for(int i = a.length()-1; i >=0; --i)
  {
   if(a[i]=='1')
    counter++;
  }
 if(counter%2 == 0)
  return e;
 else
  return o;
}



int main()
{
string v1, v2;
string sum, diff, flags;
while(cin >> v1 && cin >> v2)
{
  sum = fullAdder(v1, v2, flags);
  zero(sum, flags);
  diff = fullSub(v1,v2, flags);
  zero(diff, flags);

  cout << "v1" << "    " << parity(v1) << "         " << v1 << endl;
  cout << "v2" << "    " << parity(v2) << "         " << v2 << endl;
  cout << "sum" << "   " << parity(sum) << "  " << flags << "   " << sum << endl;
  cout << "diff" << "  " << parity(diff) << "  " << flags << "   " << diff << endl << endl;
}
return 0;
}

