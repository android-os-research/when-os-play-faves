.class public final Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;
.super Landroid/os/IDeviceIdentifiersPolicyService$Stub;
.source "DeviceIdentifiersPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/DeviceIdentifiersPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceIdentifiersPolicy"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkPackageBelongsToCaller(Ljava/lang/String;)Z
    .registers 5

    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 86
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 89
    :try_start_9
    iget-object p0, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_16

    if-ne p0, v0, :cond_16

    const/4 v2, 0x1

    :catch_16
    :cond_16
    return v2
.end method

.method public getSerial()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string/jumbo v1, "getSerial"

    invoke-static {p0, v0, v0, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v0, "unknown"

    if-nez p0, :cond_10

    return-object v0

    :cond_10
    const-string/jumbo p0, "ro.serialno"

    .line 65
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->checkPackageBelongsToCaller(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 77
    iget-object p0, p0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "getSerial"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo p1, "unknown"

    if-nez p0, :cond_15

    return-object p1

    :cond_15
    const-string/jumbo p0, "ro.serialno"

    .line 81
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid callingPackage or callingPackage does not belong to caller\'s uid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
