Feature: Bad arguments

Scenario: Non existent file
  When I run pairwise file_with_does_not_exist
  And I should see in the errors
  """
  No such file or directory
  """

Scenario: Existing folder
  When I run pairwise ../bin/
  And I should see in the output
  """
  Usage: pairwise
  """