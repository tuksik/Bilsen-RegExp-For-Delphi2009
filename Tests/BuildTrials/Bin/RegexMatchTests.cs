new RegexTrial (@"(a)(b)(c)", RegexOptions.ExplicitCapture, "abc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"(a)(?<1>b)(c)", RegexOptions.ExplicitCapture, "abc", "Pass. Group[0]=(0,3) Group[1]=(1,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"(a)(?<2>b)(c)", RegexOptions.None, "abc", "Pass. Group[0]=(0,3) Group[1]=(0,1) Group[1]=(1,1)(2,1)"),
new RegexTrial (@"(a)(?<foo>b)(c)", RegexOptions.ExplicitCapture, "abc", "Pass. Group[0]=(0,3) Group[1]=(1,1)"),
new RegexTrial (@"(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11", RegexOptions.None, "F2345678910LL", "Pass. Group[0]=(0,13) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(3,1) Group[5]=(4,1) Group[6]=(5,1) Group[7]=(6,1) Group[8]=(7,1) Group[9]=(8,1) Group[10]=(9,2) Group[11]=(11,1)"),
new RegexTrial (@"(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11", RegexOptions.ExplicitCapture, "F2345678910LL", "Fail."),
new RegexTrial (@"(F)(2)(3)(4)(5)(6)(?<S>7)(8)(9)(10)(L)\1", RegexOptions.None, "F2345678910L71", "Fail."),
new RegexTrial (@"(F)(2)(3)(4)(5)(6)(7)(8)(9)(10)(L)\11", RegexOptions.None, "F2345678910LF1", "Fail."),
// [NotDotNet, NotWorking] new RegexTrial (@"(F)(2)(3)(4)(5)(6)(?<S>7)(8)(9)(10)(L)\11", RegexOptions.None, "F2345678910L71", "Pass. Group[0]=(0,13) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(3,1) Group[5]=(4,1) Group[6]=(5,1) Group[7]=(7,1) Group[8]=(8,1) Group[9]=(9,2) Group[10]=(11,1) Group[11]=(6,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)\10", RegexOptions.None, "F2345678910L71", "Pass. Group[0]=(0,13) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(4,1) Group[5]=(5,1) Group[6]=(7,1) Group[7]=(8,1) Group[8]=(9,2) Group[9]=(11,1) Group[10]=(3,1)(6,1)"),
// [NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)\10", RegexOptions.ExplicitCapture, "F2345678910L70", "Fail."),
// [NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)\1", RegexOptions.ExplicitCapture, "F2345678910L70", "Pass. Group[0]=(0,13) Group[1]=(3,1)(6,1)"),
// [NotWorking] new RegexTrial (@"(?n:(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)\1)", RegexOptions.None, "F2345678910L70", "Pass. Group[0]=(0,13) Group[1]=(3,1)(6,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)(?(10)\10)", RegexOptions.None, "F2345678910L70","Pass. Group[0]=(0,13) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(4,1) Group[5]=(5,1) Group[6]=(7,1) Group[7]=(8,1) Group[8]=(9,2) Group[9]=(11,1) Group[10]=(3,1)(6,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)(?(S)|\10)", RegexOptions.None, "F2345678910L70","Pass. Group[0]=(0,12) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(4,1) Group[5]=(5,1) Group[6]=(7,1) Group[7]=(8,1) Group[8]=(9,2) Group[9]=(11,1) Group[10]=(3,1)(6,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)(?(7)|\10)", RegexOptions.None, "F2345678910L70","Pass. Group[0]=(0,12) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(4,1) Group[5]=(5,1) Group[6]=(7,1) Group[7]=(8,1) Group[8]=(9,2) Group[9]=(11,1) Group[10]=(3,1)(6,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"(F)(2)(3)(?<S>4)(5)(6)(?'S'7)(8)(9)(10)(L)(?(K)|\10)", RegexOptions.None, "F2345678910L70","Pass. Group[0]=(0,13) Group[1]=(0,1) Group[2]=(1,1) Group[3]=(2,1) Group[4]=(4,1) Group[5]=(5,1) Group[6]=(7,1) Group[7]=(8,1) Group[8]=(9,2) Group[9]=(11,1) Group[10]=(3,1)(6,1)"),
new RegexTrial (@"\P{Hebrew}", RegexOptions.None, "Fì", "Pass. Group[0]=(0,1)"),
// [NotDotNet, NotWorking] new RegexTrial (@"\p{IsHebrew}", RegexOptions.None, "Fì", "Pass. Group[0]=(1,1)"),
// new RegexTrial (@"(?<=a+)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
// new RegexTrial (@"(?<=a*)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(0,4)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
// new RegexTrial (@"(?<=a{1,5})(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
new RegexTrial (@"(?<=a{1})(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"),
// new RegexTrial (@"(?<=a{1,})(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
// new RegexTrial (@"(?<=a+?)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
// new RegexTrial (@"(?<=a*?)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(0,4)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
// new RegexTrial (@"(?<=a{1,5}?)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
new RegexTrial (@"(?<=a{1}?)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"),
new RegexTrial (@"(?<=a{1}?)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(1,3)"),
// new RegexTrial (@"(?<!a+)(?:a)*bc", RegexOptions.None, "aabc", "Pass. Group[0]=(0,4)"), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
// new RegexTrial (@"(?<!a*)(?:a)*bc", RegexOptions.None, "aabc", "Fail."), PCRE cannot compile this: 'lookbehind assertion is not fixed length'
new RegexTrial (@"abc*(?=c*)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,4)"),
new RegexTrial (@"abc*(?=c+)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c{1})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c{1,5})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c{1,})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c*?)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,4)"),
new RegexTrial (@"abc*(?=c+?)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c{1}?)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c{1,5}?)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*(?=c{1,}?)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,3)"),
new RegexTrial (@"abc*?(?=c*)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,2)"),
new RegexTrial (@"abc*?(?=c+)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,2)"),
new RegexTrial (@"abc*?(?=c{1})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,2)"),
new RegexTrial (@"abc*?(?=c{1,5})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,2)"),
new RegexTrial (@"abc*?(?=c{1,})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,2)"),
new RegexTrial (@"abc*(?!c*)", RegexOptions.None, "abcc", "Fail."),
new RegexTrial (@"abc*(?!c+)", RegexOptions.None, "abcc", "Pass. Group[0]=(0,4)"),
new RegexTrial (@"abc*(?!c{1})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,4)"),
new RegexTrial (@"abc*(?!c{1,5})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,4)"),
new RegexTrial (@"abc*(?!c{1,})", RegexOptions.None, "abcc", "Pass. Group[0]=(0,4)"),
// new RegexTrial (@"(a)(?<1>b)(?'1'c)", RegexOptions.ExplicitCapture, "abc", "Pass. Group[0]=(0,3) Group[1]=(1,1)(2,1)"), PCRE cannot compile this: 'two named subpatterns have the same name'
new RegexTrial (@"(?>a*).", RegexOptions.ExplicitCapture, "aaaa", "Fail."),