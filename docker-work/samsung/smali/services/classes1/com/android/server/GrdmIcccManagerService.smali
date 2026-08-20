.class public Lcom/android/server/GrdmIcccManagerService;
.super Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Stub;
.source "GrdmIcccManagerService.java"


# static fields
.field public static final KNOX_ATTESTATION_AGENT:Ljava/lang/String; = "com.samsung.android.knox.attestation"

.field public static TAG:Ljava/lang/String; = "GrdmIcccManagerService"

.field public static mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Stub;-><init>()V

    .line 39
    sget-object p0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Start GrdmIcccManagerService"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sput-object p1, Lcom/android/server/GrdmIcccManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static native grdm_iccc_attestation_platform([B)[B
.end method

.method public static native grdm_iccc_load()I
.end method

.method public static native grdm_iccc_unload()I
.end method


# virtual methods
.method public final getCallerPackageName(I)Ljava/lang/String;
    .registers 3

    .line 45
    sget-object p0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string v0, "getCallerPackageName"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_7
    sget-object p0, Lcom/android/server/GrdmIcccManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public declared-synchronized grdmSetAttestationData([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    sget-object v0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "grdmSetAttestationData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/GrdmIcccManagerService;->getCallerPackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.attestation"

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 74
    invoke-static {p1}, Lcom/android/server/GrdmIcccManagerService;->grdm_iccc_attestation_platform([B)[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 84
    :cond_1e
    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
