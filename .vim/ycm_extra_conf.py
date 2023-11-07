import os
import ycm_core
import logging

BUILD_DIRECTORY = 'build';

def FindNearest(path, target, build_folder=None):
  candidate = os.path.join(path, target)

  if(os.path.isfile(candidate) or os.path.isdir(candidate)):
    logging.info("Found nearest " + target + " at " + candidate)
    return candidate;

  parent = os.path.dirname(os.path.abspath(path));

  if(parent == path):
    logging.info("Stop search")
    return ""

  if(build_folder):
    candidate = os.path.join(parent, build_folder, target)

    if(os.path.isfile(candidate) or os.path.isdir(candidate)):
      logging.info("Found nearest " + target + " in build folder at " + candidate)
      return candidate;

  return FindNearest(parent, target, build_folder)

def CFamilySettings(filename):
  logging.info(f'Looking the compilation database for {filename}')

  leaf = os.path.realpath(filename);
  database_path = FindNearest(leaf, 'compile_commands.json', BUILD_DIRECTORY)

  if os.path.exists(database_path):
    result = {
      'ls': {
        'compilationDatabasePath': os.path.dirname(database_path)
      }
    }
  else:
    logging.warn("No compilation database found")
    result = None

  return result

def Settings(filename, **kwargs):
  if kwargs['language'] == 'cfamily':
    return CFamilySettings(filename)

  return None

