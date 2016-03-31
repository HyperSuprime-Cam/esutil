TAP_PACKAGE=1

prep()
{
        default_prep

        # Move the LSST copy of esutil.table over the one that ships with esutil
        UPS_DIR="ups"
        LSST_TABLE="esutil.table.lsst"
        ESUTIL_TABLE="esutil.table"

        cd ${UPS_DIR}
        [ -f ${ESUTIL_TABLE} ] && rm ${ESUTIL_TABLE}
        ln -s ${LSST_TABLE} ${ESUTIL_TABLE}
}