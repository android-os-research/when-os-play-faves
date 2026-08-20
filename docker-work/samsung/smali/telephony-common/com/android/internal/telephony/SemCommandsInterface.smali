.class public interface abstract Lcom/android/internal/telephony/SemCommandsInterface;
.super Ljava/lang/Object;
.source "SemCommandsInterface.java"


# static fields
.field public static final blacklist CB_FACILITY_BA_PS:Ljava/lang/String; = "PH-SIM"

.field public static final blacklist GSM_SMS_FAIL_CAUSE_DSAC_FAIL:I = 0xd6


# virtual methods
.method public abstract blacklist accessPhoneBookEntry(IIILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public blacklist emergencyControl(ILandroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public blacklist emergencySearch(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public abstract blacklist getAtr(Landroid/os/Message;)V
.end method

.method public abstract blacklist getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract blacklist getCbConfig(Landroid/os/Message;)V
.end method

.method public blacklist getDisable2g(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public abstract greylist getIccCardStatus(Landroid/os/Message;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract blacklist getModemCapability(Landroid/os/Message;)V
.end method

.method public blacklist getNrDisableMode(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist getNrIconType(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public abstract blacklist getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist getPhoneBookStorageInfo(ILandroid/os/Message;)V
.end method

.method public blacklist getPreferredNetworkList(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist getRilStatus(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public abstract blacklist getSIMLockInfo(IILandroid/os/Message;)V
.end method

.method public abstract blacklist getUsimPBCapa(Landroid/os/Message;)V
.end method

.method public blacklist getVendorSpecificConfiguration(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public abstract greylist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist notifySimPbReady()V
.end method

.method public abstract blacklist oemGetStoredMsgCountFromSim(Landroid/os/Message;)V
.end method

.method public abstract blacklist oemReadSmsFromSim(ILandroid/os/Message;)V
.end method

.method public blacklist queryCNAP(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public blacklist queryCsgList(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public abstract blacklist registerFor5gStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCallDetailsChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForCsFallback(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForExtendedRegState(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForNrBearerAllocationChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForNrIconTypeChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForRRCStateChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSap(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSignalBarInfoChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSimOnOffNoti(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerForVendorConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist registerT3346Timer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist secSendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract blacklist secSendCdmaSmsMore([BLandroid/os/Message;)V
.end method

.method public abstract blacklist secSendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist secSendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist secSetDataAllowed(ZLandroid/os/Message;I)V
.end method

.method public abstract blacklist secWriteSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public blacklist selectCsgManual(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5

    return-void
.end method

.method public abstract blacklist sendEncodedUssd([BIILandroid/os/Message;)V
.end method

.method public blacklist setDisable2g(ILandroid/os/Message;)V
    .registers 3

    return-void
.end method

.method public blacklist setImsCallList(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract blacklist setMobileDataSetting(ZZLandroid/os/Message;)V
.end method

.method public blacklist setNrDisableMode(IZLandroid/os/Message;)V
    .registers 4

    return-void
.end method

.method public abstract blacklist setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract blacklist setOnSmsDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public blacklist setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .registers 9

    return-void
.end method

.method public abstract blacklist setSimInitEvent(Landroid/os/Message;)V
.end method

.method public abstract blacklist setSimOnOff(ILandroid/os/Message;)V
.end method

.method public blacklist setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract blacklist supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract blacklist supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract blacklist unSetOnCatCallControlResult(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnCatSendSmsResult(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnPbInitComplete(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSimPbReady(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unSetOnSmsDeviceReady(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterFor5gStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForAcbInfoChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCallDetailsChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForCsFallback(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForExtendedRegState(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForImsPrefValue(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForNrBearerAllocationChange(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForNrIconTypeChange(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForRRCStateChange(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSap(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSignalBarInfoChange(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSimCountMismatched(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSimOnOffNoti(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForSimSwaped(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterForVendorConfigurationChanged(Landroid/os/Handler;)V
.end method

.method public abstract blacklist unregisterT3346Timer(Landroid/os/Handler;)V
.end method

.method public abstract blacklist updateStackBinding(IILandroid/os/Message;)V
.end method
