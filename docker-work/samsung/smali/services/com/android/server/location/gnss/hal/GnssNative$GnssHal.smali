.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssHal"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(IDDDIIII)Z
    .registers 12

    .line 1662
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public classInitOnce()V
    .registers 1

    .line 1496
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_class_init_once()V

    return-void
.end method

.method public cleanup()V
    .registers 1

    .line 1512
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup()V

    return-void
.end method

.method public cleanupBatching()V
    .registers 1

    .line 1639
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup_batching()V

    return-void
.end method

.method public deleteAidingData(I)V
    .registers 2

    .line 1535
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_delete_aiding_data(I)V

    return-void
.end method

.method public flushBatch()V
    .registers 1

    .line 1648
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_flush_batch()V

    return-void
.end method

.method public getBatchSize()I
    .registers 1

    .line 1631
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_batch_size()I

    move-result p0

    return p0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 1

    .line 1531
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_internal_state()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSehGnssHalVersion()F
    .registers 1

    .line 1731
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_seh_gnss_hal_version()F

    move-result p0

    return p0
.end method

.method public gnssConfigurationUpdateExtension(Ljava/lang/String;)V
    .registers 2

    .line 1717
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_configuration_update_extension(Ljava/lang/String;)V

    return-void
.end method

.method public init()Z
    .registers 1

    .line 1508
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init()Z

    move-result p0

    return p0
.end method

.method public initBatching()Z
    .registers 1

    .line 1635
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_batching()Z

    move-result p0

    return p0
.end method

.method public initLocationOff()Z
    .registers 1

    .line 1713
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_extension_location_off()Z

    move-result p0

    return p0
.end method

.method public initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .registers 3

    .line 1504
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    return-void
.end method

.method public injectBestLocation(IDDDFFFFFFJIJD)V
    .registers 21

    .line 1558
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectFlpError(I)V
    .registers 2

    .line 1750
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_flp_error(I)V

    return-void
.end method

.method public injectFlpLocation(IDDDFFFFFFJ)V
    .registers 16

    .line 1744
    invoke-static/range {p1 .. p15}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_flp_location(IDDDFFFFFFJ)V

    return-void
.end method

.method public injectLocation(IDDDFFFFFFJIJD)V
    .registers 21

    .line 1547
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectLppeComIeCapability(IZZZIZZZZZ)V
    .registers 11

    .line 1756
    invoke-static/range {p1 .. p10}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_lppe_com_ie_capability(IZZZIZZZZZ)V

    return-void
.end method

.method public injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 2

    .line 1611
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public injectPsdsData([BII)V
    .registers 4

    .line 1708
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_psds_data([BII)V

    return-void
.end method

.method public injectTime(JJI)V
    .registers 6

    .line 1565
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_time(JJI)V

    return-void
.end method

.method public injectUbpCapability(ZZZZ)V
    .registers 5

    .line 1763
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ubp_capability(ZZZZ)V

    return-void
.end method

.method public injectUbpError(I)V
    .registers 2

    .line 1770
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ubp_error(I)V

    return-void
.end method

.method public injectUbpInfo(II)V
    .registers 3

    .line 1767
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ubp_info(II)V

    return-void
.end method

.method public injectWlanCapability(IIJIII)V
    .registers 8

    .line 1775
    invoke-static/range {p1 .. p7}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_wlan_capability(IIJIII)V

    return-void
.end method

.method public injectWlanError(I)V
    .registers 2

    .line 1782
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_wlan_error(I)V

    return-void
.end method

.method public injectWlanScanInfo([J[I[II)V
    .registers 5

    .line 1779
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_wlan_scan_info([J[I[II)V

    return-void
.end method

.method public isAntennaInfoSupported()Z
    .registers 1

    .line 1581
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_antenna_info_supported()Z

    move-result p0

    return p0
.end method

.method public isGeofencingSupported()Z
    .registers 1

    .line 1656
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_geofence_supported()Z

    move-result p0

    return p0
.end method

.method public isGnssVisibilityControlSupported()Z
    .registers 1

    .line 1679
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_gnss_visibility_control_supported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .registers 1

    .line 1607
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_corrections_supported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementSupported()Z
    .registers 1

    .line 1593
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_supported()Z

    move-result p0

    return p0
.end method

.method public isNavigationMessageCollectionSupported()Z
    .registers 1

    .line 1569
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_navigation_message_supported()Z

    move-result p0

    return p0
.end method

.method public isPsdsSupported()Z
    .registers 1

    .line 1704
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_supports_psds()Z

    move-result p0

    return p0
.end method

.method public isSehGnssAidlHal()Z
    .registers 1

    .line 1735
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_seh_gnss_aidl_hal()Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .registers 1

    .line 1500
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_supported()Z

    move-result p0

    return p0
.end method

.method public pauseGeofence(I)Z
    .registers 2

    .line 1671
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public readNmea([BI)I
    .registers 3

    .line 1539
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method public removeGeofence(I)Z
    .registers 2

    .line 1675
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method public requestPowerStats()V
    .registers 1

    .line 1687
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_request_power_stats()V

    return-void
.end method

.method public resumeGeofence(II)Z
    .registers 3

    .line 1667
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method public sendNiResponse(II)V
    .registers 3

    .line 1683
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_send_ni_response(II)V

    return-void
.end method

.method public sendSuplNiMessage([BI)V
    .registers 3

    .line 1721
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_send_supl_ni_message([BI)V

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJII)V
    .registers 9

    .line 1727
    invoke-static/range {p1 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJII)V

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJIII)V
    .registers 10

    .line 1700
    invoke-static/range {p1 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method public setAgpsServer(ILjava/lang/String;I)V
    .registers 4

    .line 1691
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method public setAgpsSetId(ILjava/lang/String;)V
    .registers 3

    .line 1695
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method public setPositionMode(IIIIIZ)Z
    .registers 7

    .line 1526
    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public start()Z
    .registers 1

    .line 1516
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start()Z

    move-result p0

    return p0
.end method

.method public startAntennaInfoListening()Z
    .registers 1

    .line 1585
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public startBatch(JFZ)Z
    .registers 5

    .line 1644
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method public startMeasurementCollection(ZZI)Z
    .registers 4

    .line 1598
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method public startNavigationMessageCollection()Z
    .registers 1

    .line 1573
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public startNmeaMessageCollection()Z
    .registers 1

    .line 1623
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public startSvStatusCollection()Z
    .registers 1

    .line 1615
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_sv_status_collection()Z

    move-result p0

    return p0
.end method

.method public stop()Z
    .registers 1

    .line 1520
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop()Z

    move-result p0

    return p0
.end method

.method public stopAntennaInfoListening()Z
    .registers 1

    .line 1589
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public stopBatch()V
    .registers 1

    .line 1652
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_batch()Z

    return-void
.end method

.method public stopMeasurementCollection()Z
    .registers 1

    .line 1603
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_measurement_collection()Z

    move-result p0

    return p0
.end method

.method public stopNavigationMessageCollection()Z
    .registers 1

    .line 1577
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public stopNmeaMessageCollection()Z
    .registers 1

    .line 1627
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public stopSvStatusCollection()Z
    .registers 1

    .line 1619
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_sv_status_collection()Z

    move-result p0

    return p0
.end method
