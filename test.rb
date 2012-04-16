# -*- coding: utf-8 -*-

require 'stringio'
require 'test/unit'

# source
$source = ""

class AtCoder_Test < Test::Unit::TestCase

  def original_test source,input_str,output_str
    $stdin = StringIO.new input_str
    $stdout = StringIO.new

    load source

    assert_equal(output_str,$stdout.string)

    $stdin = STDIN
    $stdout.flush
    $sdtout = STDOUT
  end
  
  # add any test use original_test
  #
  # example test code
  #
  # def test_1
  #   input = ""
  #   output = ""
  #   original_test $source,input,output
  # end
end
