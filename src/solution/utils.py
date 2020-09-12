"""
Utility module
"""

def find_plan(input_string: str, plans:list) -> list:
  """
  Args:
    input_string (str): input string, example is 'AGG'
    plans (list): a list of plans to select from
  Returns
    relevant_plans (list): list of relevant plans
  """
  ##Create an empty List.
  return_list = []
  for plan in plans:
      if (plan.find(input_string) == -1):
          pass
      else:
          return_list.append(plan)
  return return_list
