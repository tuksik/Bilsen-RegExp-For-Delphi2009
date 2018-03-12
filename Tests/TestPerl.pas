unit TestPerl;

interface

uses
  TestFramework,
  RegexTrial,
  RegularExpressions;

type
  TTestPerl = class(TRegexTrial)
  published
    procedure Trial0000;
    procedure Trial0001;
    procedure Trial0002;
    procedure Trial0003;
    procedure Trial0004;
    procedure Trial0005;
    procedure Trial0006;
    procedure Trial0007;
    procedure Trial0008;
    procedure Trial0009;
    procedure Trial0010;
    procedure Trial0011;
    procedure Trial0012;
    procedure Trial0013;
    procedure Trial0014;
    procedure Trial0015;
    procedure Trial0016;
    procedure Trial0017;
    procedure Trial0018;
    procedure Trial0019;
    procedure Trial0020;
    procedure Trial0021;
    procedure Trial0022;
    procedure Trial0023;
    procedure Trial0024;
    procedure Trial0025;
    procedure Trial0026;
    procedure Trial0027;
    procedure Trial0028;
    procedure Trial0029;
    procedure Trial0030;
    procedure Trial0031;
    procedure Trial0032;
    procedure Trial0033;
    procedure Trial0034;
    procedure Trial0035;
    procedure Trial0036;
    procedure Trial0037;
    procedure Trial0038;
    procedure Trial0039;
    procedure Trial0040;
    procedure Trial0041;
    procedure Trial0042;
    procedure Trial0043;
    procedure Trial0044;
    procedure Trial0045;
    procedure Trial0046;
    procedure Trial0047;
    procedure Trial0048;
    procedure Trial0049;
    procedure Trial0050;
    procedure Trial0051;
    procedure Trial0052;
    procedure Trial0053;
    procedure Trial0054;
    procedure Trial0055;
    procedure Trial0056;
    procedure Trial0057;
    procedure Trial0058;
    procedure Trial0059;
    procedure Trial0060;
    procedure Trial0061;
    procedure Trial0062;
    procedure Trial0063;
    procedure Trial0064;
    procedure Trial0065;
    procedure Trial0066;
    procedure Trial0067;
    procedure Trial0068;
    procedure Trial0069;
    procedure Trial0070;
    procedure Trial0071;
    procedure Trial0072;
    procedure Trial0073;
    procedure Trial0074;
    procedure Trial0075;
    procedure Trial0076;
    procedure Trial0077;
    procedure Trial0078;
    procedure Trial0079;
    procedure Trial0080;
    procedure Trial0081;
    procedure Trial0082;
    procedure Trial0083;
    procedure Trial0084;
    procedure Trial0085;
    procedure Trial0086;
    procedure Trial0087;
    procedure Trial0088;
    procedure Trial0089;
    procedure Trial0090;
    procedure Trial0091;
    procedure Trial0092;
    procedure Trial0093;
    procedure Trial0094;
    procedure Trial0095;
    procedure Trial0096;
    procedure Trial0097;
    procedure Trial0098;
    procedure Trial0099;
    procedure Trial0100;
    procedure Trial0101;
    procedure Trial0102;
    procedure Trial0103;
    procedure Trial0104;
    procedure Trial0105;
    procedure Trial0106;
    procedure Trial0107;
    procedure Trial0108;
    procedure Trial0109;
    procedure Trial0110;
    procedure Trial0111;
    procedure Trial0112;
    procedure Trial0113;
    procedure Trial0114;
    procedure Trial0115;
    procedure Trial0116;
    procedure Trial0117;
    procedure Trial0118;
    procedure Trial0119;
    procedure Trial0120;
    procedure Trial0121;
    procedure Trial0122;
    procedure Trial0123;
    procedure Trial0124;
    procedure Trial0125;
    procedure Trial0126;
    procedure Trial0127;
    procedure Trial0128;
    procedure Trial0129;
    procedure Trial0130;
    procedure Trial0131;
    procedure Trial0132;
    procedure Trial0133;
    procedure Trial0134;
    procedure Trial0135;
    procedure Trial0136;
    procedure Trial0137;
    procedure Trial0138;
    procedure Trial0139;
    procedure Trial0140;
    procedure Trial0141;
    procedure Trial0142;
    procedure Trial0143;
    procedure Trial0144;
    procedure Trial0145;
    procedure Trial0146;
    procedure Trial0147;
    procedure Trial0148;
    procedure Trial0149;
    procedure Trial0150;
    procedure Trial0151;
    procedure Trial0152;
    procedure Trial0153;
    procedure Trial0154;
    procedure Trial0155;
    procedure Trial0156;
    procedure Trial0157;
    procedure Trial0158;
    procedure Trial0159;
    procedure Trial0160;
    procedure Trial0161;
    procedure Trial0162;
    procedure Trial0163;
    procedure Trial0164;
    procedure Trial0165;
    procedure Trial0166;
    procedure Trial0167;
    procedure Trial0168;
    procedure Trial0169;
    procedure Trial0170;
    procedure Trial0171;
    procedure Trial0172;
    procedure Trial0173;
    procedure Trial0174;
    procedure Trial0175;
    procedure Trial0176;
    procedure Trial0177;
    procedure Trial0178;
    procedure Trial0179;
    procedure Trial0180;
    procedure Trial0181;
    procedure Trial0182;
    procedure Trial0183;
    procedure Trial0184;
    procedure Trial0185;
    procedure Trial0186;
    procedure Trial0187;
    procedure Trial0188;
    procedure Trial0189;
    procedure Trial0190;
    procedure Trial0191;
    procedure Trial0192;
    procedure Trial0193;
    procedure Trial0194;
    procedure Trial0195;
    procedure Trial0196;
    procedure Trial0197;
    procedure Trial0198;
    procedure Trial0199;
    procedure Trial0200;
    procedure Trial0201;
    procedure Trial0202;
    procedure Trial0203;
    procedure Trial0204;
    procedure Trial0205;
    procedure Trial0206;
    procedure Trial0207;
    procedure Trial0208;
    procedure Trial0209;
    procedure Trial0210;
    procedure Trial0211;
    procedure Trial0212;
    procedure Trial0213;
    procedure Trial0214;
    procedure Trial0215;
    procedure Trial0216;
    procedure Trial0217;
    procedure Trial0218;
    procedure Trial0219;
    procedure Trial0220;
    procedure Trial0221;
    procedure Trial0222;
    procedure Trial0223;
    procedure Trial0224;
    procedure Trial0225;
    procedure Trial0226;
    procedure Trial0227;
    procedure Trial0228;
    procedure Trial0229;
    procedure Trial0230;
    procedure Trial0231;
    procedure Trial0232;
    procedure Trial0233;
    procedure Trial0234;
    procedure Trial0235;
    procedure Trial0236;
    procedure Trial0237;
    procedure Trial0238;
    procedure Trial0239;
    procedure Trial0240;
    procedure Trial0241;
    procedure Trial0242;
    procedure Trial0243;
    procedure Trial0244;
    procedure Trial0245;
    procedure Trial0246;
    procedure Trial0247;
    procedure Trial0248;
    procedure Trial0249;
    procedure Trial0250;
    procedure Trial0251;
    procedure Trial0252;
    procedure Trial0253;
    procedure Trial0254;
    procedure Trial0255;
    procedure Trial0256;
    procedure Trial0257;
    procedure Trial0258;
    procedure Trial0259;
    procedure Trial0260;
    procedure Trial0261;
    procedure Trial0262;
    procedure Trial0263;
    procedure Trial0264;
    procedure Trial0265;
    procedure Trial0266;
    procedure Trial0267;
    procedure Trial0268;
    procedure Trial0269;
    procedure Trial0270;
    procedure Trial0271;
    procedure Trial0272;
    procedure Trial0273;
    procedure Trial0274;
    procedure Trial0275;
    procedure Trial0276;
    procedure Trial0277;
    procedure Trial0278;
    procedure Trial0279;
    procedure Trial0280;
    procedure Trial0281;
    procedure Trial0282;
    procedure Trial0283;
    procedure Trial0284;
    procedure Trial0285;
    procedure Trial0286;
    procedure Trial0287;
    procedure Trial0288;
    procedure Trial0289;
    procedure Trial0290;
    procedure Trial0291;
    procedure Trial0292;
    procedure Trial0293;
    procedure Trial0294;
    procedure Trial0295;
    procedure Trial0296;
    procedure Trial0297;
    procedure Trial0298;
    procedure Trial0299;
    procedure Trial0300;
    procedure Trial0301;
    procedure Trial0302;
    procedure Trial0303;
    procedure Trial0304;
    procedure Trial0305;
    procedure Trial0306;
    procedure Trial0307;
    procedure Trial0308;
    procedure Trial0309;
    procedure Trial0310;
    procedure Trial0311;
    procedure Trial0312;
    procedure Trial0313;
    procedure Trial0314;
    procedure Trial0315;
    procedure Trial0316;
    procedure Trial0317;
    procedure Trial0318;
    procedure Trial0319;
    procedure Trial0320;
    procedure Trial0321;
    procedure Trial0322;
    procedure Trial0323;
    procedure Trial0324;
    procedure Trial0325;
    procedure Trial0326;
    procedure Trial0327;
    procedure Trial0328;
    procedure Trial0329;
    procedure Trial0330;
    procedure Trial0331;
    procedure Trial0332;
    procedure Trial0333;
    procedure Trial0334;
    procedure Trial0335;
    procedure Trial0336;
    procedure Trial0337;
    procedure Trial0338;
    procedure Trial0339;
    procedure Trial0340;
    procedure Trial0341;
    procedure Trial0342;
    procedure Trial0343;
    procedure Trial0344;
    procedure Trial0345;
    procedure Trial0346;
    procedure Trial0347;
    procedure Trial0348;
    procedure Trial0349;
    procedure Trial0350;
    procedure Trial0351;
    procedure Trial0352;
    procedure Trial0353;
    procedure Trial0354;
    procedure Trial0355;
    procedure Trial0356;
    procedure Trial0357;
    procedure Trial0358;
    procedure Trial0359;
    procedure Trial0360;
    procedure Trial0361;
    procedure Trial0362;
    procedure Trial0363;
    procedure Trial0364;
    procedure Trial0365;
    procedure Trial0366;
    procedure Trial0367;
    procedure Trial0368;
    procedure Trial0369;
    procedure Trial0370;
    procedure Trial0371;
    procedure Trial0372;
    procedure Trial0373;
    procedure Trial0374;
    procedure Trial0375;
    procedure Trial0376;
    procedure Trial0377;
    procedure Trial0378;
    procedure Trial0379;
    procedure Trial0380;
    procedure Trial0381;
    procedure Trial0382;
    procedure Trial0383;
    procedure Trial0384;
    procedure Trial0385;
    procedure Trial0386;
    procedure Trial0387;
    procedure Trial0388;
    procedure Trial0389;
    procedure Trial0390;
    procedure Trial0391;
    procedure Trial0392;
    procedure Trial0393;
    procedure Trial0394;
    procedure Trial0395;
    procedure Trial0396;
    procedure Trial0397;
    procedure Trial0398;
    procedure Trial0399;
    procedure Trial0400;
    procedure Trial0401;
    procedure Trial0402;
    procedure Trial0403;
    procedure Trial0404;
    procedure Trial0405;
    procedure Trial0406;
    procedure Trial0407;
    procedure Trial0408;
    procedure Trial0409;
    procedure Trial0410;
    procedure Trial0411;
    procedure Trial0412;
    procedure Trial0413;
    procedure Trial0414;
    procedure Trial0415;
    procedure Trial0416;
    procedure Trial0417;
    procedure Trial0418;
    procedure Trial0419;
    procedure Trial0420;
    procedure Trial0421;
    procedure Trial0422;
    procedure Trial0423;
    procedure Trial0424;
    procedure Trial0425;
    procedure Trial0426;
    procedure Trial0427;
    procedure Trial0428;
    procedure Trial0429;
    procedure Trial0430;
    procedure Trial0431;
    procedure Trial0432;
    procedure Trial0433;
    procedure Trial0434;
    procedure Trial0435;
    procedure Trial0436;
    procedure Trial0437;
    procedure Trial0438;
    procedure Trial0439;
    procedure Trial0440;
    procedure Trial0441;
    procedure Trial0442;
    procedure Trial0443;
    procedure Trial0444;
    procedure Trial0445;
    procedure Trial0446;
    procedure Trial0447;
    procedure Trial0448;
    procedure Trial0449;
    procedure Trial0450;
    procedure Trial0451;
    procedure Trial0452;
    procedure Trial0453;
    procedure Trial0454;
    procedure Trial0455;
    procedure Trial0456;
    procedure Trial0457;
    procedure Trial0458;
    procedure Trial0459;
    procedure Trial0460;
    procedure Trial0461;
    procedure Trial0462;
    procedure Trial0463;
    procedure Trial0464;
    procedure Trial0465;
    procedure Trial0466;
    procedure Trial0467;
    procedure Trial0468;
    procedure Trial0469;
    procedure Trial0470;
    procedure Trial0471;
    procedure Trial0472;
    procedure Trial0473;
    procedure Trial0474;
    procedure Trial0475;
    procedure Trial0476;
    procedure Trial0477;
    procedure Trial0478;
    procedure Trial0479;
    procedure Trial0480;
    procedure Trial0481;
    procedure Trial0482;
    procedure Trial0483;
    procedure Trial0484;
    procedure Trial0485;
    procedure Trial0486;
    procedure Trial0487;
    procedure Trial0488;
    procedure Trial0489;
    procedure Trial0490;
    procedure Trial0491;
    procedure Trial0492;
    procedure Trial0493;
    procedure Trial0494;
    procedure Trial0495;
    procedure Trial0496;
    procedure Trial0497;
    procedure Trial0498;
    procedure Trial0499;
    procedure Trial0500;
    procedure Trial0501;
    procedure Trial0502;
    procedure Trial0503;
    procedure Trial0504;
    procedure Trial0505;
    procedure Trial0506;
    procedure Trial0507;
    procedure Trial0508;
    procedure Trial0509;
    procedure Trial0510;
    procedure Trial0511;
    procedure Trial0512;
    procedure Trial0513;
    procedure Trial0514;
    procedure Trial0515;
    procedure Trial0516;
    procedure Trial0517;
    procedure Trial0518;
    procedure Trial0519;
    procedure Trial0520;
    procedure Trial0521;
    procedure Trial0522;
    procedure Trial0523;
    procedure Trial0524;
    procedure Trial0525;
    procedure Trial0526;
    procedure Trial0527;
    procedure Trial0528;
    procedure Trial0529;
    procedure Trial0530;
    procedure Trial0531;
    procedure Trial0532;
    procedure Trial0533;
    procedure Trial0534;
    procedure Trial0535;
    procedure Trial0536;
    procedure Trial0537;
    procedure Trial0538;
    procedure Trial0539;
    procedure Trial0540;
    procedure Trial0541;
    procedure Trial0542;
    procedure Trial0543;
    procedure Trial0544;
    procedure Trial0545;
    procedure Trial0546;
    procedure Trial0547;
    procedure Trial0548;
    procedure Trial0549;
    procedure Trial0550;
    procedure Trial0551;
    procedure Trial0552;
    procedure Trial0553;
    procedure Trial0554;
    procedure Trial0555;
    procedure Trial0556;
    procedure Trial0557;
    procedure Trial0558;
    procedure Trial0559;
    procedure Trial0560;
    procedure Trial0561;
    procedure Trial0562;
    procedure Trial0563;
    procedure Trial0564;
    procedure Trial0565;
    procedure Trial0566;
    procedure Trial0567;
    procedure Trial0568;
    procedure Trial0569;
    procedure Trial0570;
    procedure Trial0571;
    procedure Trial0572;
    procedure Trial0573;
    procedure Trial0574;
    procedure Trial0575;
    procedure Trial0576;
    procedure Trial0577;
    procedure Trial0578;
    procedure Trial0579;
    procedure Trial0580;
    procedure Trial0581;
    procedure Trial0582;
    procedure Trial0583;
    procedure Trial0584;
    procedure Trial0585;
    procedure Trial0586;
    procedure Trial0587;
    procedure Trial0588;
    procedure Trial0589;
    procedure Trial0590;
    procedure Trial0591;
    procedure Trial0592;
    procedure Trial0593;
    procedure Trial0594;
    procedure Trial0595;
    procedure Trial0596;
    procedure Trial0597;
    procedure Trial0598;
    procedure Trial0599;
    procedure Trial0600;
    procedure Trial0601;
    procedure Trial0602;
    procedure Trial0603;
    procedure Trial0604;
    procedure Trial0605;
    procedure Trial0606;
    procedure Trial0607;
    procedure Trial0608;
    procedure Trial0609;
    procedure Trial0610;
    procedure Trial0611;
    procedure Trial0612;
    procedure Trial0613;
    procedure Trial0614;
    procedure Trial0615;
    procedure Trial0616;
    procedure Trial0617;
    procedure Trial0618;
    procedure Trial0619;
    procedure Trial0620;
    procedure Trial0621;
    procedure Trial0622;
    procedure Trial0623;
    procedure Trial0624;
    procedure Trial0625;
    procedure Trial0626;
    procedure Trial0627;
    procedure Trial0628;
    procedure Trial0629;
    procedure Trial0630;
    procedure Trial0631;
    procedure Trial0632;
    procedure Trial0633;
    procedure Trial0634;
    procedure Trial0635;
    procedure Trial0636;
    procedure Trial0637;
    procedure Trial0638;
    procedure Trial0639;
    procedure Trial0640;
    procedure Trial0641;
    procedure Trial0642;
    procedure Trial0643;
    procedure Trial0644;
    procedure Trial0645;
    procedure Trial0646;
    procedure Trial0647;
    procedure Trial0648;
    procedure Trial0649;
    procedure Trial0650;
    procedure Trial0651;
    procedure Trial0652;
    procedure Trial0653;
    procedure Trial0654;
    procedure Trial0655;
    procedure Trial0656;
    procedure Trial0657;
    procedure Trial0658;
    procedure Trial0659;
    procedure Trial0660;
    procedure Trial0661;
    procedure Trial0662;
    procedure Trial0663;
    procedure Trial0664;
    procedure Trial0665;
    procedure Trial0666;
    procedure Trial0667;
    procedure Trial0668;
    procedure Trial0669;
    procedure Trial0670;
    procedure Trial0671;
    procedure Trial0672;
    procedure Trial0673;
    procedure Trial0674;
    procedure Trial0675;
    procedure Trial0676;
    procedure Trial0677;
    procedure Trial0678;
    procedure Trial0679;
    procedure Trial0680;
    procedure Trial0681;
    procedure Trial0682;
    procedure Trial0683;
    procedure Trial0684;
    procedure Trial0685;
    procedure Trial0686;
    procedure Trial0687;
    procedure Trial0688;
    procedure Trial0689;
    procedure Trial0690;
    procedure Trial0691;
    procedure Trial0692;
    procedure Trial0693;
    procedure Trial0694;
    procedure Trial0695;
    procedure Trial0696;
    procedure Trial0697;
    procedure Trial0698;
    procedure Trial0699;
    procedure Trial0700;
    procedure Trial0701;
    procedure Trial0702;
    procedure Trial0703;
    procedure Trial0704;
    procedure Trial0705;
    procedure Trial0706;
    procedure Trial0707;
    procedure Trial0708;
    procedure Trial0709;
    procedure Trial0710;
    procedure Trial0711;
    procedure Trial0712;
    procedure Trial0713;
    procedure Trial0714;
    procedure Trial0715;
    procedure Trial0716;
    procedure Trial0717;
    procedure Trial0718;
    procedure Trial0719;
    procedure Trial0720;
    procedure Trial0721;
    procedure Trial0722;
    procedure Trial0723;
    procedure Trial0724;
    procedure Trial0725;
    procedure Trial0726;
    procedure Trial0727;
    procedure Trial0728;
    procedure Trial0729;
    procedure Trial0730;
    procedure Trial0731;
    procedure Trial0732;
    procedure Trial0733;
    procedure Trial0734;
    procedure Trial0735;
    procedure Trial0736;
    procedure Trial0737;
    procedure Trial0738;
    procedure Trial0739;
    procedure Trial0740;
    procedure Trial0741;
    procedure Trial0742;
    procedure Trial0743;
    procedure Trial0744;
    procedure Trial0745;
    procedure Trial0746;
    procedure Trial0747;
    procedure Trial0748;
    procedure Trial0749;
    procedure Trial0750;
    procedure Trial0751;
    procedure Trial0752;
    procedure Trial0753;
  end;

implementation

{ TTestPerl }

procedure TTestPerl.Trial0000;
begin
  Execute('abc', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0001;
begin
  Execute('abc', [], 'xbc', 'Fail.');
end;

procedure TTestPerl.Trial0002;
begin
  Execute('abc', [], 'axc', 'Fail.');
end;

procedure TTestPerl.Trial0003;
begin
  Execute('abc', [], 'abx', 'Fail.');
end;

procedure TTestPerl.Trial0004;
begin
  Execute('abc', [], 'xabcy', 'Pass. Group[0]=(1,3)');
end;

procedure TTestPerl.Trial0005;
begin
  Execute('abc', [], 'ababc', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0006;
begin
  Execute('ab*c', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0007;
begin
  Execute('ab*bc', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0008;
begin
  Execute('ab*bc', [], 'abbc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0009;
begin
  Execute('ab*bc', [], 'abbbbc', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0010;
begin
  Execute('.{1}', [], 'abbbbc', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0011;
begin
  Execute('.{3,4}', [], 'abbbbc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0012;
begin
  Execute('ab{0,}bc', [], 'abbbbc', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0013;
begin
  Execute('ab+bc', [], 'abbc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0014;
begin
  Execute('ab+bc', [], 'abc', 'Fail.');
end;

procedure TTestPerl.Trial0015;
begin
  Execute('ab+bc', [], 'abq', 'Fail.');
end;

procedure TTestPerl.Trial0016;
begin
  Execute('ab{1,}bc', [], 'abq', 'Fail.');
end;

procedure TTestPerl.Trial0017;
begin
  Execute('ab+bc', [], 'abbbbc', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0018;
begin
  Execute('ab{1,}bc', [], 'abbbbc', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0019;
begin
  Execute('ab{1,3}bc', [], 'abbbbc', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0020;
begin
  Execute('ab{3,4}bc', [], 'abbbbc', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0021;
begin
  Execute('ab{4,5}bc', [], 'abbbbc', 'Fail.');
end;

procedure TTestPerl.Trial0022;
begin
  Execute('ab?bc', [], 'abbc', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0023;
begin
  Execute('ab?bc', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0024;
begin
  Execute('ab{0,1}bc', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0025;
begin
  Execute('ab?bc', [], 'abbbbc', 'Fail.');
end;

procedure TTestPerl.Trial0026;
begin
  Execute('ab?c', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0027;
begin
  Execute('ab{0,1}c', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0028;
begin
  Execute('^abc$', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0029;
begin
  Execute('^abc$', [], 'abcc', 'Fail.');
end;

procedure TTestPerl.Trial0030;
begin
  Execute('^abc', [], 'abcc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0031;
begin
  Execute('^abc$', [], 'aabc', 'Fail.');
end;

procedure TTestPerl.Trial0032;
begin
  Execute('abc$', [], 'aabc', 'Pass. Group[0]=(1,3)');
end;

procedure TTestPerl.Trial0033;
begin
  Execute('abc$', [], 'aabcd', 'Fail.');
end;

procedure TTestPerl.Trial0034;
begin
  Execute('^', [], 'abc', 'Pass. Group[0]=(0,0)');
end;

procedure TTestPerl.Trial0035;
begin
  Execute('$', [], 'abc', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0036;
begin
  Execute('a.c', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0037;
begin
  Execute('a.c', [], 'axc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0038;
begin
  Execute('a.*c', [], 'axyzc', 'Pass. Group[0]=(0,5)');
end;

procedure TTestPerl.Trial0039;
begin
  Execute('a.*c', [], 'axyzd', 'Fail.');
end;

procedure TTestPerl.Trial0040;
begin
  Execute('a[bc]d', [], 'abc', 'Fail.');
end;

procedure TTestPerl.Trial0041;
begin
  Execute('a[bc]d', [], 'abd', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0042;
begin
  Execute('a[b-d]e', [], 'abd', 'Fail.');
end;

procedure TTestPerl.Trial0043;
begin
  Execute('a[b-d]e', [], 'ace', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0044;
begin
  Execute('a[b-d]', [], 'aac', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0045;
begin
  Execute('a[-b]', [], 'a-', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0046;
begin
  Execute('a[b-]', [], 'a-', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0047;
begin
  Execute('a[b-a]', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0048;
begin
  Execute('a[]b', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0049;
begin
  Execute('a[', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0050;
begin
  Execute('a]', [], 'a]', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0051;
begin
  Execute('a[]]b', [], 'a]b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0052;
begin
  Execute('a[^bc]d', [], 'aed', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0053;
begin
  Execute('a[^bc]d', [], 'abd', 'Fail.');
end;

procedure TTestPerl.Trial0054;
begin
  Execute('a[^-b]c', [], 'adc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0055;
begin
  Execute('a[^-b]c', [], 'a-c', 'Fail.');
end;

procedure TTestPerl.Trial0056;
begin
  Execute('a[^]b]c', [], 'a]c', 'Fail.');
end;

procedure TTestPerl.Trial0057;
begin
  Execute('a[^]b]c', [], 'adc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0058;
begin
  Execute('\ba\b', [], 'a-', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0059;
begin
  Execute('\ba\b', [], '-a', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0060;
begin
  Execute('\ba\b', [], '-a-', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0061;
begin
  Execute('\by\b', [], 'xy', 'Fail.');
end;

procedure TTestPerl.Trial0062;
begin
  Execute('\by\b', [], 'yz', 'Fail.');
end;

procedure TTestPerl.Trial0063;
begin
  Execute('\by\b', [], 'xyz', 'Fail.');
end;

procedure TTestPerl.Trial0064;
begin
  Execute('\Ba\B', [], 'a-', 'Fail.');
end;

procedure TTestPerl.Trial0065;
begin
  Execute('\Ba\B', [], '-a', 'Fail.');
end;

procedure TTestPerl.Trial0066;
begin
  Execute('\Ba\B', [], '-a-', 'Fail.');
end;

procedure TTestPerl.Trial0067;
begin
  Execute('\By\b', [], 'xy', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0068;
begin
  Execute('\by\B', [], 'yz', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0069;
begin
  Execute('\By\B', [], 'xyz', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0070;
begin
  Execute('\w', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0071;
begin
  Execute('\w', [], '-', 'Fail.');
end;

procedure TTestPerl.Trial0072;
begin
  Execute('\W', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0073;
begin
  Execute('\W', [], '-', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0074;
begin
  Execute('a\sb', [], 'a b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0075;
begin
  Execute('a\sb', [], 'a-b', 'Fail.');
end;

procedure TTestPerl.Trial0076;
begin
  Execute('a\Sb', [], 'a b', 'Fail.');
end;

procedure TTestPerl.Trial0077;
begin
  Execute('a\Sb', [], 'a-b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0078;
begin
  Execute('\d', [], '1', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0079;
begin
  Execute('\d', [], '-', 'Fail.');
end;

procedure TTestPerl.Trial0080;
begin
  Execute('\D', [], '1', 'Fail.');
end;

procedure TTestPerl.Trial0081;
begin
  Execute('\D', [], '-', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0082;
begin
  Execute('[\w]', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0083;
begin
  Execute('[\w]', [], '-', 'Fail.');
end;

procedure TTestPerl.Trial0084;
begin
  Execute('[\W]', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0085;
begin
  Execute('[\W]', [], '-', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0086;
begin
  Execute('a[\s]b', [], 'a b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0087;
begin
  Execute('a[\s]b', [], 'a-b', 'Fail.');
end;

procedure TTestPerl.Trial0088;
begin
  Execute('a[\S]b', [], 'a b', 'Fail.');
end;

procedure TTestPerl.Trial0089;
begin
  Execute('a[\S]b', [], 'a-b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0090;
begin
  Execute('[\d]', [], '1', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0091;
begin
  Execute('[\d]', [], '-', 'Fail.');
end;

procedure TTestPerl.Trial0092;
begin
  Execute('[\D]', [], '1', 'Fail.');
end;

procedure TTestPerl.Trial0093;
begin
  Execute('[\D]', [], '-', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0094;
begin
  Execute('ab|cd', [], 'abc', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0095;
begin
  Execute('ab|cd', [], 'abcd', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0096;
begin
  Execute('()ef', [], 'def', 'Pass. Group[0]=(1,2) Group[1]=(1,0)');
end;

procedure TTestPerl.Trial0097;
begin
  Execute('*a', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0098;
begin
  Execute('(*)b', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0099;
begin
  Execute('$b', [], 'b', 'Fail.');
end;

procedure TTestPerl.Trial0100;
begin
  Execute('a\', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0101;
begin
  Execute('a\(b', [], 'a(b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0102;
begin
  Execute('a\(*b', [], 'ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0103;
begin
  Execute('a\(*b', [], 'a((b', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0104;
begin
  Execute('a\\b', [], 'a\b', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0105;
begin
  Execute('abc)', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0106;
begin
  Execute('(abc', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0107;
begin
  Execute('((a))', [], 'abc', 'Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1)');
end;

procedure TTestPerl.Trial0108;
begin
  Execute('(a)b(c)', [], 'abc', 'Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)');
end;

procedure TTestPerl.Trial0109;
begin
  Execute('a+b+c', [], 'aabbabc', 'Pass. Group[0]=(4,3)');
end;

procedure TTestPerl.Trial0110;
begin
  Execute('a{1,}b{1,}c', [], 'aabbabc', 'Pass. Group[0]=(4,3)');
end;

procedure TTestPerl.Trial0111;
begin
  Execute('a**', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0112;
begin
  Execute('a.+?c', [], 'abcabc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0113;
begin
  Execute('(a+|b)*', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0114;
begin
  Execute('(a+|b){0,}', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0115;
begin
  Execute('(a+|b)+', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0116;
begin
  Execute('(a+|b){1,}', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0117;
begin
  Execute('(a+|b)?', [], 'ab', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0118;
begin
  Execute('(a+|b){0,1}', [], 'ab', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0119;
begin
  Execute(')(', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0120;
begin
  Execute('[^ab]*', [], 'cde', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0121;
begin
  Execute('abc', [], '', 'Fail.');
end;

procedure TTestPerl.Trial0122;
begin
  Execute('a*', [], '', 'Pass. Group[0]=(0,0)');
end;

procedure TTestPerl.Trial0123;
begin
  Execute('([abc])*d', [], 'abbbcd', 'Pass. Group[0]=(0,6) Group[1]=(4,1)');
end;

procedure TTestPerl.Trial0124;
begin
  Execute('([abc])*bcd', [], 'abcd', 'Pass. Group[0]=(0,4) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0125;
begin
  Execute('a|b|c|d|e', [], 'e', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0126;
begin
  Execute('(a|b|c|d|e)f', [], 'ef', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0127;
begin
  Execute('abcd*efg', [], 'abcdefg', 'Pass. Group[0]=(0,7)');
end;

procedure TTestPerl.Trial0128;
begin
  Execute('ab*', [], 'xabyabbbz', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0129;
begin
  Execute('ab*', [], 'xayabbbz', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0130;
begin
  Execute('(ab|cd)e', [], 'abcde', 'Pass. Group[0]=(2,3) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0131;
begin
  Execute('[abhgefdc]ij', [], 'hij', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0132;
begin
  Execute('^(ab|cd)e', [], 'abcde', 'Fail.');
end;

procedure TTestPerl.Trial0133;
begin
  Execute('(abc|)ef', [], 'abcdef', 'Pass. Group[0]=(4,2) Group[1]=(4,0)');
end;

procedure TTestPerl.Trial0134;
begin
  Execute('(a|b)c*d', [], 'abcd', 'Pass. Group[0]=(1,3) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0135;
begin
  Execute('(ab|ab*)bc', [], 'abc', 'Pass. Group[0]=(0,3) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0136;
begin
  Execute('a([bc]*)c*', [], 'abc', 'Pass. Group[0]=(0,3) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0137;
begin
  Execute('a([bc]*)(c*d)', [], 'abcd', 'Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)');
end;

procedure TTestPerl.Trial0138;
begin
  Execute('a([bc]+)(c*d)', [], 'abcd', 'Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)');
end;

procedure TTestPerl.Trial0139;
begin
  Execute('a([bc]*)(c+d)', [], 'abcd', 'Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)');
end;

procedure TTestPerl.Trial0140;
begin
  Execute('a[bcd]*dcdcde', [], 'adcdcde', 'Pass. Group[0]=(0,7)');
end;

procedure TTestPerl.Trial0141;
begin
  Execute('a[bcd]+dcdcde', [], 'adcdcde', 'Fail.');
end;

procedure TTestPerl.Trial0142;
begin
  Execute('(ab|a)b*c', [], 'abc', 'Pass. Group[0]=(0,3) Group[1]=(0,2)');
end;

procedure TTestPerl.Trial0143;
begin
  Execute('((a)(b)c)(d)', [], 'abcd', 'Pass. Group[0]=(0,4) Group[1]=(0,3) Group[2]=(0,1) Group[3]=(1,1) Group[4]=(3,1)');
end;

procedure TTestPerl.Trial0144;
begin
  Execute('[a-zA-Z_][a-zA-Z0-9_]*', [], 'alpha', 'Pass. Group[0]=(0,5)');
end;

procedure TTestPerl.Trial0145;
begin
  Execute('^a(bc+|b[eh])g|.h$', [], 'abh', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0146;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [], 'effgz', 'Pass. Group[0]=(0,5) Group[1]=(0,5)');
end;

procedure TTestPerl.Trial0147;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [], 'ij', 'Pass. Group[0]=(0,2) Group[1]=(0,2) Group[2]=(1,1)');
end;

procedure TTestPerl.Trial0148;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [], 'effg', 'Fail.');
end;

procedure TTestPerl.Trial0149;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [], 'bcdd', 'Fail.');
end;

procedure TTestPerl.Trial0150;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [], 'reffgz', 'Pass. Group[0]=(1,5) Group[1]=(1,5)');
end;

procedure TTestPerl.Trial0151;
begin
  Execute('((((((((((a))))))))))', [], 'a', 'Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)');
end;

procedure TTestPerl.Trial0152;
begin
  Execute('((((((((((a))))))))))\10', [], 'aa', 'Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)');
end;

procedure TTestPerl.Trial0153;
begin
  Execute('((((((((((a))))))))))!', [], 'aa', 'Fail.');
end;

procedure TTestPerl.Trial0154;
begin
  Execute('((((((((((a))))))))))!', [], 'a!', 'Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)');
end;

procedure TTestPerl.Trial0155;
begin
  Execute('(((((((((a)))))))))', [], 'a', 'Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1)');
end;

procedure TTestPerl.Trial0156;
begin
  Execute('multiple words of text', [], 'uh-uh', 'Fail.');
end;

procedure TTestPerl.Trial0157;
begin
  Execute('multiple words', [], 'multiple words, yeah', 'Pass. Group[0]=(0,14)');
end;

procedure TTestPerl.Trial0158;
begin
  Execute('(.*)c(.*)', [], 'abcde', 'Pass. Group[0]=(0,5) Group[1]=(0,2) Group[2]=(3,2)');
end;

procedure TTestPerl.Trial0159;
begin
  Execute('\((.*), (.*)\)', [], '(a, b)', 'Pass. Group[0]=(0,6) Group[1]=(1,1) Group[2]=(4,1)');
end;

procedure TTestPerl.Trial0160;
begin
  Execute('[k]', [], 'ab', 'Fail.');
end;

procedure TTestPerl.Trial0161;
begin
  Execute('abcd', [], 'abcd', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0162;
begin
  Execute('a(bc)d', [], 'abcd', 'Pass. Group[0]=(0,4) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0163;
begin
  Execute('a[-]?c', [], 'ac', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0164;
begin
  Execute('(abc)\1', [], 'abcabc', 'Pass. Group[0]=(0,6) Group[1]=(0,3)');
end;

procedure TTestPerl.Trial0165;
begin
  Execute('([a-c]*)\1', [], 'abcabc', 'Pass. Group[0]=(0,6) Group[1]=(0,3)');
end;

procedure TTestPerl.Trial0166;
begin
  Execute('\1', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0167;
begin
  Execute('\2', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0168;
begin
  Execute('(a)|\1', [], 'a', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0169;
begin
  Execute('(a)|\1', [], 'x', 'Fail.');
end;

procedure TTestPerl.Trial0170;
begin
  Execute('(a)|\2', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0171;
begin
  Execute('(([a-c])b*?\2)*', [], 'ababbbcbc', 'Pass. Group[0]=(0,5) Group[1]=(3,2) Group[2]=(3,1)');
end;

procedure TTestPerl.Trial0172;
begin
  Execute('(([a-c])b*?\2){3}', [], 'ababbbcbc', 'Pass. Group[0]=(0,9) Group[1]=(6,3) Group[2]=(6,1)');
end;

procedure TTestPerl.Trial0173;
begin
  Execute('((\3|b)\2(a)x)+', [], 'aaxabxbaxbbx', 'Fail.');
end;

procedure TTestPerl.Trial0174;
begin
  Execute('((\3|b)\2(a)x)+', [], 'aaaxabaxbaaxbbax', 'Pass. Group[0]=(12,4) Group[1]=(12,4) Group[2]=(12,1) Group[3]=(14,1)');
end;

procedure TTestPerl.Trial0175;
begin
  Execute('((\3|b)\2(a)){2,}', [], 'bbaababbabaaaaabbaaaabba', 'Pass. Group[0]=(15,9) Group[1]=(21,3) Group[2]=(21,1) Group[3]=(23,1)');
end;

procedure TTestPerl.Trial0176;
begin
  Execute('abc', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0177;
begin
  Execute('abc', [roIgnoreCase], 'XBC', 'Fail.');
end;

procedure TTestPerl.Trial0178;
begin
  Execute('abc', [roIgnoreCase], 'AXC', 'Fail.');
end;

procedure TTestPerl.Trial0179;
begin
  Execute('abc', [roIgnoreCase], 'ABX', 'Fail.');
end;

procedure TTestPerl.Trial0180;
begin
  Execute('abc', [roIgnoreCase], 'XABCY', 'Pass. Group[0]=(1,3)');
end;

procedure TTestPerl.Trial0181;
begin
  Execute('abc', [roIgnoreCase], 'ABABC', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0182;
begin
  Execute('ab*c', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0183;
begin
  Execute('ab*bc', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0184;
begin
  Execute('ab*bc', [roIgnoreCase], 'ABBC', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0185;
begin
  Execute('ab*?bc', [roIgnoreCase], 'ABBBBC', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0186;
begin
  Execute('ab{0,}?bc', [roIgnoreCase], 'ABBBBC', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0187;
begin
  Execute('ab+?bc', [roIgnoreCase], 'ABBC', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0188;
begin
  Execute('ab+bc', [roIgnoreCase], 'ABC', 'Fail.');
end;

procedure TTestPerl.Trial0189;
begin
  Execute('ab+bc', [roIgnoreCase], 'ABQ', 'Fail.');
end;

procedure TTestPerl.Trial0190;
begin
  Execute('ab{1,}bc', [roIgnoreCase], 'ABQ', 'Fail.');
end;

procedure TTestPerl.Trial0191;
begin
  Execute('ab+bc', [roIgnoreCase], 'ABBBBC', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0192;
begin
  Execute('ab{1,}?bc', [roIgnoreCase], 'ABBBBC', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0193;
begin
  Execute('ab{1,3}?bc', [roIgnoreCase], 'ABBBBC', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0194;
begin
  Execute('ab{3,4}?bc', [roIgnoreCase], 'ABBBBC', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0195;
begin
  Execute('ab{4,5}?bc', [roIgnoreCase], 'ABBBBC', 'Fail.');
end;

procedure TTestPerl.Trial0196;
begin
  Execute('ab??bc', [roIgnoreCase], 'ABBC', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0197;
begin
  Execute('ab??bc', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0198;
begin
  Execute('ab{0,1}?bc', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0199;
begin
  Execute('ab??bc', [roIgnoreCase], 'ABBBBC', 'Fail.');
end;

procedure TTestPerl.Trial0200;
begin
  Execute('ab??c', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0201;
begin
  Execute('ab{0,1}?c', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0202;
begin
  Execute('^abc$', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0203;
begin
  Execute('^abc$', [roIgnoreCase], 'ABCC', 'Fail.');
end;

procedure TTestPerl.Trial0204;
begin
  Execute('^abc', [roIgnoreCase], 'ABCC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0205;
begin
  Execute('^abc$', [roIgnoreCase], 'AABC', 'Fail.');
end;

procedure TTestPerl.Trial0206;
begin
  Execute('abc$', [roIgnoreCase], 'AABC', 'Pass. Group[0]=(1,3)');
end;

procedure TTestPerl.Trial0207;
begin
  Execute('^', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,0)');
end;

procedure TTestPerl.Trial0208;
begin
  Execute('$', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0209;
begin
  Execute('a.c', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0210;
begin
  Execute('a.c', [roIgnoreCase], 'AXC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0211;
begin
  Execute('a.*?c', [roIgnoreCase], 'AXYZC', 'Pass. Group[0]=(0,5)');
end;

procedure TTestPerl.Trial0212;
begin
  Execute('a.*c', [roIgnoreCase], 'AXYZD', 'Fail.');
end;

procedure TTestPerl.Trial0213;
begin
  Execute('a[bc]d', [roIgnoreCase], 'ABC', 'Fail.');
end;

procedure TTestPerl.Trial0214;
begin
  Execute('a[bc]d', [roIgnoreCase], 'ABD', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0215;
begin
  Execute('a[b-d]e', [roIgnoreCase], 'ABD', 'Fail.');
end;

procedure TTestPerl.Trial0216;
begin
  Execute('a[b-d]e', [roIgnoreCase], 'ACE', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0217;
begin
  Execute('a[b-d]', [roIgnoreCase], 'AAC', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0218;
begin
  Execute('a[-b]', [roIgnoreCase], 'A-', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0219;
begin
  Execute('a[b-]', [roIgnoreCase], 'A-', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0220;
begin
  Execute('a[b-a]', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0221;
begin
  Execute('a[]b', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0222;
begin
  Execute('a[', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0223;
begin
  Execute('a]', [roIgnoreCase], 'A]', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0224;
begin
  Execute('a[]]b', [roIgnoreCase], 'A]B', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0225;
begin
  Execute('a[^bc]d', [roIgnoreCase], 'AED', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0226;
begin
  Execute('a[^bc]d', [roIgnoreCase], 'ABD', 'Fail.');
end;

procedure TTestPerl.Trial0227;
begin
  Execute('a[^-b]c', [roIgnoreCase], 'ADC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0228;
begin
  Execute('a[^-b]c', [roIgnoreCase], 'A-C', 'Fail.');
end;

procedure TTestPerl.Trial0229;
begin
  Execute('a[^]b]c', [roIgnoreCase], 'A]C', 'Fail.');
end;

procedure TTestPerl.Trial0230;
begin
  Execute('a[^]b]c', [roIgnoreCase], 'ADC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0231;
begin
  Execute('ab|cd', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0232;
begin
  Execute('ab|cd', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0233;
begin
  Execute('()ef', [roIgnoreCase], 'DEF', 'Pass. Group[0]=(1,2) Group[1]=(1,0)');
end;

procedure TTestPerl.Trial0234;
begin
  Execute('*a', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0235;
begin
  Execute('(*)b', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0236;
begin
  Execute('$b', [roIgnoreCase], 'B', 'Fail.');
end;

procedure TTestPerl.Trial0237;
begin
  Execute('a\', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0238;
begin
  Execute('a\(b', [roIgnoreCase], 'A(B', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0239;
begin
  Execute('a\(*b', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0240;
begin
  Execute('a\(*b', [roIgnoreCase], 'A((B', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0241;
begin
  Execute('a\\b', [roIgnoreCase], 'A\B', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0242;
begin
  Execute('abc)', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0243;
begin
  Execute('(abc', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0244;
begin
  Execute('((a))', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1)');
end;

procedure TTestPerl.Trial0245;
begin
  Execute('(a)b(c)', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(2,1)');
end;

procedure TTestPerl.Trial0246;
begin
  Execute('a+b+c', [roIgnoreCase], 'AABBABC', 'Pass. Group[0]=(4,3)');
end;

procedure TTestPerl.Trial0247;
begin
  Execute('a{1,}b{1,}c', [roIgnoreCase], 'AABBABC', 'Pass. Group[0]=(4,3)');
end;

procedure TTestPerl.Trial0248;
begin
  Execute('a**', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0249;
begin
  Execute('a.+?c', [roIgnoreCase], 'ABCABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0250;
begin
  Execute('a.*?c', [roIgnoreCase], 'ABCABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0251;
begin
  Execute('a.{0,5}?c', [roIgnoreCase], 'ABCABC', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0252;
begin
  Execute('(a+|b)*', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0253;
begin
  Execute('(a+|b){0,}', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0254;
begin
  Execute('(a+|b)+', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0255;
begin
  Execute('(a+|b){1,}', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0256;
begin
  Execute('(a+|b)?', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0257;
begin
  Execute('(a+|b){0,1}', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0258;
begin
  Execute('(a+|b){0,1}?', [roIgnoreCase], 'AB', 'Pass. Group[0]=(0,0)');
end;

procedure TTestPerl.Trial0259;
begin
  Execute(')(', [roIgnoreCase], '-', 'Error.');
end;

procedure TTestPerl.Trial0260;
begin
  Execute('[^ab]*', [roIgnoreCase], 'CDE', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0261;
begin
  Execute('abc', [roIgnoreCase], '', 'Fail.');
end;

procedure TTestPerl.Trial0262;
begin
  Execute('a*', [roIgnoreCase], '', 'Pass. Group[0]=(0,0)');
end;

procedure TTestPerl.Trial0263;
begin
  Execute('([abc])*d', [roIgnoreCase], 'ABBBCD', 'Pass. Group[0]=(0,6) Group[1]=(4,1)');
end;

procedure TTestPerl.Trial0264;
begin
  Execute('([abc])*bcd', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0265;
begin
  Execute('a|b|c|d|e', [roIgnoreCase], 'E', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0266;
begin
  Execute('(a|b|c|d|e)f', [roIgnoreCase], 'EF', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0267;
begin
  Execute('abcd*efg', [roIgnoreCase], 'ABCDEFG', 'Pass. Group[0]=(0,7)');
end;

procedure TTestPerl.Trial0268;
begin
  Execute('ab*', [roIgnoreCase], 'XABYABBBZ', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0269;
begin
  Execute('ab*', [roIgnoreCase], 'XAYABBBZ', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0270;
begin
  Execute('(ab|cd)e', [roIgnoreCase], 'ABCDE', 'Pass. Group[0]=(2,3) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0271;
begin
  Execute('[abhgefdc]ij', [roIgnoreCase], 'HIJ', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0272;
begin
  Execute('^(ab|cd)e', [roIgnoreCase], 'ABCDE', 'Fail.');
end;

procedure TTestPerl.Trial0273;
begin
  Execute('(abc|)ef', [roIgnoreCase], 'ABCDEF', 'Pass. Group[0]=(4,2) Group[1]=(4,0)');
end;

procedure TTestPerl.Trial0274;
begin
  Execute('(a|b)c*d', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(1,3) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0275;
begin
  Execute('(ab|ab*)bc', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0276;
begin
  Execute('a([bc]*)c*', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0277;
begin
  Execute('a([bc]*)(c*d)', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)');
end;

procedure TTestPerl.Trial0278;
begin
  Execute('a([bc]+)(c*d)', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4) Group[1]=(1,2) Group[2]=(3,1)');
end;

procedure TTestPerl.Trial0279;
begin
  Execute('a([bc]*)(c+d)', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4) Group[1]=(1,1) Group[2]=(2,2)');
end;

procedure TTestPerl.Trial0280;
begin
  Execute('a[bcd]*dcdcde', [roIgnoreCase], 'ADCDCDE', 'Pass. Group[0]=(0,7)');
end;

procedure TTestPerl.Trial0281;
begin
  Execute('a[bcd]+dcdcde', [roIgnoreCase], 'ADCDCDE', 'Fail.');
end;

procedure TTestPerl.Trial0282;
begin
  Execute('(ab|a)b*c', [roIgnoreCase], 'ABC', 'Pass. Group[0]=(0,3) Group[1]=(0,2)');
end;

procedure TTestPerl.Trial0283;
begin
  Execute('((a)(b)c)(d)', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4) Group[1]=(0,3) Group[2]=(0,1) Group[3]=(1,1) Group[4]=(3,1)');
end;

procedure TTestPerl.Trial0284;
begin
  Execute('[a-zA-Z_][a-zA-Z0-9_]*', [roIgnoreCase], 'ALPHA', 'Pass. Group[0]=(0,5)');
end;

procedure TTestPerl.Trial0285;
begin
  Execute('^a(bc+|b[eh])g|.h$', [roIgnoreCase], 'ABH', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0286;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [roIgnoreCase], 'EFFGZ', 'Pass. Group[0]=(0,5) Group[1]=(0,5)');
end;

procedure TTestPerl.Trial0287;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [roIgnoreCase], 'IJ', 'Pass. Group[0]=(0,2) Group[1]=(0,2) Group[2]=(1,1)');
end;

procedure TTestPerl.Trial0288;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [roIgnoreCase], 'EFFG', 'Fail.');
end;

procedure TTestPerl.Trial0289;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [roIgnoreCase], 'BCDD', 'Fail.');
end;

procedure TTestPerl.Trial0290;
begin
  Execute('(bc+d$|ef*g.|h?i(j|k))', [roIgnoreCase], 'REFFGZ', 'Pass. Group[0]=(1,5) Group[1]=(1,5)');
end;

procedure TTestPerl.Trial0291;
begin
  Execute('((((((((((a))))))))))', [roIgnoreCase], 'A', 'Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)');
end;

procedure TTestPerl.Trial0292;
begin
  Execute('((((((((((a))))))))))\10', [roIgnoreCase], 'AA', 'Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)');
end;

procedure TTestPerl.Trial0293;
begin
  Execute('((((((((((a))))))))))!', [roIgnoreCase], 'AA', 'Fail.');
end;

procedure TTestPerl.Trial0294;
begin
  Execute('((((((((((a))))))))))!', [roIgnoreCase], 'A!', 'Pass. Group[0]=(0,2) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1) Group[10]=(0,1)');
end;

procedure TTestPerl.Trial0295;
begin
  Execute('(((((((((a)))))))))', [roIgnoreCase], 'A', 'Pass. Group[0]=(0,1) Group[1]=(0,1) Group[2]=(0,1) Group[3]=(0,1) Group[4]=(0,1) Group[5]=(0,1) Group[6]=(0,1) Group[7]=(0,1) Group[8]=(0,1) Group[9]=(0,1)');
end;

procedure TTestPerl.Trial0296;
begin
  Execute('(?:(?:(?:(?:(?:(?:(?:(?:(?:(a))))))))))', [roIgnoreCase], 'A', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0297;
begin
  Execute('(?:(?:(?:(?:(?:(?:(?:(?:(?:(a|b|c))))))))))', [roIgnoreCase], 'C', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0298;
begin
  Execute('multiple words of text', [roIgnoreCase], 'UH-UH', 'Fail.');
end;

procedure TTestPerl.Trial0299;
begin
  Execute('multiple words', [roIgnoreCase], 'MULTIPLE WORDS, YEAH', 'Pass. Group[0]=(0,14)');
end;

procedure TTestPerl.Trial0300;
begin
  Execute('(.*)c(.*)', [roIgnoreCase], 'ABCDE', 'Pass. Group[0]=(0,5) Group[1]=(0,2) Group[2]=(3,2)');
end;

procedure TTestPerl.Trial0301;
begin
  Execute('\((.*), (.*)\)', [roIgnoreCase], '(A, B)', 'Pass. Group[0]=(0,6) Group[1]=(1,1) Group[2]=(4,1)');
end;

procedure TTestPerl.Trial0302;
begin
  Execute('[k]', [roIgnoreCase], 'AB', 'Fail.');
end;

procedure TTestPerl.Trial0303;
begin
  Execute('abcd', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0304;
begin
  Execute('a(bc)d', [roIgnoreCase], 'ABCD', 'Pass. Group[0]=(0,4) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0305;
begin
  Execute('a[-]?c', [roIgnoreCase], 'AC', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0306;
begin
  Execute('(abc)\1', [roIgnoreCase], 'ABCABC', 'Pass. Group[0]=(0,6) Group[1]=(0,3)');
end;

procedure TTestPerl.Trial0307;
begin
  Execute('([a-c]*)\1', [roIgnoreCase], 'ABCABC', 'Pass. Group[0]=(0,6) Group[1]=(0,3)');
end;

procedure TTestPerl.Trial0308;
begin
  Execute('a(?!b).', [], 'abad', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0309;
begin
  Execute('a(?=d).', [], 'abad', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0310;
begin
  Execute('a(?=c|d).', [], 'abad', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0311;
begin
  Execute('a(?:b|c|d)(.)', [], 'ace', 'Pass. Group[0]=(0,3) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0312;
begin
  Execute('a(?:b|c|d)*(.)', [], 'ace', 'Pass. Group[0]=(0,3) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0313;
begin
  Execute('a(?:b|c|d)+?(.)', [], 'ace', 'Pass. Group[0]=(0,3) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0314;
begin
  Execute('a(?:b|c|d)+?(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,3) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0315;
begin
  Execute('a(?:b|c|d)+(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,8) Group[1]=(7,1)');
end;

procedure TTestPerl.Trial0316;
begin
  Execute('a(?:b|c|d){2}(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,4) Group[1]=(3,1)');
end;

procedure TTestPerl.Trial0317;
begin
  Execute('a(?:b|c|d){4,5}(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,7) Group[1]=(6,1)');
end;

procedure TTestPerl.Trial0318;
begin
  Execute('a(?:b|c|d){4,5}?(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,6) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0319;
begin
  Execute('((foo)|(bar))*', [], 'foobar', 'Pass. Group[0]=(0,6) Group[1]=(3,3) Group[2]=(0,3) Group[3]=(3,3)');
end;

procedure TTestPerl.Trial0320;
begin
  Execute(':(?:', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0321;
begin
  Execute('a(?:b|c|d){6,7}(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,8) Group[1]=(7,1)');
end;

procedure TTestPerl.Trial0322;
begin
  Execute('a(?:b|c|d){6,7}?(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,8) Group[1]=(7,1)');
end;

procedure TTestPerl.Trial0323;
begin
  Execute('a(?:b|c|d){5,6}(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,8) Group[1]=(7,1)');
end;

procedure TTestPerl.Trial0324;
begin
  Execute('a(?:b|c|d){5,6}?(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,7) Group[1]=(6,1)');
end;

procedure TTestPerl.Trial0325;
begin
  Execute('a(?:b|c|d){5,7}(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,8) Group[1]=(7,1)');
end;

procedure TTestPerl.Trial0326;
begin
  Execute('a(?:b|c|d){5,7}?(.)', [], 'acdbcdbe', 'Pass. Group[0]=(0,7) Group[1]=(6,1)');
end;

procedure TTestPerl.Trial0327;
begin
  Execute('a(?:b|(c|e){1,2}?|d)+?(.)', [], 'ace', 'Pass. Group[0]=(0,3) Group[1]=(1,1) Group[2]=(2,1)');
end;

procedure TTestPerl.Trial0328;
begin
  Execute('^(.+)?B', [], 'AB', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0329;
begin
  Execute('^([^a-z])|(\^)$', [], '.', 'Pass. Group[0]=(0,1) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0330;
begin
  Execute('^[<>]&', [], '<&OUT', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0331;
begin
  Execute('^(a\1?){4}$', [], 'aaaaaaaaaa', 'Pass. Group[0]=(0,10) Group[1]=(6,4)');
end;

procedure TTestPerl.Trial0332;
begin
  Execute('^(a\1?){4}$', [], 'aaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0333;
begin
  Execute('^(a\1?){4}$', [], 'aaaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0334;
begin
  Execute('^(a(?(1)\1)){4}$', [], 'aaaaaaaaaa', 'Pass. Group[0]=(0,10) Group[1]=(6,4)');
end;

procedure TTestPerl.Trial0335;
begin
  Execute('^(a(?(1)\1)){4}$', [], 'aaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0336;
begin
  Execute('^(a(?(1)\1)){4}$', [], 'aaaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0337;
begin
  Execute('((a{4})+)', [], 'aaaaaaaaa', 'Pass. Group[0]=(0,8) Group[1]=(0,8) Group[2]=(4,4)');
end;

procedure TTestPerl.Trial0338;
begin
  Execute('(((aa){2})+)', [], 'aaaaaaaaaa', 'Pass. Group[0]=(0,8) Group[1]=(0,8) Group[2]=(4,4) Group[3]=(6,2)');
end;

procedure TTestPerl.Trial0339;
begin
  Execute('(((a{2}){2})+)', [], 'aaaaaaaaaa', 'Pass. Group[0]=(0,8) Group[1]=(0,8) Group[2]=(4,4) Group[3]=(6,2)');
end;

procedure TTestPerl.Trial0340;
begin
  Execute('(?:(f)(o)(o)|(b)(a)(r))*', [], 'foobar', 'Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(3,1) Group[5]=(4,1) Group[6]=(5,1)');
end;

procedure TTestPerl.Trial0341;
begin
  Execute('(?<=a)b', [], 'ab', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0342;
begin
  Execute('(?<=a)b', [], 'cb', 'Fail.');
end;

procedure TTestPerl.Trial0343;
begin
  Execute('(?<=a)b', [], 'b', 'Fail.');
end;

procedure TTestPerl.Trial0344;
begin
  Execute('(?<!c)b', [], 'ab', 'Pass. Group[0]=(1,1)');
end;

procedure TTestPerl.Trial0345;
begin
  Execute('(?<!c)b', [], 'cb', 'Fail.');
end;

procedure TTestPerl.Trial0346;
begin
  Execute('(?<!c)b', [], 'b', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0347;
begin
  Execute('(?<!c)b', [], 'b', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0348;
begin
  Execute('(?<%)b', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0349;
begin
  Execute('(?:..)*a', [], 'aba', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0350;
begin
  Execute('(?:..)*?a', [], 'aba', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0351;
begin
  Execute('^(?:b|a(?=(.)))*\1', [], 'abc', 'Pass. Group[0]=(0,2) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0352;
begin
  Execute('^(){3,5}', [], 'abc', 'Pass. Group[0]=(0,0) Group[1]=(0,0)');
end;

procedure TTestPerl.Trial0353;
begin
  Execute('^(a+)*ax', [], 'aax', 'Pass. Group[0]=(0,3) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0354;
begin
  Execute('^((a|b)+)*ax', [], 'aax', 'Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(0,1)');
end;

procedure TTestPerl.Trial0355;
begin
  Execute('^((a|bc)+)*ax', [], 'aax', 'Pass. Group[0]=(0,3) Group[1]=(0,1) Group[2]=(0,1)');
end;

procedure TTestPerl.Trial0356;
begin
  Execute('(a|x)*ab', [], 'cab', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0357;
begin
  Execute('(a)*ab', [], 'cab', 'Pass. Group[0]=(1,2)');
end;

procedure TTestPerl.Trial0358;
begin
  Execute('(?:(?i)a)b', [], 'ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0359;
begin
  Execute('((?i)a)b', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0360;
begin
  Execute('(?:(?i)a)b', [], 'Ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0361;
begin
  Execute('((?i)a)b', [], 'Ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0362;
begin
  Execute('(?:(?i)a)b', [], 'aB', 'Fail.');
end;

procedure TTestPerl.Trial0363;
begin
  Execute('((?i)a)b', [], 'aB', 'Fail.');
end;

procedure TTestPerl.Trial0364;
begin
  Execute('(?i:a)b', [], 'ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0365;
begin
  Execute('((?i:a))b', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0366;
begin
  Execute('(?i:a)b', [], 'Ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0367;
begin
  Execute('((?i:a))b', [], 'Ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0368;
begin
  Execute('(?i:a)b', [], 'aB', 'Fail.');
end;

procedure TTestPerl.Trial0369;
begin
  Execute('((?i:a))b', [], 'aB', 'Fail.');
end;

procedure TTestPerl.Trial0370;
begin
  Execute('(?:(?-i)a)b', [roIgnoreCase], 'ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0371;
begin
  Execute('((?-i)a)b', [roIgnoreCase], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0372;
begin
  Execute('(?:(?-i)a)b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0373;
begin
  Execute('((?-i)a)b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0374;
begin
  Execute('(?:(?-i)a)b', [roIgnoreCase], 'Ab', 'Fail.');
end;

procedure TTestPerl.Trial0375;
begin
  Execute('((?-i)a)b', [roIgnoreCase], 'Ab', 'Fail.');
end;

procedure TTestPerl.Trial0376;
begin
  Execute('(?:(?-i)a)b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0377;
begin
  Execute('((?-i)a)b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0378;
begin
  Execute('(?:(?-i)a)b', [roIgnoreCase], 'AB', 'Fail.');
end;

procedure TTestPerl.Trial0379;
begin
  Execute('((?-i)a)b', [roIgnoreCase], 'AB', 'Fail.');
end;

procedure TTestPerl.Trial0380;
begin
  Execute('(?-i:a)b', [roIgnoreCase], 'ab', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0381;
begin
  Execute('((?-i:a))b', [roIgnoreCase], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0382;
begin
  Execute('(?-i:a)b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0383;
begin
  Execute('((?-i:a))b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0384;
begin
  Execute('(?-i:a)b', [roIgnoreCase], 'Ab', 'Fail.');
end;

procedure TTestPerl.Trial0385;
begin
  Execute('((?-i:a))b', [roIgnoreCase], 'Ab', 'Fail.');
end;

procedure TTestPerl.Trial0386;
begin
  Execute('(?-i:a)b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0387;
begin
  Execute('((?-i:a))b', [roIgnoreCase], 'aB', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0388;
begin
  Execute('(?-i:a)b', [roIgnoreCase], 'AB', 'Fail.');
end;

procedure TTestPerl.Trial0389;
begin
  Execute('((?-i:a))b', [roIgnoreCase], 'AB', 'Fail.');
end;

procedure TTestPerl.Trial0390;
begin
  Execute('((?-i:a.))b', [roIgnoreCase], 'a'#10'B', 'Fail.');
end;

procedure TTestPerl.Trial0391;
begin
  Execute('((?s-i:a.))b', [roIgnoreCase], 'a'#10'B', 'Pass. Group[0]=(0,3) Group[1]=(0,2)');
end;

procedure TTestPerl.Trial0392;
begin
  Execute('((?s-i:a.))b', [roIgnoreCase], 'B'#10'B', 'Fail.');
end;

procedure TTestPerl.Trial0393;
begin
  Execute('(?:c|d)(?:)(?:a(?:)(?:b)(?:b(?:))(?:b(?:)(?:b)))', [], 'cabbbb', 'Pass. Group[0]=(0,6)');
end;

procedure TTestPerl.Trial0394;
begin
  Execute('(?:c|d)(?:)(?:aaaaaaaa(?:)(?:bbbbbbbb)(?:bbbbbbbb(?:))(?:bbbbbbbb(?:)(?:bbbbbbbb)))', [], 'caaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'Pass. Group[0]=(0,41)');
end;

procedure TTestPerl.Trial0395;
begin
  Execute('(ab)\d\1', [roIgnoreCase], 'Ab4ab', 'Pass. Group[0]=(0,5) Group[1]=(0,2)');
end;

procedure TTestPerl.Trial0396;
begin
  Execute('(ab)\d\1', [roIgnoreCase], 'ab4Ab', 'Pass. Group[0]=(0,5) Group[1]=(0,2)');
end;

procedure TTestPerl.Trial0397;
begin
  Execute('foo\w*\d{4}baz', [], 'foobar1234baz', 'Pass. Group[0]=(0,13)');
end;

procedure TTestPerl.Trial0398;
begin
  Execute('x(~~)*(?:(?:F)?)?', [], 'x~~', 'Pass. Group[0]=(0,3) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0399;
begin
  Execute('^a(?#xxx){3}c', [], 'aaac', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0400;
begin
  Execute('(?<![cd])b', [], 'dbcb', 'Fail.');
end;

procedure TTestPerl.Trial0401;
begin
  Execute('(?<![cd])[ab]', [], 'dbaacb', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0402;
begin
  Execute('(?<!(c|d))b', [], 'dbcb', 'Fail.');
end;

procedure TTestPerl.Trial0403;
begin
  Execute('(?<!(c|d))[ab]', [], 'dbaacb', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0404;
begin
  Execute('(?<!cd)[ab]', [], 'cdaccb', 'Pass. Group[0]=(5,1)');
end;

procedure TTestPerl.Trial0405;
begin
  Execute('^(?:a?b?)*$', [], 'a--', 'Fail.');
end;

procedure TTestPerl.Trial0406;
begin
  Execute('((?s)^a(.))((?m)^b$)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(0,3) Group[1]=(0,2) Group[2]=(1,1) Group[3]=(2,1)');
end;

procedure TTestPerl.Trial0407;
begin
  Execute('((?m)^b$)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(2,1) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0408;
begin
  Execute('(?m)^b', [], 'a'#10'b'#10'', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0409;
begin
  Execute('(?m)^(b)', [], 'a'#10'b'#10'', 'Pass. Group[0]=(2,1) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0410;
begin
  Execute('((?m)^b)', [], 'a'#10'b'#10'', 'Pass. Group[0]=(2,1) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0411;
begin
  Execute('\n((?m)^b)', [], 'a'#10'b'#10'', 'Pass. Group[0]=(1,2) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0412;
begin
  Execute('((?s).)c(?!.)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(3,2) Group[1]=(3,1)');
end;

procedure TTestPerl.Trial0413;
begin
  Execute('((?s).)c(?!.)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(3,2) Group[1]=(3,1)');
end;

procedure TTestPerl.Trial0414;
begin
  Execute('((?s)b.)c(?!.)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(2,3) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0415;
begin
  Execute('((?s)b.)c(?!.)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(2,3) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0416;
begin
  Execute('^b', [], 'a'#10'b'#10'c'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0417;
begin
  Execute('()^b', [], 'a'#10'b'#10'c'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0418;
begin
  Execute('((?m)^b)', [], 'a'#10'b'#10'c'#10'', 'Pass. Group[0]=(2,1) Group[1]=(2,1)');
end;

procedure TTestPerl.Trial0419;
begin
  Execute('(x)?(?(1)a|b)', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0420;
begin
  Execute('(x)?(?(1)b|a)', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0421;
begin
  Execute('()?(?(1)b|a)', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0422;
begin
  Execute('()(?(1)b|a)', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0423;
begin
  Execute('()?(?(1)a|b)', [], 'a', 'Pass. Group[0]=(0,1) Group[1]=(0,0)');
end;

procedure TTestPerl.Trial0424;
begin
  Execute('^(\()?blah(?(1)(\)))$', [], '(blah)', 'Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(5,1)');
end;

procedure TTestPerl.Trial0425;
begin
  Execute('^(\()?blah(?(1)(\)))$', [], 'blah', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0426;
begin
  Execute('^(\()?blah(?(1)(\)))$', [], 'blah)', 'Fail.');
end;

procedure TTestPerl.Trial0427;
begin
  Execute('^(\()?blah(?(1)(\)))$', [], '(blah', 'Fail.');
end;

procedure TTestPerl.Trial0428;
begin
  Execute('^(\(+)?blah(?(1)(\)))$', [], '(blah)', 'Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(5,1)');
end;

procedure TTestPerl.Trial0429;
begin
  Execute('^(\(+)?blah(?(1)(\)))$', [], 'blah', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0430;
begin
  Execute('^(\(+)?blah(?(1)(\)))$', [], 'blah)', 'Fail.');
end;

procedure TTestPerl.Trial0431;
begin
  Execute('^(\(+)?blah(?(1)(\)))$', [], '(blah', 'Fail.');
end;

procedure TTestPerl.Trial0432;
begin
  Execute('(?(1)a|b|c)', [], 'a', 'Error.');
end;

procedure TTestPerl.Trial0433;
begin
  Execute('(?(?!a)a|b)', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0434;
begin
  Execute('(?(?!a)b|a)', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0435;
begin
  Execute('(?(?=a)b|a)', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0436;
begin
  Execute('(?(?=a)a|b)', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0437;
begin
  Execute('(?=(a+?))(\1ab)', [], 'aaab', 'Pass. Group[0]=(1,3) Group[1]=(1,1) Group[2]=(1,3)');
end;

procedure TTestPerl.Trial0438;
begin
  Execute('^(?=(a+?))\1ab', [], 'aaab', 'Fail.');
end;

procedure TTestPerl.Trial0439;
begin
  Execute('(\w+:)+', [], 'one:', 'Pass. Group[0]=(0,4) Group[1]=(0,4)');
end;

procedure TTestPerl.Trial0440;
begin
  Execute('$(?<=^(a))', [], 'a', 'Pass. Group[0]=(1,0) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0441;
begin
  Execute('(?=(a+?))(\1ab)', [], 'aaab', 'Pass. Group[0]=(1,3) Group[1]=(1,1) Group[2]=(1,3)');
end;

procedure TTestPerl.Trial0442;
begin
  Execute('^(?=(a+?))\1ab', [], 'aaab', 'Fail.');
end;

procedure TTestPerl.Trial0443;
begin
  Execute('([\w:]+::)?(\w+)$', [], 'abcd:', 'Fail.');
end;

procedure TTestPerl.Trial0444;
begin
  Execute('([\w:]+::)?(\w+)$', [], 'abcd', 'Pass. Group[0]=(0,4) Group[2]=(0,4)');
end;

procedure TTestPerl.Trial0445;
begin
  Execute('([\w:]+::)?(\w+)$', [], 'xy:z:::abcd', 'Pass. Group[0]=(0,11) Group[1]=(0,7) Group[2]=(7,4)');
end;

procedure TTestPerl.Trial0446;
begin
  Execute('^[^bcd]*(c+)', [], 'aexycd', 'Pass. Group[0]=(0,5) Group[1]=(4,1)');
end;

procedure TTestPerl.Trial0447;
begin
  Execute('(a*)b+', [], 'caab', 'Pass. Group[0]=(1,3) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0448;
begin
  Execute('([\w:]+::)?(\w+)$', [], 'abcd:', 'Fail.');
end;

procedure TTestPerl.Trial0449;
begin
  Execute('([\w:]+::)?(\w+)$', [], 'abcd', 'Pass. Group[0]=(0,4) Group[2]=(0,4)');
end;

procedure TTestPerl.Trial0450;
begin
  Execute('([\w:]+::)?(\w+)$', [], 'xy:z:::abcd', 'Pass. Group[0]=(0,11) Group[1]=(0,7) Group[2]=(7,4)');
end;

procedure TTestPerl.Trial0451;
begin
  Execute('^[^bcd]*(c+)', [], 'aexycd', 'Pass. Group[0]=(0,5) Group[1]=(4,1)');
end;

procedure TTestPerl.Trial0452;
begin
  Execute('(>a+)ab', [], 'aaab', 'Fail.');
end;

procedure TTestPerl.Trial0453;
begin
  Execute('(?>a+)b', [], 'aaab', 'Pass. Group[0]=(0,4)');
end;

procedure TTestPerl.Trial0454;
begin
  Execute('([[:]+)', [], 'a:[b]:', 'Pass. Group[0]=(1,2) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0455;
begin
  Execute('([[=]+)', [], 'a=[b]=', 'Pass. Group[0]=(1,2) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0456;
begin
  Execute('([[.]+)', [], 'a.[b].', 'Pass. Group[0]=(1,2) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0457;
begin
  Execute('[a[:]b[:c]', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0458;
begin
  Execute('[a[:]b[:c]', [], 'abc', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0459;
begin
  Execute('((?>a+)b)', [], 'aaab', 'Pass. Group[0]=(0,4) Group[1]=(0,4)');
end;

procedure TTestPerl.Trial0460;
begin
  Execute('(?>(a+))b', [], 'aaab', 'Pass. Group[0]=(0,4) Group[1]=(0,3)');
end;

procedure TTestPerl.Trial0461;
begin
  Execute('((?>[^()]+)|\([^()]*\))+', [], '((abc(ade)ufh()()x', 'Pass. Group[0]=(2,16) Group[1]=(17,1)');
end;

procedure TTestPerl.Trial0462;
begin
  Execute('a{37,17}', [], '-', 'Error.');
end;

procedure TTestPerl.Trial0463;
begin
  Execute('\Z', [], 'a'#10'b'#10'', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0464;
begin
  Execute('\z', [], 'a'#10'b'#10'', 'Pass. Group[0]=(4,0)');
end;

procedure TTestPerl.Trial0465;
begin
  Execute('$', [], 'a'#10'b'#10'', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0466;
begin
  Execute('\Z', [], 'b'#10'a'#10'', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0467;
begin
  Execute('\z', [], 'b'#10'a'#10'', 'Pass. Group[0]=(4,0)');
end;

procedure TTestPerl.Trial0468;
begin
  Execute('$', [], 'b'#10'a'#10'', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0469;
begin
  Execute('\Z', [], 'b'#10'a', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0470;
begin
  Execute('\z', [], 'b'#10'a', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0471;
begin
  Execute('$', [], 'b'#10'a', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0472;
begin
  Execute('\Z', [roMultiline], 'a'#10'b'#10'', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0473;
begin
  Execute('\z', [roMultiline], 'a'#10'b'#10'', 'Pass. Group[0]=(4,0)');
end;

procedure TTestPerl.Trial0474;
begin
  Execute('$', [roMultiline], 'a'#10'b'#10'', 'Pass. Group[0]=(1,0)');
end;

procedure TTestPerl.Trial0475;
begin
  Execute('\Z', [roMultiline], 'b'#10'a'#10'', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0476;
begin
  Execute('\z', [roMultiline], 'b'#10'a'#10'', 'Pass. Group[0]=(4,0)');
end;

procedure TTestPerl.Trial0477;
begin
  Execute('$', [roMultiline], 'b'#10'a'#10'', 'Pass. Group[0]=(1,0)');
end;

procedure TTestPerl.Trial0478;
begin
  Execute('\Z', [roMultiline], 'b'#10'a', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0479;
begin
  Execute('\z', [roMultiline], 'b'#10'a', 'Pass. Group[0]=(3,0)');
end;

procedure TTestPerl.Trial0480;
begin
  Execute('$', [roMultiline], 'b'#10'a', 'Pass. Group[0]=(1,0)');
end;

procedure TTestPerl.Trial0481;
begin
  Execute('a\Z', [], 'a'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0482;
begin
  Execute('a\z', [], 'a'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0483;
begin
  Execute('a$', [], 'a'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0484;
begin
  Execute('a\Z', [], 'b'#10'a'#10'', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0485;
begin
  Execute('a\z', [], 'b'#10'a'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0486;
begin
  Execute('a$', [], 'b'#10'a'#10'', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0487;
begin
  Execute('a\Z', [], 'b'#10'a', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0488;
begin
  Execute('a\z', [], 'b'#10'a', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0489;
begin
  Execute('a$', [], 'b'#10'a', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0490;
begin
  Execute('a\z', [roMultiline], 'a'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0491;
begin
  Execute('a$', [roMultiline], 'a'#10'b'#10'', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0492;
begin
  Execute('a\Z', [roMultiline], 'b'#10'a'#10'', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0493;
begin
  Execute('a\z', [roMultiline], 'b'#10'a'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0494;
begin
  Execute('a$', [roMultiline], 'b'#10'a'#10'', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0495;
begin
  Execute('a\Z', [roMultiline], 'b'#10'a', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0496;
begin
  Execute('a\z', [roMultiline], 'b'#10'a', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0497;
begin
  Execute('a$', [roMultiline], 'b'#10'a', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0498;
begin
  Execute('aa\Z', [], 'aa'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0499;
begin
  Execute('aa\z', [], 'aa'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0500;
begin
  Execute('aa$', [], 'aa'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0501;
begin
  Execute('aa\Z', [], 'b'#10'aa'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0502;
begin
  Execute('aa\z', [], 'b'#10'aa'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0503;
begin
  Execute('aa$', [], 'b'#10'aa'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0504;
begin
  Execute('aa\Z', [], 'b'#10'aa', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0505;
begin
  Execute('aa\z', [], 'b'#10'aa', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0506;
begin
  Execute('aa$', [], 'b'#10'aa', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0507;
begin
  Execute('aa\z', [roMultiline], 'aa'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0508;
begin
  Execute('aa$', [roMultiline], 'aa'#10'b'#10'', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0509;
begin
  Execute('aa\Z', [roMultiline], 'b'#10'aa'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0510;
begin
  Execute('aa\z', [roMultiline], 'b'#10'aa'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0511;
begin
  Execute('aa$', [roMultiline], 'b'#10'aa'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0512;
begin
  Execute('aa\Z', [roMultiline], 'b'#10'aa', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0513;
begin
  Execute('aa\z', [roMultiline], 'b'#10'aa', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0514;
begin
  Execute('aa$', [roMultiline], 'b'#10'aa', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0515;
begin
  Execute('aa\Z', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0516;
begin
  Execute('aa\z', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0517;
begin
  Execute('aa$', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0518;
begin
  Execute('aa\Z', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0519;
begin
  Execute('aa\z', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0520;
begin
  Execute('aa$', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0521;
begin
  Execute('aa\Z', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0522;
begin
  Execute('aa\z', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0523;
begin
  Execute('aa$', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0524;
begin
  Execute('aa\Z', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0525;
begin
  Execute('aa\z', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0526;
begin
  Execute('aa$', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0527;
begin
  Execute('aa\Z', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0528;
begin
  Execute('aa\z', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0529;
begin
  Execute('aa$', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0530;
begin
  Execute('aa\Z', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0531;
begin
  Execute('aa\z', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0532;
begin
  Execute('aa$', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0533;
begin
  Execute('aa\Z', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0534;
begin
  Execute('aa\z', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0535;
begin
  Execute('aa$', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0536;
begin
  Execute('aa\Z', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0537;
begin
  Execute('aa\z', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0538;
begin
  Execute('aa$', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0539;
begin
  Execute('aa\Z', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0540;
begin
  Execute('aa\z', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0541;
begin
  Execute('aa$', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0542;
begin
  Execute('aa\Z', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0543;
begin
  Execute('aa\z', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0544;
begin
  Execute('aa$', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0545;
begin
  Execute('aa\Z', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0546;
begin
  Execute('aa\z', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0547;
begin
  Execute('aa$', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0548;
begin
  Execute('aa\Z', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0549;
begin
  Execute('aa\z', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0550;
begin
  Execute('aa$', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0551;
begin
  Execute('ab\Z', [], 'ab'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0552;
begin
  Execute('ab\z', [], 'ab'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0553;
begin
  Execute('ab$', [], 'ab'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0554;
begin
  Execute('ab\Z', [], 'b'#10'ab'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0555;
begin
  Execute('ab\z', [], 'b'#10'ab'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0556;
begin
  Execute('ab$', [], 'b'#10'ab'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0557;
begin
  Execute('ab\Z', [], 'b'#10'ab', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0558;
begin
  Execute('ab\z', [], 'b'#10'ab', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0559;
begin
  Execute('ab$', [], 'b'#10'ab', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0560;
begin
  Execute('ab\z', [roMultiline], 'ab'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0561;
begin
  Execute('ab$', [roMultiline], 'ab'#10'b'#10'', 'Pass. Group[0]=(0,2)');
end;

procedure TTestPerl.Trial0562;
begin
  Execute('ab\Z', [roMultiline], 'b'#10'ab'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0563;
begin
  Execute('ab\z', [roMultiline], 'b'#10'ab'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0564;
begin
  Execute('ab$', [roMultiline], 'b'#10'ab'#10'', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0565;
begin
  Execute('ab\Z', [roMultiline], 'b'#10'ab', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0566;
begin
  Execute('ab\z', [roMultiline], 'b'#10'ab', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0567;
begin
  Execute('ab$', [roMultiline], 'b'#10'ab', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0568;
begin
  Execute('ab\Z', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0569;
begin
  Execute('ab\z', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0570;
begin
  Execute('ab$', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0571;
begin
  Execute('ab\Z', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0572;
begin
  Execute('ab\z', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0573;
begin
  Execute('ab$', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0574;
begin
  Execute('ab\Z', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0575;
begin
  Execute('ab\z', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0576;
begin
  Execute('ab$', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0577;
begin
  Execute('ab\Z', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0578;
begin
  Execute('ab\z', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0579;
begin
  Execute('ab$', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0580;
begin
  Execute('ab\Z', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0581;
begin
  Execute('ab\z', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0582;
begin
  Execute('ab$', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0583;
begin
  Execute('ab\Z', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0584;
begin
  Execute('ab\z', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0585;
begin
  Execute('ab$', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0586;
begin
  Execute('ab\Z', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0587;
begin
  Execute('ab\z', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0588;
begin
  Execute('ab$', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0589;
begin
  Execute('ab\Z', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0590;
begin
  Execute('ab\z', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0591;
begin
  Execute('ab$', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0592;
begin
  Execute('ab\Z', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0593;
begin
  Execute('ab\z', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0594;
begin
  Execute('ab$', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0595;
begin
  Execute('ab\Z', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0596;
begin
  Execute('ab\z', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0597;
begin
  Execute('ab$', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0598;
begin
  Execute('ab\Z', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0599;
begin
  Execute('ab\z', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0600;
begin
  Execute('ab$', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0601;
begin
  Execute('ab\Z', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0602;
begin
  Execute('ab\z', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0603;
begin
  Execute('ab$', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0604;
begin
  Execute('abb\Z', [], 'abb'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0605;
begin
  Execute('abb\z', [], 'abb'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0606;
begin
  Execute('abb$', [], 'abb'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0607;
begin
  Execute('abb\Z', [], 'b'#10'abb'#10'', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0608;
begin
  Execute('abb\z', [], 'b'#10'abb'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0609;
begin
  Execute('abb$', [], 'b'#10'abb'#10'', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0610;
begin
  Execute('abb\Z', [], 'b'#10'abb', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0611;
begin
  Execute('abb\z', [], 'b'#10'abb', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0612;
begin
  Execute('abb$', [], 'b'#10'abb', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0613;
begin
  Execute('abb\z', [roMultiline], 'abb'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0614;
begin
  Execute('abb$', [roMultiline], 'abb'#10'b'#10'', 'Pass. Group[0]=(0,3)');
end;

procedure TTestPerl.Trial0615;
begin
  Execute('abb\Z', [roMultiline], 'b'#10'abb'#10'', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0616;
begin
  Execute('abb\z', [roMultiline], 'b'#10'abb'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0617;
begin
  Execute('abb$', [roMultiline], 'b'#10'abb'#10'', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0618;
begin
  Execute('abb\Z', [roMultiline], 'b'#10'abb', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0619;
begin
  Execute('abb\z', [roMultiline], 'b'#10'abb', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0620;
begin
  Execute('abb$', [roMultiline], 'b'#10'abb', 'Pass. Group[0]=(2,3)');
end;

procedure TTestPerl.Trial0621;
begin
  Execute('abb\Z', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0622;
begin
  Execute('abb\z', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0623;
begin
  Execute('abb$', [], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0624;
begin
  Execute('abb\Z', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0625;
begin
  Execute('abb\z', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0626;
begin
  Execute('abb$', [], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0627;
begin
  Execute('abb\Z', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0628;
begin
  Execute('abb\z', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0629;
begin
  Execute('abb$', [], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0630;
begin
  Execute('abb\Z', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0631;
begin
  Execute('abb\z', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0632;
begin
  Execute('abb$', [roMultiline], 'ac'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0633;
begin
  Execute('abb\Z', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0634;
begin
  Execute('abb\z', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0635;
begin
  Execute('abb$', [roMultiline], 'b'#10'ac'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0636;
begin
  Execute('abb\Z', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0637;
begin
  Execute('abb\z', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0638;
begin
  Execute('abb$', [roMultiline], 'b'#10'ac', 'Fail.');
end;

procedure TTestPerl.Trial0639;
begin
  Execute('abb\Z', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0640;
begin
  Execute('abb\z', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0641;
begin
  Execute('abb$', [], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0642;
begin
  Execute('abb\Z', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0643;
begin
  Execute('abb\z', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0644;
begin
  Execute('abb$', [], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0645;
begin
  Execute('abb\Z', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0646;
begin
  Execute('abb\z', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0647;
begin
  Execute('abb$', [], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0648;
begin
  Execute('abb\Z', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0649;
begin
  Execute('abb\z', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0650;
begin
  Execute('abb$', [roMultiline], 'ca'#10'b'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0651;
begin
  Execute('abb\Z', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0652;
begin
  Execute('abb\z', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0653;
begin
  Execute('abb$', [roMultiline], 'b'#10'ca'#10'', 'Fail.');
end;

procedure TTestPerl.Trial0654;
begin
  Execute('abb\Z', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0655;
begin
  Execute('abb\z', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0656;
begin
  Execute('abb$', [roMultiline], 'b'#10'ca', 'Fail.');
end;

procedure TTestPerl.Trial0657;
begin
  Execute('(^|x)(c)', [], 'ca', 'Pass. Group[0]=(0,1) Group[1]=(0,0) Group[2]=(0,1)');
end;

procedure TTestPerl.Trial0658;
begin
  Execute('a*abc?xyz+pqr{3}ab{2,}xy{4,5}pq{0,6}AB{0,}zz', [], 'x', 'Fail.');
end;

procedure TTestPerl.Trial0659;
begin
  Execute('round\(((?>[^()]+))\)', [], '_I(round(xs * sz),1)', 'Pass. Group[0]=(3,14) Group[1]=(9,7)');
end;

procedure TTestPerl.Trial0660;
begin
  Execute('foo.bart', [], 'foo.bart', 'Pass. Group[0]=(0,8)');
end;

procedure TTestPerl.Trial0661;
begin
  Execute('^d[x][x][x]', [roMultiline], 'abcd'#10'dxxx', 'Pass. Group[0]=(5,4)');
end;

procedure TTestPerl.Trial0662;
begin
  Execute('.X(.+)+X', [], 'bbbbXcXaaaaaaaa', 'Pass. Group[0]=(3,4) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0663;
begin
  Execute('.X(.+)+XX', [], 'bbbbXcXXaaaaaaaa', 'Pass. Group[0]=(3,5) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0664;
begin
  Execute('.XX(.+)+X', [], 'bbbbXXcXaaaaaaaa', 'Pass. Group[0]=(3,5) Group[1]=(6,1)');
end;

procedure TTestPerl.Trial0665;
begin
  Execute('.X(.+)+X', [], 'bbbbXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0666;
begin
  Execute('.X(.+)+XX', [], 'bbbbXXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0667;
begin
  Execute('.XX(.+)+X', [], 'bbbbXXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0668;
begin
  Execute('.X(.+)+[X]', [], 'bbbbXcXaaaaaaaa', 'Pass. Group[0]=(3,4) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0669;
begin
  Execute('.X(.+)+[X][X]', [], 'bbbbXcXXaaaaaaaa', 'Pass. Group[0]=(3,5) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0670;
begin
  Execute('.XX(.+)+[X]', [], 'bbbbXXcXaaaaaaaa', 'Pass. Group[0]=(3,5) Group[1]=(6,1)');
end;

procedure TTestPerl.Trial0671;
begin
  Execute('.X(.+)+[X]', [], 'bbbbXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0672;
begin
  Execute('.X(.+)+[X][X]', [], 'bbbbXXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0673;
begin
  Execute('.XX(.+)+[X]', [], 'bbbbXXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0674;
begin
  Execute('.[X](.+)+[X]', [], 'bbbbXcXaaaaaaaa', 'Pass. Group[0]=(3,4) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0675;
begin
  Execute('.[X](.+)+[X][X]', [], 'bbbbXcXXaaaaaaaa', 'Pass. Group[0]=(3,5) Group[1]=(5,1)');
end;

procedure TTestPerl.Trial0676;
begin
  Execute('.[X][X](.+)+[X]', [], 'bbbbXXcXaaaaaaaa', 'Pass. Group[0]=(3,5) Group[1]=(6,1)');
end;

procedure TTestPerl.Trial0677;
begin
  Execute('.[X](.+)+[X]', [], 'bbbbXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0678;
begin
  Execute('.[X](.+)+[X][X]', [], 'bbbbXXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0679;
begin
  Execute('.[X][X](.+)+[X]', [], 'bbbbXXXaaaaaaaaa', 'Fail.');
end;

procedure TTestPerl.Trial0680;
begin
  Execute('tt+$', [], 'xxxtt', 'Pass. Group[0]=(3,2)');
end;

procedure TTestPerl.Trial0681;
begin
  Execute('([\d-z]+)', [], 'a0-za', 'Pass. Group[0]=(1,3) Group[1]=(1,3)');
end;

procedure TTestPerl.Trial0682;
begin
  Execute('([\d-\s]+)', [], 'a0- z', 'Pass. Group[0]=(1,3) Group[1]=(1,3)');
end;

procedure TTestPerl.Trial0683;
begin
  Execute('\GX.*X', [], 'aaaXbX', 'Fail.');
end;

procedure TTestPerl.Trial0684;
begin
  Execute('(\d+\.\d+)', [], '3.1415926', 'Pass. Group[0]=(0,9) Group[1]=(0,9)');
end;

procedure TTestPerl.Trial0685;
begin
  Execute('(\ba.{0,10}br)', [], 'have a web browser', 'Pass. Group[0]=(5,8) Group[1]=(5,8)');
end;

procedure TTestPerl.Trial0686;
begin
  Execute('\.c(pp|xx|c)?$', [roIgnoreCase], 'Changes', 'Fail.');
end;

procedure TTestPerl.Trial0687;
begin
  Execute('\.c(pp|xx|c)?$', [roIgnoreCase], 'IO.c', 'Pass. Group[0]=(2,2)');
end;

procedure TTestPerl.Trial0688;
begin
  Execute('(\.c(pp|xx|c)?$)', [roIgnoreCase], 'IO.c', 'Pass. Group[0]=(2,2) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0689;
begin
  Execute('^([a-z]:)', [], 'C:/', 'Fail.');
end;

procedure TTestPerl.Trial0690;
begin
  Execute('^\S\s+aa$', [roMultiline], ''#10'x aa', 'Pass. Group[0]=(1,4)');
end;

procedure TTestPerl.Trial0691;
begin
  Execute('(^|a)b', [], 'ab', 'Pass. Group[0]=(0,2) Group[1]=(0,1)');
end;

procedure TTestPerl.Trial0692;
begin
  Execute('^([ab]*?)(b)?(c)$', [], 'abac', 'Pass. Group[0]=(0,4) Group[1]=(0,3) Group[3]=(3,1)');
end;

procedure TTestPerl.Trial0693;
begin
  Execute('(\w)?(abc)\1b', [], 'abcab', 'Fail.');
end;

procedure TTestPerl.Trial0694;
begin
  Execute('^(?:.,){2}c', [], 'a,b,c', 'Pass. Group[0]=(0,5)');
end;

procedure TTestPerl.Trial0695;
begin
  Execute('^(.,){2}c', [], 'a,b,c', 'Pass. Group[0]=(0,5) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0696;
begin
  Execute('^(?:[^,]*,){2}c', [], 'a,b,c', 'Pass. Group[0]=(0,5)');
end;

procedure TTestPerl.Trial0697;
begin
  Execute('^([^,]*,){2}c', [], 'a,b,c', 'Pass. Group[0]=(0,5) Group[1]=(2,2)');
end;

procedure TTestPerl.Trial0698;
begin
  Execute('^([^,]*,){3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0699;
begin
  Execute('^([^,]*,){3,}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0700;
begin
  Execute('^([^,]*,){0,3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0701;
begin
  Execute('^([^,]{1,3},){3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0702;
begin
  Execute('^([^,]{1,3},){3,}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0703;
begin
  Execute('^([^,]{1,3},){0,3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0704;
begin
  Execute('^([^,]{1,},){3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0705;
begin
  Execute('^([^,]{1,},){3,}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0706;
begin
  Execute('^([^,]{1,},){0,3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0707;
begin
  Execute('^([^,]{0,3},){3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0708;
begin
  Execute('^([^,]{0,3},){3,}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0709;
begin
  Execute('^([^,]{0,3},){0,3}d', [], 'aaa,b,c,d', 'Pass. Group[0]=(0,9) Group[1]=(6,2)');
end;

procedure TTestPerl.Trial0710;
begin
  Execute('(?i)', [], '', 'Pass. Group[0]=(0,0)');
end;

procedure TTestPerl.Trial0711;
begin
  Execute('(?!\A)x', [roMultiline], 'a'#10'xb'#10'', 'Pass. Group[0]=(2,1)');
end;

procedure TTestPerl.Trial0712;
begin
  Execute('^(a(b)?)+$', [], 'aba', 'Pass. Group[0]=(0,3) Group[1]=(2,1) Group[2]=(1,1)');
end;

procedure TTestPerl.Trial0713;
begin
  Execute('^(aa(bb)?)+$', [], 'aabbaa', 'Pass. Group[0]=(0,6) Group[1]=(4,2) Group[2]=(2,2)');
end;

procedure TTestPerl.Trial0714;
begin
  Execute('^.{9}abc.*\n', [roMultiline], '123'#10'abcabcabcabc'#10'', 'Pass. Group[0]=(4,13)');
end;

procedure TTestPerl.Trial0715;
begin
  Execute('^(a)?a$', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0716;
begin
  Execute('^(a)?(?(1)a|b)+$', [], 'a', 'Fail.');
end;

procedure TTestPerl.Trial0717;
begin
  Execute('^(a\1?)(a\1?)(a\2?)(a\3?)$', [], 'aaaaaa', 'Pass. Group[0]=(0,6) Group[1]=(0,1) Group[2]=(1,2) Group[3]=(3,1) Group[4]=(4,2)');
end;

procedure TTestPerl.Trial0718;
begin
  Execute('^(a\1?){4}$', [], 'aaaaaa', 'Pass. Group[0]=(0,6) Group[1]=(4,2)');
end;

procedure TTestPerl.Trial0719;
begin
  Execute('^(0+)?(?:x(1))?', [], 'x1', 'Pass. Group[0]=(0,2) Group[2]=(1,1)');
end;

procedure TTestPerl.Trial0720;
begin
  Execute('^([0-9a-fA-F]+)(?:x([0-9a-fA-F]+)?)(?:x([0-9a-fA-F]+))?', [], '012cxx0190', 'Pass. Group[0]=(0,10) Group[1]=(0,4) Group[3]=(6,4)');
end;

procedure TTestPerl.Trial0721;
begin
  Execute('^(b+?|a){1,2}c', [], 'bbbac', 'Pass. Group[0]=(0,5) Group[1]=(3,1)');
end;

procedure TTestPerl.Trial0722;
begin
  Execute('^(b+?|a){1,2}c', [], 'bbbbac', 'Pass. Group[0]=(0,6) Group[1]=(4,1)');
end;

procedure TTestPerl.Trial0723;
begin
  Execute('\((\w\. \w+)\)', [], 'cd. (A. Tw)', 'Pass. Group[0]=(4,7) Group[1]=(5,5)');
end;

procedure TTestPerl.Trial0724;
begin
  Execute('((?:aaaa|bbbb)cccc)?', [], 'aaaacccc', 'Pass. Group[0]=(0,8) Group[1]=(0,8)');
end;

procedure TTestPerl.Trial0725;
begin
  Execute('((?:aaaa|bbbb)cccc)?', [], 'bbbbcccc', 'Pass. Group[0]=(0,8) Group[1]=(0,8)');
end;

procedure TTestPerl.Trial0726;
begin
  Execute('^(foo)|(bar)$', [], 'foobar', 'Pass. Group[0]=(0,3) Group[1]=(0,3)');
end;

procedure TTestPerl.Trial0727;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[n]', 'Pass. Group[0]=(0,3) Group[1]=(1,1)');
end;

procedure TTestPerl.Trial0728;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 'n', 'Pass. Group[0]=(0,1) Group[2]=(0,1)');
end;

procedure TTestPerl.Trial0729;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 'n[i]e', 'Fail.');
end;

procedure TTestPerl.Trial0730;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[n', 'Fail.');
end;

procedure TTestPerl.Trial0731;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], ']n]', 'Fail.');
end;

procedure TTestPerl.Trial0732;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '\[n\]', 'Fail.');
end;

procedure TTestPerl.Trial0733;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[n\]', 'Pass. Group[0]=(0,4) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0734;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[n\[]', 'Pass. Group[0]=(0,5) Group[1]=(1,3)');
end;

procedure TTestPerl.Trial0735;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[[n]', 'Pass. Group[0]=(0,4) Group[1]=(1,2)');
end;

procedure TTestPerl.Trial0736;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[s] . [n]', 'Pass. Group[0]=(0,9) Group[1]=(1,1) Group[3]=(7,1)');
end;

procedure TTestPerl.Trial0737;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[s] . n', 'Pass. Group[0]=(0,7) Group[1]=(1,1) Group[4]=(6,1)');
end;

procedure TTestPerl.Trial0738;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 's.[ n ]', 'Pass. Group[0]=(0,7) Group[2]=(0,1) Group[3]=(3,3)');
end;

procedure TTestPerl.Trial0739;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], ' . n', 'Pass. Group[0]=(0,4) Group[2]=(0,1) Group[4]=(3,1)');
end;

procedure TTestPerl.Trial0740;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 's. ', 'Pass. Group[0]=(0,3) Group[2]=(0,1) Group[4]=(2,1)');
end;

procedure TTestPerl.Trial0741;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[.]. ', 'Pass. Group[0]=(0,5) Group[1]=(1,1) Group[4]=(4,1)');
end;

procedure TTestPerl.Trial0742;
begin
  Execute('^((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[c].[s].[n]', 'Pass. Group[0]=(0,11) Group[1]=(1,1) Group[3]=(5,1) Group[5]=(9,1)');
end;

procedure TTestPerl.Trial0743;
begin
  Execute('^((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], ' c . s . n ', 'Pass. Group[0]=(0,11) Group[2]=(0,3) Group[4]=(5,2) Group[6]=(9,2)');
end;

procedure TTestPerl.Trial0744;
begin
  Execute('^((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], ' . [.] . [ ]', 'Pass. Group[0]=(0,12) Group[2]=(0,1) Group[3]=(4,1) Group[5]=(10,1)');
end;

procedure TTestPerl.Trial0745;
begin
  Execute('^((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 'c.n', 'Pass. Group[0]=(0,3) Group[2]=(0,1) Group[4]=(2,1)');
end;

procedure TTestPerl.Trial0746;
begin
  Execute('^((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[c] .[n]', 'Pass. Group[0]=(0,8) Group[1]=(1,1) Group[3]=(6,1)');
end;

procedure TTestPerl.Trial0747;
begin
  Execute('^((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 'c.n.', 'Fail.');
end;

procedure TTestPerl.Trial0748;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], 's.c.n', 'Pass. Group[0]=(0,5) Group[2]=(0,1) Group[4]=(2,1) Group[6]=(4,1)');
end;

procedure TTestPerl.Trial0749;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[s].[c].[n]', 'Pass. Group[0]=(0,11) Group[1]=(1,1) Group[3]=(5,1) Group[5]=(9,1)');
end;

procedure TTestPerl.Trial0750;
begin
  Execute('^((\[(?<SCHEMA>[^\]]+)\])|(?<SCHEMA>[^\.\[\]]+))\s*\.\s*((\[(?<CATALOG>[^\]]+)\])|(?<CATALOG>[^\.\[\]]+))\s*\.\s*((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [roIgnoreCase, roExplicitCapture], '[s].[c].', 'Fail.');
end;

procedure TTestPerl.Trial0751;
begin
  Execute('^((\[(?<ColName>.+)\])|(?<ColName>\S+))([ ]+(?<Order>ASC|DESC))?$', [roIgnoreCase, roExplicitCapture], '[id]]', 'Pass. Group[0]=(0,5) Group[1]=(1,3)');
end;

procedure TTestPerl.Trial0752;
begin
  Execute('a{1,65535}', [], 'a', 'Pass. Group[0]=(0,1)');
end;

procedure TTestPerl.Trial0753;
begin
  Execute('^((\[(?<NAME>[^\]]+)\])|(?<NAME>[^\.\[\]]+))$', [], '[a]', 'Pass. Group[0]=(0,3) Group[1]=(0,3) Group[2]=(0,3) Group[3]=(1,1)');
end;

initialization
  RegisterTest(TTestPerl.Suite);

end.