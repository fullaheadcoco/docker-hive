#!/bin/bash

/opt/metastore/bin/schematool -initSchema -dbType mysql
/opt/metastore/bin/start-metastore