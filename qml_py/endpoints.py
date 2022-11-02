from urllib.parse import urljoin

fastAPI = {
    'host': 'http://localhost:8080',
    'entry-points': {
        'start': ('api', 'v1',),
        'login': ('_start', 'auth'),
        'logout': ('_start', 'logout'),

        'get_programs': ('_start', 'programs'),
        'delete_program': ('_start', 'programs/'),
        'create_program': ('_start', 'programs/'),
        'update_program': ('_start', 'programs/'),

        'robot_position': ('_start', 'robot/'),

        'get_settings': ('_start', 'robot/'),
        'get_settings_all': ('_start', 'robot', 'settings'),

    }
}

def parse_entry_points(entry_points):
    for name, path in entry_points.items():
        yield name, list(expand_path(entry_points, name))


def expand_path(entry_points, item):
    path = entry_points[item]
    for item in path:
        if item[0] != '_':
            yield item
        else:
            yield from expand_path(entry_points, item[1:])


ENTRY_POINTS = dict(parse_entry_points(entry_points=fastAPI['entry-points']))


def assemble_url(entry_point):
    parts = ENTRY_POINTS[entry_point]
    return urljoin(fastAPI['host'], '/'.join(parts))
