.class public Lcom/android/server/location/nsflp/NSConnectionHelper;
.super Ljava/lang/Object;
.source "NSConnectionHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NSConnectionHelper"


# instance fields
.field public mBdmsgFormatMessage:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field public mHasNsflpFeature:Z

.field public mMonitorService:Landroid/location/INSLocationManager;

.field public mNsflpThread:Lcom/android/server/ServiceThread;


# direct methods
.method public static synthetic $r8$lambda$2IKGWZ4qhJNTLcOcqVvOBV2r0So(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onMessageUpdated$5(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Y6gJkKrOViuA24OaJkmLjVrk2E(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onGnssEventUpdated$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$517_copfTNbCu_GpfGN-cDhQkE4(Lcom/android/server/location/nsflp/NSConnectionHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onGnssEngineStatusUpdated$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6SZwR_IKIwiHpK7Nq4JLI3LV8UA(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/GnssStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onSatelliteStatusUpdated$3(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8kPjMPkTDqtMRt7_JqOgVlsaJOM(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onPassiveLocationReported$1(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JjzfG36yH87O6dq7-U18rNbKXy8(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->lambda$onStateUpdated$0(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 23
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    const-string p0, "NSConnectionHelper"

    const-string v0, "constructor"

    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onGnssEngineStatusUpdated$2(Z)V
    .registers 2

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_12

    .line 95
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onGnssEngineStatusUpdated(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSConnectionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$onGnssEventUpdated$4(Ljava/lang/String;)V
    .registers 2

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_12

    .line 129
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onGnssEventUpdated(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSConnectionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$onMessageUpdated$5(Landroid/os/Message;)V
    .registers 2

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_12

    .line 158
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onMessageUpdated(Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSConnectionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$onPassiveLocationReported$1(Landroid/location/Location;)V
    .registers 2

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_12

    .line 78
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onPassiveLocationReported(Landroid/location/Location;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSConnectionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$onSatelliteStatusUpdated$3(Landroid/location/GnssStatus;)V
    .registers 2

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_12

    .line 112
    invoke-interface {p0, p1}, Landroid/location/INSLocationManager;->onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSConnectionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$onStateUpdated$0(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .registers 3

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    if-eqz p0, :cond_12

    .line 62
    invoke-interface {p0, p1, p2}, Landroid/location/INSLocationManager;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSConnectionHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public final isBdmsgFormatMessage(Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string v0, "\n"

    const-string v1, ""

    .line 143
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[,*]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 145
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_21

    aget-object p1, p1, v1

    const-string v0, "FORMAT_MSG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move p0, v1

    :cond_21
    return p0
.end method

.method public onGnssEngineStatusUpdated(Z)V
    .registers 4

    .line 89
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 92
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public onGnssEventUpdated(Ljava/lang/String;)V
    .registers 4

    .line 123
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 126
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 135
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    if-nez v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->isBdmsgFormatMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 137
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onMessageUpdated(Landroid/os/Message;)V
    .registers 4

    .line 152
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 155
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public onPassiveLocationReported(Landroid/location/Location;)V
    .registers 4

    .line 72
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 75
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V
    .registers 4

    .line 106
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 109
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/GnssStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public onServiceConnected(Landroid/location/INSLocationManager;)V
    .registers 6

    .line 36
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_f

    .line 38
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NsflpThread"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    .line 40
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_25

    .line 41
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    .line 44
    :cond_25
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 3

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mMonitorService:Landroid/location/INSLocationManager;

    .line 49
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 50
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mNsflpThread:Lcom/android/server/ServiceThread;

    .line 51
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .registers 5

    .line 55
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 59
    new-instance v1, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public sendSupportedBdmsgFormat()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mBdmsgFormatMessage:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onGnssEventUpdated(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setFeature(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper;->mHasNsflpFeature:Z

    return-void
.end method
