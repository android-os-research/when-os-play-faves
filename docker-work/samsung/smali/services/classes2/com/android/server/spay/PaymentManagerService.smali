.class public Lcom/android/server/spay/PaymentManagerService;
.super Landroid/spay/IPaymentManager$Stub;
.source "PaymentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    }
.end annotation


# static fields
.field public static final COUNTRYISO_CODE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final PAYMENT_SERVICE_VERSION:I = 0x9

.field public static final SPAY_TA_TYPE_TEE_TUI:I = 0x101

.field public static final TAG:Ljava/lang/String; = "PaymentManagerService"

.field public static final TIMA_MSR_FILE_NAME:Ljava/lang/String; = "/system/tima_measurement_info"

.field public static mContext:Landroid/content/Context;


# instance fields
.field public mRegisteredFWKClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/spay/PaymentManagerService$FrameworkClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRegisteredFWKClientMap(Lcom/android/server/spay/PaymentManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    const-string/jumbo v0, "ro.csc.countryiso_code"

    .line 37
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 64
    invoke-direct {p0}, Landroid/spay/IPaymentManager$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    .line 65
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentManagerService() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_15
    sput-object p1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.spayfw"

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v3, "com.samsung.android.spay"

    .line 73
    invoke-virtual {v0, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v4, "com.samsung.android.spaymini"

    .line 74
    invoke-virtual {v0, v4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v5, "com.samsung.android.samsungpay.gear"

    .line 75
    invoke-virtual {v0, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v6, "com.samsung.android.rajaampat"

    .line 76
    invoke-virtual {v0, v6, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const/16 v2, 0x3e8

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    new-instance v2, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v2}, Lcom/android/server/spay/UpdateReceiver;-><init>()V

    .line 80
    sget-object v7, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/spay/PaymentManagerService;->disableSpay(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 83
    invoke-static {p1, v3, p0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 84
    invoke-static {p1, v1, p0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 85
    invoke-static {p1, v4, p0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 86
    invoke-static {p1, v5, p0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 87
    invoke-static {p1, v6, p0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    .line 51
    sget-object v0, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "PaymentManagerService"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "PaymentManagerService() - Valid Caller"

    .line 57
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const-string p0, "PaymentManagerService() - Invalid Caller"

    .line 54
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    throw v0
.end method


# virtual methods
.method public final disablePaymentFrameworkUpdateRemoval()V
    .registers 4

    .line 241
    sget-object p0, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v0, "KR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    .line 242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 243
    new-instance p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    sget-object v2, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    const-string v2, "com.samsung.android.spayfw"

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_21
    return-void
.end method

.method public disableSpay(Landroid/content/Context;)V
    .registers 7

    const-string p0, "com.samsung.android.app.stubupdater"

    const-string v0, "PaymentManagerService"

    const-string v1, "com.samsung.android.spay"

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x1

    .line 97
    :try_start_b
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_12

    return-void

    .line 99
    :cond_12
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_19

    return-void

    .line 101
    :cond_19
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spay state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", updater state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq p0, v3, :cond_53

    if-eq v2, v3, :cond_53

    const/4 p0, 0x0

    .line 107
    invoke-virtual {p1, v1, v3, p0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_47} :catch_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_47} :catch_48

    goto :goto_53

    :catch_48
    const-string/jumbo p0, "updater /spay app is not installed"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method public getMeasurementFile()[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "getMeasurementFile"

    .line 236
    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string p0, "/system/tima_measurement_info"

    .line 237
    invoke-static {p0}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getPackageNameFromPid(II)Ljava/lang/String;
    .registers 7

    .line 251
    sget-object p0, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 252
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 253
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 254
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p2, :cond_1b

    .line 255
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v2, p0

    goto :goto_34

    :cond_2f
    const-string p0, "Error: am.getRunningAppProcesses() is null"

    .line 260
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    if-nez v2, :cond_3f

    const-string p0, "Error: can\'t find processname for PID"

    .line 264
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3f
    return-object v2
.end method

.method public registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;
    .registers 13

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 193
    invoke-virtual {p0, v4, v5}, Lcom/android/server/spay/PaymentManagerService;->getPackageNameFromPid(II)Ljava/lang/String;

    move-result-object v7

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside registerSPayFW, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "PaymentManagerService"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 196
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 197
    iget v1, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    if-eq v5, v1, :cond_51

    const-string v1, "Registered Client Died. Need to Rebind"

    .line 199
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->-$$Nest$mdeleteClient(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V

    goto :goto_58

    :cond_51
    const-string p0, "Error: Framework App is already registered. Re-Registration not allowed"

    .line 202
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_58
    :goto_58
    const-string/jumbo v0, "registerSPayFW"

    .line 207
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 208
    new-instance v9, Landroid/spay/PaymentTZServiceCommnInfo;

    invoke-direct {v9}, Landroid/spay/PaymentTZServiceCommnInfo;-><init>()V

    const/16 v0, 0x9

    .line 209
    iput v0, v9, Landroid/spay/PaymentTZServiceCommnInfo;->mServiceVersion:I

    .line 211
    iget-object v0, p1, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    new-instance v2, Lcom/android/server/spay/TAController;

    sget-object v3, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    invoke-direct {v2, v3, v6, v10}, Lcom/android/server/spay/TAController;-><init>(Landroid/content/Context;ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 213
    iget-object v3, v9, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 216
    :cond_a0
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentManagerService;->disablePaymentFrameworkUpdateRemoval()V

    .line 217
    new-instance v10, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;-><init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;IILjava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {p1, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callingApp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is registed, current size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method
