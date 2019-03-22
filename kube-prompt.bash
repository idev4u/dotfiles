#!/bin/bash -ex

__kube_ps1()
{
    # Get current context
    unset CONTEXT
    if [ -n $1 ] ; then
        CONTEXT=$(cat $1 | grep "current-context:" | sed "s/current-context: //")
    else
        CONTEXT=$(cat ~/.kube/config | grep "current-context:" | sed "s/current-context: //")
    fi

    if [ -n "$CONTEXT" ]; then
        echo "(k8s: ${CONTEXT})"
    fi
}
