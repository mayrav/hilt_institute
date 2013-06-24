import sys
import os
import bottle

import hilt  # This loads your application

bottle.debug(True)
application = bottle.default_app()
