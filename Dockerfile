# VICLEO on Apache Tomcat 8.5
# Copyright (C) 2017 José Antonio López <dev@kstromeiraos.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM tomcat:8.5-alpine

MAINTAINER José Antonio López <dev@kstromeiraos.com>

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY vicleo.war /usr/local/tomcat/webapps/ROOT.war
