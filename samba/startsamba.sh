#!/bin/bash

set -e

nmbd
smbd
watchprocess smbd nmbd
