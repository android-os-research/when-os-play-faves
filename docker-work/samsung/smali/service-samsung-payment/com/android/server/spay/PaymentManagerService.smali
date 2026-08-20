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
.field private static final COUNTRYISO_CODE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final PAYMENT_SERVICE_VERSION:I = 0x9

.field private static final SPAY_TA_TYPE_TEE_TUI:I = 0x101

.field public static final TAG:Ljava/lang/String; = "PaymentManagerService"

.field static final TIMA_MSR_FILE_NAME:Ljava/lang/String; = "/system/tima_measurement_info"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mRegisteredFWKClientMap:Ljava/util/Map;
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
.method static bridge synthetic -$$Nest$fgetmRegisteredFWKClientMap(Lcom/android/server/spay/PaymentManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    .line 37
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

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

    .line 69
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 72
    const-string v1, "com.samsung.android.spayfw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 73
    const-string v3, "com.samsung.android.spay"

    invoke-virtual {v0, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 74
    const-string v4, "com.samsung.android.spaymini"

    invoke-virtual {v0, v4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 75
    const-string v5, "com.samsung.android.samsungpay.gear"

    invoke-virtual {v0, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 76
    const-string v6, "com.samsung.android.rajaampat"

    invoke-virtual {v0, v6, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 78
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    new-instance v2, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v2}, Lcom/android/server/spay/UpdateReceiver;-><init>()V

    .line 80
    .local v2, "updateReceiver":Lcom/android/server/spay/UpdateReceiver;
    sget-object v7, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/spay/PaymentManagerService;->disableSpay(Landroid/content/Context;)V

    .line 83
    const/4 v7, 0x1

    invoke-static {p1, v3, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 84
    invoke-static {p1, v1, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 85
    invoke-static {p1, v4, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 86
    invoke-static {p1, v5, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 87
    invoke-static {p1, v6, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 88
    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .line 50
    const-string v0, "PaymentManagerService"

    .line 51
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "PaymentManagerService"

    if-nez v1, :cond_1b

    .line 57
    const-string v1, "PaymentManagerService() - Valid Caller"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    return v1

    .line 52
    :cond_1b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "PaymentManagerService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    throw v1
.end method

.method private disablePaymentFrameworkUpdateRemoval()V
    .registers 6

    .line 241
    sget-object v0, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 243
    .local v0, "token":J
    new-instance v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    sget-object v3, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v2, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v3

    const-string v4, "com.samsung.android.spayfw"

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    .end local v0    # "token":J
    .end local v2    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    :cond_21
    return-void
.end method

.method private getPackageNameFromPid(II)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "currentProcName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 252
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    const-string v3, "PaymentManagerService"

    if-eqz v2, :cond_30

    .line 253
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 254
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_2e

    .line 255
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 256
    goto :goto_2f

    .line 258
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2e
    goto :goto_1b

    :cond_2f
    :goto_2f
    goto :goto_35

    .line 260
    :cond_30
    const-string v2, "Error: am.getRunningAppProcesses() is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_35
    if-nez v0, :cond_40

    .line 264
    const-string v2, "Error: can\'t find processname for PID"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_40
    return-object v0
.end method


# virtual methods
.method disableSpay(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const-string v0, "PaymentManagerService"

    const-string v1, "com.samsung.android.app.stubupdater"

    const-string v2, "com.samsung.android.spay"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 95
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move-object v4, v2

    .line 96
    .local v4, "spayPackageName":Ljava/lang/String;
    move-object v5, v1

    .line 97
    .local v5, "updaterPackageName":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_d
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_14

    .line 98
    return-void

    .line 99
    :cond_14
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 100
    return-void

    .line 101
    :cond_1b
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    .line 102
    .local v6, "pay_flag":I
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "updater_flag":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spay state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", updater state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v7, 0x2

    if-eq v1, v7, :cond_58

    if-eq v6, v7, :cond_58

    .line 107
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v7, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_4c} :catch_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_4c} :catch_4d

    goto :goto_58

    .line 111
    .end local v1    # "updater_flag":I
    .end local v4    # "spayPackageName":Ljava/lang/String;
    .end local v5    # "updaterPackageName":Ljava/lang/String;
    .end local v6    # "pay_flag":I
    :catch_4d
    move-exception v1

    .line 112
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "updater /spay app is not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 109
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_54
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_58
    :goto_58
    nop

    .line 114
    :goto_59
    return-void
.end method

.method public getMeasurementFile()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    const-string v0, "getMeasurementFile"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 237
    const-string v0, "/system/tima_measurement_info"

    invoke-static {v0}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;
    .registers 15
    .param p1, "config"    # Landroid/spay/PaymentTZServiceConfig;

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 192
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 193
    .local v8, "pid":I
    invoke-direct {p0, v7, v8}, Lcom/android/server/spay/PaymentManagerService;->getPackageNameFromPid(II)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "callingApp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside registerSPayFW, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "PaymentManagerService"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 196
    iget-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 197
    .local v0, "matchedClient":Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    iget v1, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    if-eq v8, v1, :cond_57

    .line 199
    const-string v1, "Registered Client Died. Need to Rebind"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->-$$Nest$mdeleteClient(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V

    goto :goto_5e

    .line 202
    :cond_57
    const-string v1, "Error: Framework App is already registered. Re-Registration not allowed"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x0

    return-object v1

    .line 207
    .end local v0    # "matchedClient":Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    :cond_5e
    :goto_5e
    const-string v0, "registerSPayFW"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/spay/PaymentTZServiceCommnInfo;

    invoke-direct {v0}, Landroid/spay/PaymentTZServiceCommnInfo;-><init>()V

    move-object v11, v0

    .line 209
    .local v11, "tzSvcInfo":Landroid/spay/PaymentTZServiceCommnInfo;
    const/16 v0, 0x9

    iput v0, v11, Landroid/spay/PaymentTZServiceCommnInfo;->mServiceVersion:I

    .line 211
    iget-object v0, p1, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/spay/PaymentTZServiceConfig$TAConfig;>;"
    new-instance v2, Lcom/android/server/spay/TAController;

    sget-object v3, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/spay/TAController;-><init>(Landroid/content/Context;ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    .line 213
    .local v2, "taController":Landroid/os/IBinder;
    iget-object v3, v11, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/spay/PaymentTZServiceConfig$TAConfig;>;"
    .end local v2    # "taController":Landroid/os/IBinder;
    goto :goto_77

    .line 216
    :cond_a6
    invoke-direct {p0}, Lcom/android/server/spay/PaymentManagerService;->disablePaymentFrameworkUpdateRemoval()V

    .line 217
    new-instance v12, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, v11

    move v4, v7

    move v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;-><init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;IILjava/lang/String;)V

    .line 218
    .local v0, "registeredFWKClient":Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    iget-object v1, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is registed, current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v11
.end method
