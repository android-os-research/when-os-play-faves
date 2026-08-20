.class public Lcom/sec/vsim/attsoftphone/SoftphoneManager;
.super Ljava/lang/Object;
.source "SoftphoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftphoneManager"

.field public static final SERVICE_NAME:Ljava/lang/String; = "softphone"


# instance fields
.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

.field private mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;
    .registers 1

    iget-object p0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSoftphoneService(Lcom/sec/vsim/attsoftphone/SoftphoneManager;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 26
    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    .line 44
    new-instance v0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;

    invoke-direct {v0, p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;-><init>(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)V

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mConnection:Landroid/content/ServiceConnection;

    .line 35
    iput-object p1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 37
    return-void
.end method

.method private getSoftphoneService()Lcom/sec/vsim/attsoftphone/ISoftphoneService;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-object v0
.end method

.method private isServiceBinded()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_d

    .line 109
    const-string v0, "SoftphoneManager"

    const-string v1, "Service not binded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public connectService()V
    .registers 6

    .line 65
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->getSoftphoneService()Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 66
    const-string v1, "SoftphoneManager"

    if-nez v0, :cond_3f

    .line 67
    const-string v0, "Connecting to Softphone Service..."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.sec.imsservice"

    const-string v3, "com.sec.internal.ims.entitlement.softphone.SoftphoneService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service bounding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    goto :goto_51

    .line 77
    :cond_3f
    const-string v0, "mSoftphoneService is not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    if-eqz v0, :cond_4c

    .line 79
    invoke-interface {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;->onConnected()V

    goto :goto_51

    .line 81
    :cond_4c
    const-string v0, "SoftphoneServiceListener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_51
    return-void
.end method

.method public deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 140
    const-string v0, "SoftphoneManager"

    const-string v1, "deregisterProgressListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 143
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 146
    goto :goto_17

    .line 144
    :catch_13
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 230
    const-string v0, "SoftphoneManager"

    const-string v1, "deregisterSupplementaryServiceListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 233
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 236
    goto :goto_17

    .line 234
    :catch_13
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public disconnectService()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    if-eqz v0, :cond_1a

    .line 88
    const-string v0, "SoftphoneManager"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mBound:Z

    goto :goto_21

    .line 92
    :cond_1a
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    if-eqz v0, :cond_21

    .line 93
    invoke-interface {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;->onDisconnected()V

    .line 96
    :cond_21
    :goto_21
    return-void
.end method

.method public exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "clientId"    # I
    .param p2, "authorizationCode"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "tGuardAppId"    # Ljava/lang/String;
    .param p5, "environment"    # I

    .line 152
    const-string v0, "SoftphoneManager"

    const-string v1, "exchangeForAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 155
    :try_start_d
    iget-object v1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 159
    goto :goto_1c

    .line 157
    :catch_18
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    const-string v0, "SoftphoneManager"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 102
    invoke-virtual {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->disconnectService()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mListener:Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    .line 105
    return-void
.end method

.method public getCallForwardingInfo(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 252
    const-string v0, "SoftphoneManager"

    const-string v1, "getCallForwardingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 255
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallForwardingInfo(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 258
    goto :goto_17

    .line 256
    :catch_13
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public getCallWaitingInfo(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 241
    const-string v0, "SoftphoneManager"

    const-string v1, "getCallWaitingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 244
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallWaitingInfo(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 247
    goto :goto_17

    .line 245
    :catch_13
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public getClientId(Ljava/lang/String;)I
    .registers 4
    .param p1, "accountId"    # Ljava/lang/String;

    .line 117
    const-string v0, "SoftphoneManager"

    const-string v1, "getClientId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 120
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getClientId(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    .line 121
    :catch_14
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public getDeviceList(I)Ljava/util/List;
    .registers 4
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 296
    const-string v0, "SoftphoneManager"

    const-string v1, "getDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 299
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getDeviceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    .line 300
    :catch_14
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTermsConditions(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 285
    const-string v0, "SoftphoneManager"

    const-string v1, "getTermsConditions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 288
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getTermsConditions(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 291
    goto :goto_17

    .line 289
    :catch_13
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public logOut(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 208
    const-string v0, "SoftphoneManager"

    const-string v1, "logOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 211
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->logOut(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 214
    goto :goto_17

    .line 212
    :catch_13
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public provisionAccount(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 164
    const-string v0, "SoftphoneManager"

    const-string v1, "provisionAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 167
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->provisionAccount(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 170
    goto :goto_17

    .line 168
    :catch_13
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/IProgressListener;

    .line 129
    const-string v0, "SoftphoneManager"

    const-string v1, "registerProgressListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 132
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 135
    goto :goto_17

    .line 133
    :catch_13
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "listener"    # Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 219
    const-string v0, "SoftphoneManager"

    const-string v1, "registerSupplementaryServiceListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 222
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 225
    goto :goto_17

    .line 223
    :catch_13
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 274
    const-string v0, "SoftphoneManager"

    const-string v1, "setCallForwardingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 277
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 280
    goto :goto_17

    .line 278
    :catch_13
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .registers 5
    .param p1, "clientId"    # I
    .param p2, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 263
    const-string v0, "SoftphoneManager"

    const-string v1, "setCallWaitingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 266
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 269
    goto :goto_17

    .line 267
    :catch_13
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public tryDeregister(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 197
    const-string v0, "SoftphoneManager"

    const-string v1, "tryDeregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 200
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->tryDeregister(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 203
    goto :goto_17

    .line 201
    :catch_13
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public tryRegister(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 186
    const-string v0, "SoftphoneManager"

    const-string v1, "tryRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 189
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->tryRegister(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 192
    goto :goto_17

    .line 190
    :catch_13
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method

.method public validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .registers 7
    .param p1, "clientId"    # I
    .param p2, "addressId"    # I
    .param p3, "confirmed"    # Z
    .param p4, "listener"    # Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 175
    const-string v0, "SoftphoneManager"

    const-string v1, "validateE911Address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    :try_start_d
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 181
    goto :goto_17

    .line 179
    :catch_13
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return-void
.end method
