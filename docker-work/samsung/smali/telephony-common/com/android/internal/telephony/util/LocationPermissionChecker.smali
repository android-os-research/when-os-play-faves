.class public Lcom/android/internal/telephony/util/LocationPermissionChecker;
.super Ljava/lang/Object;
.source "LocationPermissionChecker.java"


# static fields
.field public static final blacklist ERROR_LOCATION_MODE_OFF:I = 0x1

.field public static final blacklist ERROR_LOCATION_PERMISSION_MISSING:I = 0x2

.field public static final blacklist SUCCEEDED:I


# instance fields
.field private final blacklist mAppOpsManager:Landroid/app/AppOpsManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    .line 72
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private blacklist checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 13

    .line 153
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkPackage(ILjava/lang/String;)V

    .line 157
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkNetworkSettingsPermission(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkNetworkSetupWizardPermission(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 158
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkNetworkStackPermission(I)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkMainlineNetworkStackPermission(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_33

    .line 163
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->isLocationModeEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    .line 169
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    const/4 p0, 0x2

    return p0

    :cond_33
    :goto_33
    return v1
.end method

.method private blacklist checkPackage(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void

    .line 259
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking UID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but Package Name is Null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getUidPermission(Ljava/lang/String;I)I
    .registers 4

    .line 271
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private blacklist isTargetSdkLessThan(Ljava/lang/String;II)Z
    .registers 7

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 234
    :try_start_5
    iget-object p0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 236
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 234
    invoke-virtual {p0, p1, v2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_21
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    if-ge p0, p2, :cond_21

    const/4 p0, 0x1

    .line 245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    throw p0

    .line 245
    :catch_21
    :cond_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method private blacklist noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 12

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method


# virtual methods
.method public blacklist checkCallersLocationPermission(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z
    .registers 16

    const/16 v0, 0x1d

    .line 192
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->isTargetSdkLessThan(Ljava/lang/String;II)Z

    move-result v0

    if-eqz p4, :cond_d

    if-eqz v0, :cond_d

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_f

    :cond_d
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 199
    :goto_f
    invoke-direct {p0, v1, p3}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    return v3

    :cond_18
    const-string v5, "android:fine_location"

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p5

    .line 205
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    if-eqz p4, :cond_37

    if-eqz v0, :cond_37

    const-string v1, "android:coarse_location"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    .line 211
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->noteAppOpAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_37
    return v3
.end method

.method public blacklist checkLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public blacklist checkLocationPermissionWithDetailInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    const-string p2, "LocationPermissionChecker"

    if-eq p0, p1, :cond_27

    const/4 p1, 0x2

    if-eq p0, p1, :cond_d

    goto :goto_2c

    .line 120
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "UID "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " has no location permission"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_27
    const-string p1, "Location mode is disabled for the device"

    .line 117
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return p0
.end method

.method public blacklist checkMainlineNetworkStackPermission(I)Z
    .registers 3

    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist checkNetworkSettingsPermission(I)Z
    .registers 3

    const-string v0, "android.permission.NETWORK_SETTINGS"

    .line 278
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist checkNetworkSetupWizardPermission(I)Z
    .registers 3

    const-string v0, "android.permission.NETWORK_SETUP_WIZARD"

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist checkNetworkStackPermission(I)Z
    .registers 3

    const-string v0, "android.permission.NETWORK_STACK"

    .line 294
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public blacklist enforceLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->checkLocationPermissionInternal(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_27

    const/4 p1, 0x2

    if-eq p0, p1, :cond_b

    return-void

    .line 147
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has no location permission"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Location mode is disabled for the device"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist getCurrentUser()I
    .registers 1
    .annotation build Lcom/android/net/module/annotation/VisibleForTesting;
    .end annotation

    .line 266
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method public blacklist isLocationModeEnabled()Z
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/util/LocationPermissionChecker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 224
    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/LocationPermissionChecker;->getCurrentUser()I

    move-result p0

    .line 223
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    const-string v0, "LocationPermissionChecker"

    const-string v1, "Failure to get location mode via API, falling back to settings"

    .line 226
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
