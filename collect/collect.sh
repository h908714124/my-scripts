#!/bin/bash -e
CONF_PATHNAMES=${HOME}/.config/collect/pathnames.txt

if [[ ! -f $CONF_PATHNAMES ]]; then
  echo "File not found: $CONF_PATHNAMES"
  exit 1
fi

function warn { echo -e " \e[93m[$1]\e[0m"; }
function printDone { echo -e " \e[92m[DONE]\e[0m"; }

# Backup a path
function performBackup {

  # Use absolute path
  if [[ $1 == /* ]]; then
    local SOURCE=$1
  else
    local SOURCE=${HOME}/${1}
  fi

  local TARGET=${BACKUP_DIR}${SOURCE}

  echo -n Backup $SOURCE ...

  if [[ ! -e $SOURCE ]]; then
    warn "NOT FOUND"
    return
  fi

  if [[ -d $SOURCE ]] && [[ ! -d $TARGET ]]; then
    mkdir -p $TARGET
  fi

  if [[ -d $SOURCE ]]; then
    if [[ -f ${SOURCE}/.rsyncexcludes ]]; then
      rsync -r --exclude-from ${SOURCE}/.rsyncexcludes ${SOURCE}/ $TARGET
      printDone
    else
      rsync -r ${SOURCE}/ $TARGET
      printDone
    fi
  elif [[ -f $SOURCE ]]; then
    mkdir -p `dirname $TARGET`
    rsync $SOURCE $TARGET
    printDone
  else
    warn "UNKNOWN FILE TYPE"
  fi
}

REL_TARGET="$1"

if [[ "$REL_TARGET" = "" ]]; then
  REL_TARGET="/tmp/$(date +%Y%m%d)"
fi

# Configuration must exist
touch $CONF_PATHNAMES || exit 1

# Make backup dir, fail if exists
mkdir "$REL_TARGET" || exit 1

# Absolute path
BACKUP_DIR=`cd "$REL_TARGET"; pwd`

echo "Using backup dir: $BACKUP_DIR"

for P in `cat $CONF_PATHNAMES`; do
  performBackup $P
done

CHECKS=("$0" "$CONF_PATHNAMES" "$HOME/.ssh")

for F in ${CHECKS[*]}; do
  if [[ ! -f ${BACKUP_DIR}/${F} ]] && [[ ! -d ${BACKUP_DIR}/${F} ]]; then
    warn "Not backed up: $F"
  fi
done

echo "Done"
