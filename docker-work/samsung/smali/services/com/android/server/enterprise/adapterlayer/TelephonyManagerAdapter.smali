.class public Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
.super Ljava/lang/Object;
.source "TelephonyManagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TelephonyManagerAdapter"

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    if-nez v1, :cond_e

    .line 65
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    .line 67
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getNetworkTypeName()Ljava/lang/String;
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignalStrengthDbm(Ljava/lang/Object;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public getSignalStrengthLevelAsu(Ljava/lang/Object;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 1

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public isVoiceCapable()Z
    .registers 1

    .line 75
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    return p0
.end method
