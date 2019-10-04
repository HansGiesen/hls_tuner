int fp_conv_tb();
int bin_conv_tb();
int bin_dense_tb();

int main()
{
/*  if (fp_conv_tb())
    return 1;
  if (bin_dense_tb())
    return 1; */
  if (bin_conv_tb())
    return 1;
  return 0;
}
