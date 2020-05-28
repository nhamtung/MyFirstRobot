#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/rosbot_description/rosbot_description"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/nhamtung/TungNV/MyFirstRobot/example_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/nhamtung/TungNV/MyFirstRobot/example_ws/install/lib/python2.7/dist-packages:/home/nhamtung/TungNV/MyFirstRobot/example_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/nhamtung/TungNV/MyFirstRobot/example_ws/build" \
    "/usr/bin/python2" \
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/rosbot_description/rosbot_description/setup.py" \
    build --build-base "/home/nhamtung/TungNV/MyFirstRobot/example_ws/build/rosbot_description/rosbot_description" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/nhamtung/TungNV/MyFirstRobot/example_ws/install" --install-scripts="/home/nhamtung/TungNV/MyFirstRobot/example_ws/install/bin"
