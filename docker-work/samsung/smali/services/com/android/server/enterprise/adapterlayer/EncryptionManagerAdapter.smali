.class public Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
.super Ljava/lang/Object;
.source "EncryptionManagerAdapter.java"


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    if-nez v1, :cond_10

    .line 58
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    .line 59
    new-instance p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;-><init>()V

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    .line 61
    :cond_10
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public disableStorageCardEncryptionPolicy()I
    .registers 4

    .line 81
    new-instance p0, Lcom/samsung/android/security/SemSdCardEncryption;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public enableStorageCardEncryptionPolicy()I
    .registers 4

    .line 75
    new-instance p0, Lcom/samsung/android/security/SemSdCardEncryption;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .registers 2

    .line 103
    new-instance p0, Lcom/samsung/android/security/SemSdCardEncryption;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryption;->getExternalSdPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequireStorageCardEncryption()Z
    .registers 2

    .line 69
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isEncryptionFeatureEnabled()Z
    .registers 1

    .line 65
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public isStorageCardEncrypted()Z
    .registers 1

    .line 87
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result p0

    if-eqz p0, :cond_17

    :try_start_6
    const-string p0, "DirEncryptService"

    .line 90
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 94
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->isSdCardEncryped()Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return p0

    :catch_17
    :cond_17
    const/4 p0, 0x0

    return p0
.end method
