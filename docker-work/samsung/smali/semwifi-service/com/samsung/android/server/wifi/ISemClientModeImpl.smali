.class interface abstract Lcom/samsung/android/server/wifi/ISemClientModeImpl;
.super Ljava/lang/Object;
.source "ISemClientModeImpl.java"


# virtual methods
.method public abstract disableRandomMac()V
.end method

.method public abstract enableVerboseLogging(I)V
.end method

.method public abstract getChannelUtilization()I
.end method

.method public abstract getCountryRev()Ljava/lang/String;
.end method

.method public abstract getInterfaceName()Ljava/lang/String;
.end method

.method public abstract getMaxTdlsSession()I
.end method

.method public abstract getNumOfTdlsSession()I
.end method

.method public abstract getRoamBand()I
.end method

.method public abstract getRoamDelta()I
.end method

.method public abstract getRoamScanPeriod()I
.end method

.method public abstract getRoamTrigger()I
.end method

.method public abstract handleAirplaneModeChanged(Z)V
.end method

.method public abstract handleCapabilitiesChanged(Landroid/net/wifi/WifiInfo;)V
.end method

.method public abstract handleLinkConfiguredChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
.end method

.method public abstract handleNetworkStateChanged(Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;)V
.end method

.method public abstract handleScreenStateChanged(Z)V
.end method

.method public abstract handleSimStateChanged(Z)V
.end method

.method public abstract handleTelephonyCountryCodeChanged(Ljava/lang/String;)V
.end method

.method public abstract handleTelephonyServiceStateChanged(Landroid/telephony/ServiceState;)V
.end method

.method public abstract initialize()V
.end method

.method public abstract isActive()Z
.end method

.method public abstract isAvailableTdls()Z
.end method

.method public abstract isNCHOModeEnabled()Z
.end method

.method public abstract isWesModeEnabled()Z
.end method

.method public abstract isWiderBandwidthTdlsSupported()Z
.end method

.method public abstract sendReassociationRequestFrame(Ljava/lang/String;I)Z
.end method

.method public abstract sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
.end method

.method public abstract setCountryRev(Ljava/lang/String;)Z
.end method

.method public abstract setDtimInSuspendMode(I)V
.end method

.method public abstract setImsCallEstablished(Z)V
.end method

.method public abstract setListener(Lcom/samsung/android/server/wifi/ClientModeImplStateListener;)V
.end method

.method public abstract setMaxDtimInSuspendMode(Z)V
.end method

.method public abstract setNCHOModeEnabled(Z)Z
.end method

.method public abstract setPrimary(Z)V
.end method

.method public abstract setRoamBand(I)Z
.end method

.method public abstract setRoamDelta(I)Z
.end method

.method public abstract setRoamScanChannels([Ljava/lang/String;)Z
.end method

.method public abstract setRoamScanEnabled(Z)Z
.end method

.method public abstract setRoamScanPeriod(I)Z
.end method

.method public abstract setRoamTrigger(I)Z
.end method

.method public abstract setTdlsEnabled(Z)Z
.end method

.method public abstract setWesModeEnabled(Z)Z
.end method

.method public abstract setupClientMode()V
.end method

.method public abstract stopClientMode()V
.end method

.method public abstract syncGetRssi()I
.end method
