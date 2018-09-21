//This is a generated CUDA code
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

//f_alu = 1
//f_mad =8
//f_sfu =6
//d_alu =8
//d_mad =6
//b_alu =5
__constant__ float kconst[115] = {
2640.27049419,496.788317279,755.85277182,4070.19741521,6510.34703498,2039.14289025,3704.61925152,7755.66914948,
1861.26002473,1253.44798987,2629.46951817,7940.16158665,7767.42297282,5605.65608719,5373.03014677,3891.71871656,
366.965906878,8379.0600811,3930.37788456,8751.34651216,6043.60764794,9682.30745623,6178.41261724,4564.3931025,
374.255925925,4577.84509961,1671.08086172,9345.83987891,2901.2040663,4154.98833481,8208.38540292,4352.1328191,
9573.36924331,3580.73886635,269.083439352,352.007680208,5305.30563288,3596.20743502,438.919179395,9456.31492571,
8206.88128285,7265.8087816,8790.45564504,2464.18248902,4064.78800258,6832.31591731,9795.16429237,5786.85994295,
2010.51460232,4034.59881526,6585.45210739,8957.74158847,6403.29279037,3070.06110398,6175.24851691,1461.27925187,
3336.50691137,6910.80070577,9967.11557409,3549.38634683,2606.03554605,1575.68922804,4906.98800552,679.32387231,
5310.51577039,6347.74789192,4980.14693502,7079.55612995,2304.94310865,253.435257548,6597.60226307,9160.92905888,
2656.51142121,1532.34098062,9800.24073027,4697.5946278,4549.56735803,895.369414414,81.2862597505,954.653076872,
9802.40869968,3068.94073212,4343.28386194,4288.43198471,9454.29190141,687.820715136,8555.10227894,1020.62527779,
8887.51891817,1622.30149751,5517.20514654,2660.16395818,9482.94902673,8842.14459278,3834.4145655,700.939818034,
8816.58299456,4351.4402913,3601.03531056,2832.71861204,5178.80878256,3393.39850047,3436.36898163,2336.76169531,
3094.84512625,9409.78159435,1337.62467857,5439.82313727,7485.84090711,3687.98225492,3607.41760755,4976.65341527,
7191.02440951,4980.12665621,3064.46805377
};


//this is an unused kernel
__global__ void kk(float * d)
{
	d[0]=kconst[0];}


__global__ void kernel(float*,float*,float*,int*,int*,int *,int,float *,int *);
float uniform(float start,float end)
{
	return start+(end-start)*rand()/RAND_MAX;
}

int main(int argc, char* argv[])
{
	int gridx = 179;
	int gridy = 1;
	int gridz = 1;
	int bx = 115;
	int by = 1;
	int bz = 1;

	dim3 gridDim(gridx,gridy,gridz);
	dim3 blockDim(bx,by,bz);

	//srand( (unsigned)time( NULL ) );
	srand(4);
	//declare variables
	int N=64,size=0,loop=0,globalN=1024*1024*128,globalspace;

	//initialize the variables
	N=gridx*gridy*gridz*bx*by*bz;
	loop=16;

	N=gridx*gridy*gridz*bx*by*bz*17;
	size=(N)*sizeof(float);
	globalspace=(globalN)*sizeof(float);
	//declare the float pointer variables
	float * f0,*fd0,*f1,*fd1,*f2,*fd2,*gf,*gf0;
	//parameter f0
	f0=(float*)malloc(size);
	memset(f0,0,size);
	cudaMalloc((void**)&fd0,size);
	for(int i=0;i<N;i++)
	f0[i]=uniform(1,10000);
	cudaMemcpy(fd0,f0,size,cudaMemcpyHostToDevice);

	//parameter f1
	f1=(float*)malloc(size);
	memset(f1,0,size);
	cudaMalloc((void**)&fd1,size);
	for(int i=0;i<N;i++)
	f1[i]=uniform(1,10000);
	cudaMemcpy(fd1,f1,size,cudaMemcpyHostToDevice);

	//parameter f2
	f2=(float*)malloc(size);
	memset(f2,0,size);
	cudaMalloc((void**)&fd2,size);
	for(int i=0;i<N;i++)
	f2[i]=uniform(1,10000);
	cudaMemcpy(fd2,f2,size,cudaMemcpyHostToDevice);

	//global memory declare(float)
	gf=(float*)malloc(globalspace);
	memset(gf,0,globalspace);
	cudaMalloc((void**)&gf0,globalspace);
	for(int i=0;i<globalN;i++)
		gf[i]=uniform(1,10000);
	cudaMemcpy(gf0,gf,globalspace,cudaMemcpyHostToDevice);

	//declare the int pointer variables
	int * d0,*dd0,*d1,*dd1,*d2,*dd2,*gd,*gd0;
	size=(N)*sizeof(int);

	globalspace=(globalN)*sizeof(int);
	//parameter d0
	d0=(int*)malloc(size);
	memset(d0,0,size);
	cudaMalloc((void**)&dd0,size);
	for(int i=0;i<N;i++)
	d0[i]=uniform(1,10000);
	cudaMemcpy(dd0,d0,size,cudaMemcpyHostToDevice);

	//parameter d1
	d1=(int*)malloc(size);
	memset(d1,0,size);
	cudaMalloc((void**)&dd1,size);
	for(int i=0;i<N;i++)
	d1[i]=uniform(1,10000);
	cudaMemcpy(dd1,d1,size,cudaMemcpyHostToDevice);

	//parameter d2
	d2=(int*)malloc(size);
	memset(d2,0,size);
	cudaMalloc((void**)&dd2,size);
	for(int i=0;i<N;i++)
	d2[i]=uniform(1,10000);
	cudaMemcpy(dd2,d2,size,cudaMemcpyHostToDevice);

	//global memory declare(int)
	gd=(int*)malloc(globalspace);
	memset(gd,0,globalspace);
	cudaMalloc((void**)&gd0,globalspace);
	for(int i=0;i<globalN;i++)
		gd[i]=uniform(1,10000);
	cudaMemcpy(gd0,gd,globalspace,cudaMemcpyHostToDevice);

	kernel<<<gridx*gridy,bx*by*bz>>>(fd0,fd1,fd2,dd0,dd1,dd2,loop,gf0,gd0);

	cudaMemcpy(d2,dd2, size, cudaMemcpyDeviceToHost);
	/*for(int i=0;i<N;i++)
		printf("%d	",d2[i]);
	printf("\n");*/
	cudaMemcpy(f2,fd2, size, cudaMemcpyDeviceToHost);
	/*for(int i=0;i<N;i++)
		printf("%f	",f2[i]);
	printf("\n");*/
}

__global__ void kernel(float* f0,float* f1,float* f2,int *d0,int *d1,int *d2,int loop,float* gf,int* gd)
{
	//declear the regs
	asm volatile(".reg .u32	%rt<4>;\n\
	.reg .u32 %rnt<4>;\n\
	.reg .u32 %rc<4>;\n\
	.reg .u32 %rnc<4>;\n\
	.reg .u32 %rg<14>;\n\
	.reg .u32 %rgtid;\n\
	.reg .u32 %rbtid;");
	//compute global threadID
	asm volatile("mov.u32	%rt1,%tid.x;\n\
	mov.u32	%rt2,%tid.y;\n\
	mov.u32	%rt3,%tid.z;\n\
	mov.u32	%rnt1,%ntid.x;\n\
	mov.u32	%rnt2,%ntid.y;\n\
	mov.u32	%rnt3,%ntid.z;\n\
	mov.u32	%rc1,%ctaid.x;\n\
	mov.u32	%rc2,%ctaid.y;\n\
	mov.u32	%rc3,%ctaid.z;\n\
	mov.u32	%rnc1,%nctaid.x;\n\
	mov.u32	%rnc2,%nctaid.y;\n\
	mov.u32	%rnc3,%nctaid.z;");	//compute threadID in a block
	asm volatile("mul.lo.u32	%rg1,%rnt1,%rnt2;\n\
	mul.lo.u32	%rg2,%rg1,%rt3;\n\
	mul.lo.u32	%rg3,%rt2,%rnt1;\n\
	add.u32	%rg4,%rt1,%rg3;\n\
	add.u32	%rg5,%rg4,%rg2;\n\
	mov.u32 %rbtid,%rg5;");
	//compute blockid in a grid
	asm volatile("mul.lo.u32	%rg6,%rnc1,%rnc2;\n\
	mul.lo.u32	%rg7,%rg6,%rc3;\n\
	mul.lo.u32	%rg8,%rc2,%rnc1;\n\
	add.u32	%rg9,%rc1,%rg8;\n\
	add.u32	%rg10,%rg9,%rg7;");
	//compute blocksize
	asm volatile("mul.lo.u32	%rg11,%rnt1,%rnt2;\n\
	mul.lo.u32	%rg12,%rg11,%rnt3;\n\
	mul.lo.u32	%rg13,%rg10,%rg12;\n\
	add.u32	%rgtid,%rg13,%rbtid;");
	asm volatile(".reg .u64	%rdf<3>;\n\
	.reg .u64	%rpf<3>;\n\
	.reg .u64	%rdd<3>;\n\
	.reg .u64	%rpd<3>;\n\
	.reg .pred	%p_<10>;\n\
	.reg .f32	%f_<3>;\n\
	.reg .s32	%d_<3>;\n\
	.reg .u64	%offset;\n\
	.reg .u64	%g_distance;\n\
	.reg .u32	%loop;\n\
	.reg .u32	%pass;\n\
	.reg .u64	%distance;\n\
	.reg .u64	%distance_mem;\n\
	.reg .u64	%gfp;\n\
	.reg .u64	%gdp;\n\
	.reg .u32	%counter;");
	asm volatile(".reg .u32	%rd<15>;\n\
	.reg .f32	%rf<16>;\n\
	.reg .f32	%rgf<32>;\n\
	.reg .u32	%rgd<32>;\n\
	.reg .b32	%rb<5>;\n\
	.reg .f64    %rdouble<8>;\n\
	.reg .f64	%rmadf<3>;\n\
	.reg .s32	%ropd3;\n\
	.reg .b32	%ropb<2>;\n\
	mov .b32	%ropb0,652;\n\
	mov .b32	%ropb1,256;\n\
	mov .u64	%distance,20585;\n\
	mov .u64	%distance_mem,262144;\n\
	mov .u64	%g_distance,65536;\n\
	mov .s32	%ropd3,5786;\n\
	mov .f64	%rmadf1,19.5923428225;\n\
	mov .f64     %rmadf2,23.9162632576;\n\
	mov .f64     %rmadf0,86.2923868728;");

	asm volatile(".reg .u64    %c_base;\n\
	.reg .u64    %c_offset;\n\
	.reg .u64    %c_mem;\n\
	mov.u64  %c_base,kconst;\n\
	mul.wide.u32   %c_offset,%rbtid,4;\n\
	add.u64  %c_mem,%c_base,%c_offset;");

	//get the loop number
	asm volatile("ld.param.u32   %loop, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_6];");//loop

	asm volatile("mul.wide.u32	%offset,%rgtid,4;");//get the address offset
//d0 data

	asm volatile("ld.param.u64	%rpd0, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_0];\n\
	add.u64	%rdd0,%rpd0,%offset;");
//d1 data

	asm volatile("ld.param.u64	%rpd1, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_1];\n\
	add.u64	%rdd1,%rpd1,%offset;");
//d2 data

	asm volatile("ld.param.u64	%rpd2, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_2];\n\
	add.u64	%rdd2,%rpd2,%offset;");
//f0 data

	asm volatile("ld.param.u64	%rpf0, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_3];\n\
	add.u64	%rdf0,%rpf0,%offset;");
//f1 data

	asm volatile("ld.param.u64	%rpf1, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_4];\n\
	add.u64	%rdf1,%rpf1,%offset;");
//f2 data

	asm volatile("ld.param.u64	%rpf2, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_5];\n\
	add.u64	%rdf2,%rpf2,%offset;");

	asm volatile("ld.param.u64	%gfp, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_7];\n\
	add.u64	%gfp,%gfp,%offset;");

	asm volatile("ld.param.u64	%gdp, [_Z6kernelPfS_S_PiS0_S0_iS_S0__param_8];\n\
	add.u64	%gdp,%gdp,%offset;");
	
//load the values of parameters
	asm volatile("ld.global.s32	%d_0,[%rdd0+0];");
	asm volatile("ld.global.s32	%d_1,[%rdd1+0];");
	asm volatile("ld.global.f32	%f_0,[%rdf0+0];");
	asm volatile("ld.global.f32	%f_1,[%rdf1+0];");


	asm volatile("mul.wide.u32	%distance,20585,4;\n\
	add.u64	%rdd0,%rdd0,%distance;\n\
	add.u64	%rdd1,%rdd1,%distance;\n\
	add.u64	%rdf0,%rdf0,%distance;\n\
	add.u64	%rdf1,%rdf1,%distance;");
	asm volatile("mov.u32	%counter,0;");
	asm volatile("$BB_LABEL0:");
	// instruction mix
	asm volatile("mov.u32 %pass,0;\n\
	fma.rn.f64	%rdouble0, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf0,%rdouble0;\n\
	lg2.approx.f32	%rf1, %f_1;\n\
	mad.lo.s32	%rd0, %d_0, %d_1, %ropd3;\n\
	mad.rn.f64	%rdouble1, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf2,%rdouble1;\n\
	lg2.approx.f32	%rf3, %f_0;\n\
	sqrt.rn.f32	%rf4, %f_1;\n\
	st.global.f32  [%gfp+0],%rgf19;\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	mul.f32	%rf5, %rf0, %rf1;\n\
	ld.const.f32	%rf0, [%c_mem+0];\n\
	cvt.f64.f32     %rmadf0, %rf0;\n\
	cvt.f64.f32     %rmadf1, %rf1;\n\
	cvt.f64.f32     %rmadf2, %rf2;\n\
	fma.rn.f64	%rdouble2, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf6,%rdouble2;\n\
	ld.const.f32	%rf3, [%c_mem+0];\n\
	xor.b32	%rb0, %ropb0, %ropb1;\n\
	ld.global.f32	%rgf11, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	ld.global.f32	%rgf17, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	mad.lo.s32	%rd1, %d_0, %d_1, %ropd3;\n\
	mad.lo.s32	%rd2, %d_0, %d_1, %ropd3;\n\
	ld.global.f32	%rgf8, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	cvt.f64.f32     %rmadf0, %rf1;\n\
	cvt.f64.f32     %rmadf1, %rf2;\n\
	cvt.f64.f32     %rmadf2, %rf3;\n\
	mad.rn.f64	%rdouble3, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf7,%rdouble3;\n\
	mul.lo.s32	%rd3, %d_0, %d_1;\n\
	ld.const.f32	%rf1, [%c_mem+0];\n\
	neg.s32	%rd4, %d_0;\n\
	not.b32	%rb1, %ropb0;\n\
	cvt.f64.f32     %rmadf0, %rf2;\n\
	cvt.f64.f32     %rmadf1, %rf3;\n\
	cvt.f64.f32     %rmadf2, %rf4;\n\
	fma.rn.f64	%rdouble4, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf8,%rdouble4;\n\
	mad.lo.s32	%rd5, %rd0, %rd1, %rd2;\n\
	ld.global.f32	%rgf2, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	cvt.f64.f32     %rmadf0, %rf3;\n\
	cvt.f64.f32     %rmadf1, %rf4;\n\
	cvt.f64.f32     %rmadf2, %rf5;\n\
	mad.rn.f64	%rdouble5, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf9,%rdouble5;\n\
	and.b32	%rb2, %ropb0, %ropb1;\n\
	cvt.f64.f32     %rmadf0, %rf4;\n\
	cvt.f64.f32     %rmadf1, %rf5;\n\
	cvt.f64.f32     %rmadf2, %rf6;\n\
	mad.rn.f64	%rdouble6, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf10,%rdouble6;\n\
	lg2.approx.f32	%rf11, %rf6;\n\
	cos.approx.f32	%rf12, %rf7;\n\
	rem.s32	%rd6, %rd1, %d_0;\n\
	rem.s32	%rd7, %rd2, %d_0;\n\
	mad.lo.s32	%rd8, %rd3, %rd4, %rd5;\n\
	cvt.f64.f32     %rmadf0, %rf7;\n\
	cvt.f64.f32     %rmadf1, %rf8;\n\
	cvt.f64.f32     %rmadf2, %rf9;\n\
	fma.rn.f64	%rdouble7, %rmadf0, %rmadf1, %rmadf2;\n\
	cvt.rn.f32.f64     %rf13,%rdouble7;\n\
	xor.b32	%rb3, %ropb0, %ropb1;\n\
	ex2.approx.f32	%rf14, %rf9;\n\
	ld.global.f32	%rgf31, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	ld.global.f32	%rgf25, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	shl.b32	%rb4, %ropb0, %ropb1;\n\
	max.s32	%rd9, %rd4, %rd5;\n\
	sad.s32	%rd10, %rd5, %rd6, %rd7;\n\
	ld.global.f32	%rgf20, [%gfp+0];\n\
	add.u64 %gfp,%gfp,%g_distance;\n\
	div.s32	%rd11, %rd6, %d_0;\n\
	mad.lo.s32	%rd12, %rd7, %rd8, %rd9;\n\
	min.s32	%rd13, %rd8, %rd9;\n\
	");
	asm volatile("add.u32	%counter,%counter,1;\n\
	setp.ge.u32	 %p_0, %counter, %loop;\n\
	@!%p_0	bra	$BB_LABEL0;");

	asm volatile("st.global.f32 [%rdf2+0],%rf15;\n\
	st.global.s32 [%rdd2+0],%rd14;");
	asm volatile("add.u64	%rdf2,%rdf2,%distance;\n\
	add.u64	%rdd2,%rdd2,%distance;");

	//end basic block;
	asm volatile("$BB_LABEL1:");
	asm volatile("exit;");
}
