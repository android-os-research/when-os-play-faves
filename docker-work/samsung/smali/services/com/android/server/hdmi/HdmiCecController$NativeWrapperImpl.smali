.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeWrapperImpl"
.end annotation


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

.field public final mLock:Ljava/lang/Object;

.field public mPhysicalAddress:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mLock:Ljava/lang/Object;

    const v0, 0xffff

    .line 1022
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1031
    :try_start_2
    invoke-static {v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getService(Z)Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_17
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_8} :catch_17

    const-wide/16 v3, 0x161

    .line 1033
    :try_start_a
    invoke-interface {v2, p0, v3, v4}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_d} :catch_17

    goto :goto_16

    :catch_e
    move-exception p0

    :try_start_f
    const-string v2, "Couldn\'t link to death : "

    new-array v3, v1, [Ljava/lang/Object;

    .line 1035
    invoke-static {v2, p0, v3}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_16} :catch_17

    :goto_16
    return v0

    :catch_17
    move-exception p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Couldn\'t connect to cec@1.0"

    .line 1038
    invoke-static {v2, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return v1
.end method

.method public nativeAddLogicalAddress(I)I
    .registers 3

    .line 1074
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->addLogicalAddress(I)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to add a logical address : "

    .line 1076
    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    return p0
.end method

.method public nativeClearLogicalAddress()V
    .registers 3

    .line 1084
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->clearLogicalAddress()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to clear logical address : "

    .line 1086
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public nativeEnableAudioReturnChannel(IZ)V
    .registers 3

    .line 1165
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->enableAudioReturnChannel(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to enable/disable ARC : "

    .line 1167
    invoke-static {p2, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public nativeGetPhysicalAddress()I
    .registers 3

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {v0, p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    .line 1094
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return p0

    :catch_8
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get physical address : "

    .line 1096
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const p0, 0xffff

    return p0
.end method

.method public nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 13

    const/4 v0, 0x0

    .line 1124
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 1125
    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getPortInfo()Ljava/util/ArrayList;

    move-result-object p0

    .line 1126
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    .line 1128
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 1129
    new-instance v11, Landroid/hardware/hdmi/HdmiPortInfo;

    iget v5, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iget v6, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iget-short v7, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    iget-boolean v8, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    const/4 v9, 0x0

    iget-boolean v10, v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    aput-object v11, v1, v2
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_35

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_34
    return-object v1

    :catch_35
    move-exception p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get port information : "

    .line 1139
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public nativeGetVendorId()I
    .registers 3

    .line 1114
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getVendorId()I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get vendor id : "

    .line 1116
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public nativeGetVersion()I
    .registers 3

    .line 1104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->getCecVersion()I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get cec version : "

    .line 1106
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public nativeInit()Ljava/lang/String;
    .registers 2

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->connectToHal()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public nativeIsConnected(I)Z
    .registers 4

    .line 1174
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->isConnected(I)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Failed to get connection info : "

    .line 1176
    invoke-static {v1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return p1
.end method

.method public nativeSendCecCommand(II[B)I
    .registers 8

    .line 1056
    new-instance v0, Landroid/hardware/tv/cec/V1_0/CecMessage;

    invoke-direct {v0}, Landroid/hardware/tv/cec/V1_0/CecMessage;-><init>()V

    .line 1057
    iput p1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->initiator:I

    .line 1058
    iput p2, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->destination:I

    .line 1059
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    .line 1060
    array-length p1, p3

    const/4 p2, 0x0

    move v1, p2

    :goto_14
    if-ge v1, p1, :cond_24

    aget-byte v2, p3, v1

    .line 1061
    iget-object v3, v0, Landroid/hardware/tv/cec/V1_0/CecMessage;->body:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1064
    :cond_24
    :try_start_24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0, v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I

    move-result p0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    move-exception p0

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "Failed to send CEC message : "

    .line 1066
    invoke-static {p2, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x3

    return p0
.end method

.method public nativeSetLanguage(Ljava/lang/String;)V
    .registers 3

    .line 1156
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0, p1}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setLanguage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to set language : "

    .line 1158
    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public nativeSetOption(IZ)V
    .registers 3

    .line 1147
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    invoke-interface {p0, p1, p2}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setOption(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to set option : "

    .line 1149
    invoke-static {p2, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_f
    return-void
.end method

.method public onValues(IS)V
    .registers 4

    if-nez p1, :cond_15

    .line 1196
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1197
    :try_start_5
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mPhysicalAddress:I

    .line 1198
    monitor-exit p1

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public serviceDied(J)V
    .registers 5

    const-wide/16 v0, 0x161

    cmp-long v0, p1, v0

    if-nez v0, :cond_2c

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service died cookie : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "; reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->connectToHal()Z

    .line 1187
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    if-eqz p1, :cond_2c

    .line 1188
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    :cond_2c
    return-void
.end method

.method public setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .registers 3

    .line 1046
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 1048
    :try_start_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;->mHdmiCec:Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    invoke-interface {p0, v0}, Landroid/hardware/tv/cec/V1_0/IHdmiCec;->setCallback(Landroid/hardware/tv/cec/V1_0/IHdmiCecCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Couldn\'t initialise tv.cec callback : "

    .line 1050
    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_16
    return-void
.end method
