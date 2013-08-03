require_relative 'template'

describe Template do
  include Template

  it "should substitute %CODE% and %ALTCODE% in the template" do
    template('Code is %CODE%; alt code is %ALTCODE%', '5678901234').should == 'Code is 5678901234; alt code is 56789-012'
  end
  
  it "should not alter either original string" do
    tmpl = 'Code is %CODE%; alt code is %ALTCODE%'
    code = '5678901234'
    template(tmpl,code)
    tmpl.should == 'Code is %CODE%; alt code is %ALTCODE%'
    code.should == '5678901234'
  end
  
end
