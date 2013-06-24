import os
import sys
import pickle
import argparse
from bottle import route, run, template, static_file

# get current location, set as current location, and append to path
current_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(current_dir)
sys.path.append(current_dir)


@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root=os.path.join(current_dir, "static"))


@route('/')
def index():
    return template('templates/index.tpl')


@route('/about')
def about():
    return template('templates/about.tpl')


@route('/schedule')
def schedule():
    return template('templates/schedule.tpl')


@route('/staff')
@route('/staff/<name>')
def staff(name=None):
    staff_dict = pickle.load(open(current_dir + '/data/staff_info.dat', 'rb'))

    if not name:
        return template('templates/staffdir.tpl')
    elif name not in staff_dict:
        name = 'frankenstein'
        full_name = 'Mr. Monster Frankenstein'
        position = 'Lead Disciplinarian'
        description = """
Mr. Frankenstein comes to the HILT Institute from his native Transilvania,
where he worked as an assistant to his father in his science lab.  In addition
to roaming the countryside terrifying the villiagers, Mr. Frankenstein's
hobbies include cooking, knitting, and grave robbing.
"""
        return template('templates/staffmember.tpl', name=name,
                        full_name=full_name, position=position,
                        description=description)
    else:
        return template('templates/staffmember.tpl', name=name,
                        full_name=staff_dict[name]['full_name'],
                        position=staff_dict[name]['position'],
                        description=staff_dict[name]['description'])


@route('/students')
def students():
    return template('templates/students.tpl')


@route('/academics')
def academics():
    return template('templates/academics.tpl')


@route('/cte')
def cte():
    return template('templates/cte.tpl')


@route('/activities')
def activities():
    return template('templates/activities.tpl')


@route('/calendar')
def calendar():
    return template('templates/calendar.tpl')


@route('/contact')
def contact():
    return template('templates/contact.tpl')


def get_port():
    description = 'A bottle server for the HILT Institute'
    parser = argparse.ArgumentParser(description)
    parser.add_argument('-p', '--port', type=int,
                        help="The port number the server will run on")
    args = parser.parse_args()

    return args.port if args.port else 8080


if __name__ == "__main__":
    run(host="0.0.0.0", port=get_port())
