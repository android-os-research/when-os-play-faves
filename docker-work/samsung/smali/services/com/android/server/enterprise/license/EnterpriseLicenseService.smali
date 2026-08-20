.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/license/IDeviceProfileObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;,
        Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;
    }
.end annotation


# static fields
.field public static final INTENT_DEVICE_REGISTRATION_REQUEST_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL"

.field public static final INTENT_DEVICE_REGISTRATION_REQUEST_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final INTENT_DEVICE_REGISTRATION_REQUEST_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

.field public static final KPM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.pushmanager"

.field public static final MY_PID:I

.field public static final SUCCESS_STATUS_RESULT:Ljava/lang/String; = "success"

.field public static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field public static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field public allowedCaller:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDeviceProfileListener:Lcom/android/server/enterprise/license/DeviceProfileListener;

.field public mElmPkgRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;

.field public mKlmElmChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/license/IActivationKlmElmObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mKlmPkgRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;


# direct methods
.method public static synthetic $r8$lambda$5jFaJPuggeU_hy5p2mfmhd29IK4(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->lambda$activateKnoxLicense$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7VQQ1hZpB28MCJo0dJHAsw5mPek(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->lambda$validateLicenses$2(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJT7zKndswPRDCpAixDVlMxxBz8(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->lambda$onProfileOwnerRemoved$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ew5DxHshVIA6mYppG4_DjMVa52E(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->lambda$deActivateKnoxLicense$3(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBgIIps7eTlCkjzNmmC9QCmXJYo(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->lambda$activateLicense$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uF6-PzlWqZueamZW_zl9AFIb-Cc(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->lambda$onDeviceOwnerRemoved$5()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcallLicenseAgent(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misPackageInstalled(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterLicenseResultRecord(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 106
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 4

    .line 144
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;Landroid/content/pm/IPackageManager;)V
    .registers 10

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 172
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.knox.kccagent"

    const-string v2, "com.sec.knox.klat.agent"

    .line 225
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mInjector:Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;

    .line 150
    iget-object p1, p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 151
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 152
    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 153
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    .line 154
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 159
    new-instance v4, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-direct {v4, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "package"

    .line 160
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 168
    new-instance p2, Lcom/android/server/enterprise/license/DeviceProfileListener;

    invoke-direct {p2, p1}, Lcom/android/server/enterprise/license/DeviceProfileListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mDeviceProfileListener:Lcom/android/server/enterprise/license/DeviceProfileListener;

    .line 169
    invoke-virtual {p2, p0}, Lcom/android/server/enterprise/license/DeviceProfileListener;->registerObserver(Lcom/android/server/enterprise/license/IDeviceProfileObserver;)V

    return-void
.end method

.method private synthetic lambda$activateKnoxLicense$1(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "KLMRegistrationInternal"

    const/4 v1, 0x0

    .line 1379
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$activateLicense$0(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ELMRegistrationInternal"

    const/4 v1, 0x0

    .line 1244
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$deActivateKnoxLicense$3(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "KLMDeactivationInternal"

    const/4 v1, 0x0

    .line 1598
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$onDeviceOwnerRemoved$5()V
    .registers 3

    const-string v0, "DeviceOwnerRemoved"

    const/4 v1, 0x0

    .line 2476
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$onProfileOwnerRemoved$4()V
    .registers 3

    const-string v0, "ProfileOwnerRemoved"

    const/4 v1, 0x0

    .line 2458
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private synthetic lambda$validateLicenses$2(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "licenseValidationInternal"

    const/4 v1, 0x0

    .line 1494
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .registers 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    monitor-enter p0

    :try_start_9
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "activateKnoxLicense()"

    .line 1291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 1296
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1297
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1299
    iget-object v2, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_1c9

    if-eqz v10, :cond_fd

    .line 1304
    :try_start_2c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_38

    goto/16 :goto_fd

    .line 1308
    :cond_38
    iget-object v3, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 1312
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_80

    if-eqz v2, :cond_7c

    .line 1314
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 1318
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getCallingPackageNameFromAppPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5d} :catch_177
    .catchall {:try_start_2c .. :try_end_5d} :catchall_175

    if-nez v3, :cond_7c

    :try_start_5f
    const-string v2, "EnterpriseLicenseService"

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callerPackage changed to: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_78
    .catchall {:try_start_5f .. :try_end_75} :catchall_175

    move-object/from16 v16, v1

    goto :goto_7e

    :catch_78
    move-exception v0

    move-object v2, v1

    goto/16 :goto_178

    :cond_7c
    move-object/from16 v16, v2

    :goto_7e
    move v1, v4

    goto :goto_83

    :cond_80
    move-object/from16 v16, v2

    const/4 v1, 0x0

    :goto_83
    if-nez v1, :cond_9a

    .line 1328
    :try_start_85
    array-length v2, v7

    const/4 v3, 0x0

    :goto_87
    if-ge v3, v2, :cond_9a

    aget-object v5, v7, v3

    .line 1329
    invoke-virtual {v8, v10, v5, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_95
    .catchall {:try_start_85 .. :try_end_8f} :catchall_175

    if-ne v5, v4, :cond_92

    goto :goto_9b

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :catch_95
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_178

    :cond_9a
    move v4, v1

    :goto_9b
    if-nez v4, :cond_fa

    :try_start_9d
    const-string/jumbo v1, "package"

    .line 1339
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1338
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1340
    invoke-interface {v1, v10, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_cd

    const-string v2, "fail"

    const/16 v3, 0xcc

    const/16 v4, 0x320

    .line 1343
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v0, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bb} :catch_cf
    .catchall {:try_start_9d .. :try_end_bb} :catchall_175

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, v16

    move-object v15, v7

    move-object v7, v0

    :try_start_c3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_cb
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_175

    .line 1391
    :try_start_c6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_1c9

    .line 1346
    monitor-exit p0

    return-void

    :catch_cb
    move-exception v0

    goto :goto_d1

    :cond_cd
    move-object v15, v7

    goto :goto_d4

    :catch_cf
    move-exception v0

    move-object v15, v7

    .line 1349
    :goto_d1
    :try_start_d1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1352
    :goto_d4
    array-length v0, v15

    const/4 v7, 0x0

    :goto_d6
    if-ge v7, v0, :cond_f5

    aget-object v5, v15, v7

    const-string v2, "fail"

    const/16 v3, 0xcc

    const/16 v4, 0x320

    .line 1353
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move/from16 v18, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f2} :catch_95
    .catchall {:try_start_d1 .. :try_end_f2} :catchall_175

    add-int/lit8 v7, v18, 0x1

    goto :goto_d6

    .line 1391
    :cond_f5
    :try_start_f5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_1c9

    .line 1357
    monitor-exit p0

    return-void

    :cond_fa
    move-object/from16 v2, v16

    goto :goto_103

    .line 1305
    :cond_fd
    :goto_fd
    :try_start_fd
    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v10, v2

    :goto_103
    if-eqz v10, :cond_16d

    .line 1361
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16d

    .line 1362
    iget-object v0, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    const-string v0, "EnterpriseLicenseService"

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Another operation is already in progress for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 1369
    :cond_12e
    invoke-virtual {v8, v10, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerKlmLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    :goto_131
    const-string v0, "EnterpriseLicenseService"

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateKnoxLicense. from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 1374
    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 1375
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    .line 1377
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda4;

    invoke-direct {v3, v8, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1381
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_168} :catch_177
    .catchall {:try_start_fd .. :try_end_168} :catchall_175

    .line 1391
    :try_start_168
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1c9

    .line 1383
    monitor-exit p0

    return-void

    :cond_16d
    :try_start_16d
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "Invalid packageName. Caller must be an Admin or approved."

    .line 1385
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_174} :catch_177
    .catchall {:try_start_16d .. :try_end_174} :catchall_175

    goto :goto_182

    :catchall_175
    move-exception v0

    goto :goto_1c5

    :catch_177
    move-exception v0

    :goto_178
    :try_start_178
    const-string v1, "EnterpriseLicenseService"

    const-string v3, "activateKnoxLicense() failed."

    .line 1388
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_182
    .catchall {:try_start_178 .. :try_end_182} :catchall_175

    .line 1391
    :goto_182
    :try_start_182
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v2

    move-object v5, v10

    if-nez v5, :cond_1b2

    .line 1396
    iget-object v1, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1c3

    .line 1397
    array-length v1, v10

    if-lez v1, :cond_1c3

    .line 1398
    array-length v12, v10

    const/4 v15, 0x0

    :goto_19a
    if-ge v15, v12, :cond_1c3

    aget-object v5, v10, v15

    const-string v2, "fail"

    const/16 v3, 0x12d

    const/16 v4, 0x320

    .line 1399
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_19a

    :cond_1b2
    const-string v2, "fail"

    const/16 v3, 0x12d

    const/16 v4, 0x320

    .line 1405
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_1c3
    .catchall {:try_start_182 .. :try_end_1c3} :catchall_1c9

    .line 1409
    :cond_1c3
    monitor-exit p0

    return-void

    .line 1391
    :goto_1c5
    :try_start_1c5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1392
    throw v0
    :try_end_1c9
    .catchall {:try_start_1c5 .. :try_end_1c9} :catchall_1c9

    :catchall_1c9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 1463
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1464
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .registers 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    monitor-enter p0

    :try_start_9
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "activateLicense()"

    .line 1144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 1148
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1151
    iget-object v2, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_1db

    if-eqz v10, :cond_100

    .line 1155
    :try_start_2c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_38

    goto/16 :goto_100

    .line 1159
    :cond_38
    iget-object v5, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 1163
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4a} :catch_187
    .catchall {:try_start_2c .. :try_end_4a} :catchall_185

    const/4 v6, 0x1

    if-eqz v5, :cond_81

    if-eqz v2, :cond_7e

    .line 1165
    :try_start_4f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 1169
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getCallingPackageNameFromAppPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_7a
    .catchall {:try_start_4f .. :try_end_5d} :catchall_185

    if-nez v5, :cond_7e

    :try_start_5f
    const-string v2, "EnterpriseLicenseService"

    .line 1172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "callerPackage changed to: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_77
    .catchall {:try_start_5f .. :try_end_75} :catchall_185

    move-object v15, v1

    goto :goto_7f

    :catch_77
    move-exception v0

    move-object v2, v1

    goto :goto_7b

    :catch_7a
    move-exception v0

    :goto_7b
    move-object v1, v10

    goto/16 :goto_18a

    :cond_7e
    move-object v15, v2

    :goto_7f
    move v1, v6

    goto :goto_83

    :cond_81
    move-object v15, v2

    const/4 v1, 0x0

    :goto_83
    if-nez v1, :cond_9a

    .line 1179
    :try_start_85
    array-length v2, v7

    const/4 v5, 0x0

    :goto_87
    if-ge v5, v2, :cond_9a

    aget-object v3, v7, v5

    .line 1180
    invoke-virtual {v8, v10, v3, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_95
    .catchall {:try_start_85 .. :try_end_8f} :catchall_185

    if-ne v3, v6, :cond_92

    goto :goto_9b

    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :catch_95
    move-exception v0

    move-object v1, v10

    :goto_97
    move-object v2, v15

    goto/16 :goto_18a

    :cond_9a
    move v6, v1

    :goto_9b
    if-nez v6, :cond_fc

    :try_start_9d
    const-string/jumbo v1, "package"

    .line 1190
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1189
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1191
    invoke-interface {v1, v10, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_cc

    const-string v2, "fail"

    const/16 v3, 0xcc

    const/16 v4, 0x320

    .line 1194
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v0, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_bb} :catch_ce
    .catchall {:try_start_9d .. :try_end_bb} :catchall_185

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object v6, v15

    move-object v10, v7

    move-object v7, v0

    :try_start_c2
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_ca
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_185

    .line 1254
    :try_start_c5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_1db

    .line 1197
    monitor-exit p0

    return-void

    :catch_ca
    move-exception v0

    goto :goto_d0

    :cond_cc
    move-object v10, v7

    goto :goto_d3

    :catch_ce
    move-exception v0

    move-object v10, v7

    .line 1200
    :goto_d0
    :try_start_d0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1203
    :goto_d3
    array-length v0, v10

    const/4 v7, 0x0

    :goto_d5
    if-ge v7, v0, :cond_f3

    aget-object v5, v10, v7

    const-string v2, "fail"

    const/16 v3, 0xcc

    const/16 v4, 0x320

    .line 1204
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object/from16 v16, v6

    move-object v6, v15

    move/from16 v17, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_f0} :catch_f8
    .catchall {:try_start_d0 .. :try_end_f0} :catchall_185

    add-int/lit8 v7, v17, 0x1

    goto :goto_d5

    .line 1254
    :cond_f3
    :try_start_f3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_1db

    .line 1208
    monitor-exit p0

    return-void

    :catch_f8
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_97

    :cond_fc
    move-object/from16 v1, p3

    move-object v2, v15

    goto :goto_105

    .line 1156
    :cond_100
    :goto_100
    :try_start_100
    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_104} :catch_187
    .catchall {:try_start_100 .. :try_end_104} :catchall_185

    move-object v2, v1

    :goto_105
    if-eqz v1, :cond_17b

    .line 1212
    :try_start_107
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17b

    const/4 v3, 0x0

    if-eqz p4, :cond_117

    move-object/from16 v0, p4

    goto :goto_12e

    :cond_117
    const-string/jumbo v4, "package"

    .line 1220
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1219
    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 1221
    invoke-interface {v4, v1, v5, v6, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 1223
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_12e

    :cond_12d
    move-object v0, v3

    .line 1227
    :goto_12e
    iget-object v3, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14d

    const-string v3, "EnterpriseLicenseService"

    .line 1228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Another operation is already in progress for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    .line 1234
    :cond_14d
    invoke-virtual {v8, v1, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerElmLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 1237
    :goto_150
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    .line 1238
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    .line 1239
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 1240
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    .line 1241
    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v8, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_176} :catch_183
    .catchall {:try_start_107 .. :try_end_176} :catchall_185

    .line 1254
    :try_start_176
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_1db

    .line 1246
    monitor-exit p0

    return-void

    :cond_17b
    :try_start_17b
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "Invalid packageName. Caller must be an Admin or approved."

    .line 1248
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_182} :catch_183
    .catchall {:try_start_17b .. :try_end_182} :catchall_185

    goto :goto_194

    :catch_183
    move-exception v0

    goto :goto_18a

    :catchall_185
    move-exception v0

    goto :goto_1d7

    :catch_187
    move-exception v0

    move-object/from16 v1, p3

    :goto_18a
    :try_start_18a
    const-string v3, "EnterpriseLicenseService"

    const-string v4, "activateLicense() failed."

    .line 1251
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_194
    .catchall {:try_start_18a .. :try_end_194} :catchall_185

    .line 1254
    :goto_194
    :try_start_194
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v5, v1

    move-object v0, v2

    if-nez v5, :cond_1c4

    .line 1259
    iget-object v1, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d5

    .line 1260
    array-length v1, v10

    if-lez v1, :cond_1d5

    .line 1261
    array-length v12, v10

    const/4 v15, 0x0

    :goto_1ac
    if-ge v15, v12, :cond_1d5

    aget-object v5, v10, v15

    const-string v2, "fail"

    const/16 v3, 0x12d

    const/16 v4, 0x320

    .line 1262
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1ac

    :cond_1c4
    const-string v2, "fail"

    const/16 v3, 0x12d

    const/16 v4, 0x320

    .line 1268
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_1d5
    .catchall {:try_start_194 .. :try_end_1d5} :catchall_1db

    .line 1272
    :cond_1d5
    monitor-exit p0

    return-void

    .line 1254
    :goto_1d7
    :try_start_1d7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw v0
    :try_end_1db
    .catchall {:try_start_1d7 .. :try_end_1db} :catchall_1db

    :catchall_1db
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1283
    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 1284
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .registers 2

    .line 2102
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2103
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 14

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callLicenseAgent() - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EnterpriseLicenseService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :try_start_16
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception v0

    .line 2380
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ae

    goto :goto_50

    :sswitch_30
    const-string v6, "KLMRegistrationInternal"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_50

    :cond_39
    const/4 v5, 0x2

    goto :goto_50

    :sswitch_3b
    const-string v6, "KLMDeactivationInternal"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_50

    :cond_44
    const/4 v5, 0x1

    goto :goto_50

    :sswitch_46
    const-string v6, "ELMRegistrationInternal"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    packed-switch v5, :pswitch_data_bc

    goto :goto_94

    .line 2382
    :pswitch_58
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2384
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0x12d

    const/16 v7, 0x320

    const-string v5, "fail"

    move-object v4, p0

    .line 2386
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 2391
    :pswitch_6b
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2393
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0x12d

    const/16 v7, 0x322

    const-string v5, "fail"

    move-object v4, p0

    .line 2395
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :pswitch_7e
    const-string v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    .line 2400
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 2402
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0x12d

    const/16 v7, 0x320

    const-string v5, "fail"

    move-object v4, p0

    .line 2404
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2411
    :goto_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling KLMSAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :sswitch_data_ae
    .sparse-switch
        -0x6ebcf3c4 -> :sswitch_46
        -0x4f3822a0 -> :sswitch_3b
        0x4e6ca3c2 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_6b
        :pswitch_58
    .end packed-switch
.end method

.method public final checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    const-string v0, "EnterpriseLicenseService"

    const/4 v1, 0x1

    if-eqz p2, :cond_db

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_db

    .line 235
    :cond_d
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    .line 239
    :cond_14
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_3c

    aget-object v6, v2, v5

    .line 240
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller is approved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_3d

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_3c
    move v2, v4

    :goto_3d
    if-nez v2, :cond_99

    const-string/jumbo v2, "ro.product_ship"

    .line 248
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    if-nez v2, :cond_6b

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6b

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "caller is approved by permission : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 254
    :cond_6b
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_99

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "caller is not approved (caller:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / target:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 267
    :cond_99
    :try_start_99
    iget-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p1

    .line 268
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    .line 269
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    goto :goto_d1

    .line 274
    :cond_ac
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android"

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_bb

    return v1

    .line 278
    :cond_bb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "signature mismatched! caller : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 270
    :cond_d1
    :goto_d1
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(Ljava/lang/String;I)Z

    move-result p0
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_d5} :catch_d6

    return p0

    :catch_d6
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :cond_db
    :goto_db
    const-string p0, "caller is null"

    .line 233
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public declared-synchronized deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .registers 24

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    monitor-enter p0

    :try_start_9
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "deActivateKnoxLicense()"

    .line 1507
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 1512
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1513
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1515
    iget-object v2, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_1bb

    if-eqz v10, :cond_105

    .line 1520
    :try_start_2c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_38

    goto/16 :goto_105

    .line 1524
    :cond_38
    iget-object v3, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_ff

    .line 1531
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_82

    if-eqz v2, :cond_7e

    .line 1533
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 1537
    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getCallingPackageNameFromAppPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1538
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5f} :catch_169
    .catchall {:try_start_2c .. :try_end_5f} :catchall_167

    if-nez v3, :cond_7e

    :try_start_61
    const-string v2, "EnterpriseLicenseService"

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callerPackage changed to: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_77} :catch_7a
    .catchall {:try_start_61 .. :try_end_77} :catchall_167

    move-object/from16 v16, v1

    goto :goto_80

    :catch_7a
    move-exception v0

    move-object v2, v1

    goto/16 :goto_16a

    :cond_7e
    move-object/from16 v16, v2

    :goto_80
    move v1, v4

    goto :goto_85

    :cond_82
    move-object/from16 v16, v2

    const/4 v1, 0x0

    :goto_85
    if-nez v1, :cond_9c

    .line 1547
    :try_start_87
    array-length v2, v7

    const/4 v3, 0x0

    :goto_89
    if-ge v3, v2, :cond_9c

    aget-object v5, v7, v3

    .line 1548
    invoke-virtual {v8, v10, v5, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_91} :catch_97
    .catchall {:try_start_87 .. :try_end_91} :catchall_167

    if-ne v5, v4, :cond_94

    goto :goto_9d

    :cond_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    :catch_97
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_16a

    :cond_9c
    move v4, v1

    :goto_9d
    if-nez v4, :cond_fc

    :try_start_9f
    const-string/jumbo v1, "package"

    .line 1558
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1557
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1559
    invoke-interface {v1, v10, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_cf

    const-string v2, "fail"

    const/16 v3, 0xcc

    const/16 v4, 0x322

    .line 1562
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v0, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_bd} :catch_d1
    .catchall {:try_start_9f .. :try_end_bd} :catchall_167

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, v16

    move-object v15, v7

    move-object v7, v0

    :try_start_c5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_cd
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_167

    .line 1609
    :try_start_c8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_1bb

    .line 1565
    monitor-exit p0

    return-void

    :catch_cd
    move-exception v0

    goto :goto_d3

    :cond_cf
    move-object v15, v7

    goto :goto_d6

    :catch_d1
    move-exception v0

    move-object v15, v7

    .line 1568
    :goto_d3
    :try_start_d3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1571
    :goto_d6
    array-length v0, v15

    const/4 v7, 0x0

    :goto_d8
    if-ge v7, v0, :cond_f7

    aget-object v5, v15, v7

    const-string v2, "fail"

    const/16 v3, 0xcc

    const/16 v4, 0x322

    .line 1572
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move/from16 v18, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f4} :catch_97
    .catchall {:try_start_d3 .. :try_end_f4} :catchall_167

    add-int/lit8 v7, v18, 0x1

    goto :goto_d8

    .line 1609
    :cond_f7
    :try_start_f7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_1bb

    .line 1576
    monitor-exit p0

    return-void

    :cond_fc
    move-object/from16 v2, v16

    goto :goto_10b

    .line 1526
    :cond_ff
    :try_start_ff
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1521
    :cond_105
    :goto_105
    invoke-virtual {v8, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v10, v2

    :goto_10b
    if-eqz v10, :cond_15f

    .line 1580
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 1581
    iget-object v0, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const-string v0, "EnterpriseLicenseService"

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Another operation is already in progress for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 1588
    :cond_136
    invoke-virtual {v8, v10, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerKlmLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    .line 1592
    :goto_139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 1593
    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    .line 1594
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    .line 1596
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v8, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1599
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_15a} :catch_169
    .catchall {:try_start_ff .. :try_end_15a} :catchall_167

    .line 1609
    :try_start_15a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_1bb

    .line 1601
    monitor-exit p0

    return-void

    :cond_15f
    :try_start_15f
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "Invalid packageName. Caller must be an Admin or approved."

    .line 1603
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_166} :catch_169
    .catchall {:try_start_15f .. :try_end_166} :catchall_167

    goto :goto_174

    :catchall_167
    move-exception v0

    goto :goto_1b7

    :catch_169
    move-exception v0

    :goto_16a
    :try_start_16a
    const-string v1, "EnterpriseLicenseService"

    const-string v3, "deActivateKnoxLicense() failed."

    .line 1606
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_174
    .catchall {:try_start_16a .. :try_end_174} :catchall_167

    .line 1609
    :goto_174
    :try_start_174
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v2

    move-object v5, v10

    if-nez v5, :cond_1a4

    .line 1614
    iget-object v1, v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1b5

    .line 1615
    array-length v1, v10

    if-lez v1, :cond_1b5

    .line 1616
    array-length v12, v10

    const/4 v15, 0x0

    :goto_18c
    if-ge v15, v12, :cond_1b5

    aget-object v5, v10, v15

    const-string v2, "fail"

    const/16 v3, 0x12d

    const/16 v4, 0x322

    .line 1617
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_18c

    :cond_1a4
    const-string v2, "fail"

    const/16 v3, 0x12d

    const/16 v4, 0x322

    .line 1623
    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v8, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    move-object/from16 v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_1b5
    .catchall {:try_start_174 .. :try_end_1b5} :catchall_1bb

    .line 1627
    :cond_1b5
    monitor-exit p0

    return-void

    .line 1609
    :goto_1b7
    :try_start_1b7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    throw v0
    :try_end_1bb
    .catchall {:try_start_1b7 .. :try_end_1bb} :catchall_1bb

    :catchall_1bb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAllApiCallData()Z
    .registers 3

    .line 953
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 956
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLog;->deleteAllLog()Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    move-exception p0

    const-string v0, "EnterpriseLicenseService"

    const-string v1, "deleteAllApiCallData() failed"

    .line 958
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .registers 6

    const-string/jumbo p1, "pkgName"

    const-string p3, "EnterpriseLicenseService"

    .line 880
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p2, :cond_4b

    .line 882
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4b

    .line 890
    :cond_16
    :try_start_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "instanceId"

    .line 891
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    sget-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LICENSE"

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_31

    const-string p1, "deleteApiCallData(): result is null"

    .line 898
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 902
    :cond_31
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3d

    const-string p1, "deleteApiCallData(): Record does not exist"

    .line 905
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 910
    :cond_3d
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception p1

    const-string p2, "deleteApiCallData() failed"

    .line 912
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    :goto_4b
    return p0
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .registers 4

    .line 929
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_21

    .line 931
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_21

    .line 936
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p1

    const-string v0, "EnterpriseLicenseService"

    const-string v1, "deleteApiCallDataByAdmin() failed"

    .line 938
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_21
    return p0
.end method

.method public final deleteELMInfo(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "pkgName"

    .line 1937
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1939
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    .line 1943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_NDA_LICENSE_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1944
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return p1
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .registers 9

    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz p1, :cond_66

    .line 1760
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_66

    .line 1766
    :cond_1a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    .line 1767
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    invoke-virtual {p1, v6, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_38

    const-string p0, "deleteLicense(): result is null"

    .line 1773
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_55
    .catchall {:try_start_f .. :try_end_34} :catchall_53

    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1777
    :cond_38
    :try_start_38
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_47

    const-string p0, "deleteLicense(): pkgName is null, Record does not exist"

    .line 1780
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_55
    .catchall {:try_start_38 .. :try_end_43} :catchall_53

    .line 1793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1784
    :cond_47
    :try_start_47
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1787
    sget-object p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_52} :catch_55
    .catchall {:try_start_47 .. :try_end_52} :catchall_53

    goto :goto_5e

    :catchall_53
    move-exception p0

    goto :goto_62

    :catch_55
    move-exception p0

    :try_start_56
    const-string p1, "deleteLicense() failed"

    .line 1790
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_53

    .line 1793
    :cond_5e
    :goto_5e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_62
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1794
    throw p0

    .line 1793
    :cond_66
    :goto_66
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .registers 14

    const-string v0, "EnterpriseLicenseService"

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1805
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_58

    .line 1807
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_58

    .line 1811
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1812
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1815
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1817
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    .line 1821
    :cond_2c
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isElmKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "deleteLicenseByAdmin(): notify ELM observers"

    .line 1822
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    new-instance v4, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    const/4 v8, 0x0

    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Status;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_48} :catch_4b
    .catchall {:try_start_c .. :try_end_48} :catchall_49

    goto :goto_50

    :catchall_49
    move-exception p0

    goto :goto_54

    :catch_4b
    :try_start_4b
    const-string p0, "deleteLicenseByAdmin() failed"

    .line 1831
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_49

    .line 1833
    :cond_50
    :goto_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    throw p0

    .line 1833
    :cond_58
    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public final enforcePermission()V
    .registers 3

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_9

    return-void

    .line 199
    :cond_9
    :try_start_9
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 207
    :cond_2a
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllLicenseActivationsInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/ActivationInfo;",
            ">;"
        }
    .end annotation

    .line 2082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_c
    const-string v3, "getAllActivations"

    const/4 v4, 0x0

    .line 2087
    invoke-virtual {p0, v3, v4, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1c

    const-string/jumbo v0, "result"

    .line 2091
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 2094
    :cond_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2095
    throw p0
.end method

.method public getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 10

    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    .line 1108
    :try_start_d
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1110
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 1113
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_65

    .line 1118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1121
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1122
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1123
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1124
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1125
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1126
    new-instance v8, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v8, v6, v7, v5}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1128
    :cond_4b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_65

    .line 1129
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5d} :catch_5e

    return-object v0

    :catch_5e
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "getLicenseInfo() failed"

    .line 1133
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-object p0
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    .line 831
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_4b

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_4b

    .line 840
    :cond_16
    :try_start_16
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "instanceId"

    .line 841
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {p1, v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_31

    const-string p1, "getApiCallData(): result is null, Record does not exist"

    .line 847
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 851
    :cond_31
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3d

    const-string p1, "getApiCallData(): pkgName is null, Record does not exist"

    .line 854
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 859
    :cond_3d
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception p1

    const-string v0, "getApiCallData() failed"

    .line 861
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-object p0
.end method

.method public getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 974
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_22

    if-eqz p2, :cond_21

    .line 983
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_21

    .line 989
    :cond_15
    :try_start_15
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    const-string p0, "EnterpriseLicenseService"

    const-string p1, "getApiCallDataByAdmin() failed"

    .line 991
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-object v0

    :catch_22
    move-exception p0

    .line 976
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 981
    :cond_3a
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCallingPackageNameFromAppPid(I)Ljava/lang/String;
    .registers 3

    .line 2493
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_11

    .line 2495
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_11
    const-string p0, ""

    :goto_13
    return-object p0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1669
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 1671
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getELMPermissions() failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseLicenseService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, "instanceId"

    const-string/jumbo v1, "pkgName"

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_53

    .line 1959
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_53

    .line 1966
    :cond_17
    :try_start_17
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    .line 1968
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v2, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 1971
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1974
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1976
    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1977
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1978
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 1980
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1981
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4b} :catch_4c

    goto :goto_2f

    :catch_4c
    const-string p1, "EnterpriseLicenseService"

    const-string v0, "getInstanceId() failed"

    .line 1986
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    return-object p0
.end method

.method public getLicenseActivationInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;
    .registers 6

    .line 2054
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2056
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_14

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    goto :goto_15

    :cond_14
    move-object p2, p1

    .line 2066
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_19
    const-string p1, "getActivations"

    const/4 v2, 0x0

    .line 2069
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-string/jumbo p1, "result"

    .line 2072
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/knox/license/ActivationInfo;
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_30

    .line 2075
    :cond_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2076
    throw p0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 9

    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_60

    .line 1007
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_60

    .line 1015
    :cond_1a
    :try_start_1a
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1017
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1020
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1025
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1027
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1028
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1029
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 1031
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1032
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    new-instance v1, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v1, p1, v5, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_57} :catch_59

    move-object p0, v1

    goto :goto_60

    :catch_59
    const-string p1, "EnterpriseLicenseService"

    const-string v0, "getLicenseInfo() failed"

    .line 1040
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-object p0
.end method

.method public getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 8

    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_60

    .line 1056
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_60

    .line 1064
    :cond_1a
    :try_start_1a
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1066
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1069
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1074
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1076
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1077
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1078
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 1080
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1081
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    new-instance v2, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_57} :catch_59

    move-object p0, v2

    goto :goto_60

    :catch_59
    const-string p1, "EnterpriseLicenseService"

    const-string v0, "getLicenseInfoByAdmin() failed"

    .line 1089
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-object p0
.end method

.method public final getMaskedKlm(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    const-string v1, "#"

    .line 2357
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 2358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v0

    :cond_15
    const-string v2, "-"

    .line 2362
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2363
    array-length v3, p1

    const/4 v4, 0x6

    if-ge v3, v4, :cond_20

    return-object v0

    :cond_20
    new-array v0, v4, [Ljava/lang/String;

    .line 2366
    aget-object v3, p1, v1

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v3, p1, v1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v3, p1, v1

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aget-object v3, p1, v1

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aget-object v3, p1, v1

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    .line 2369
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMaskedText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x18

    if-gt p0, v0, :cond_f

    goto :goto_63

    .line 2341
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 2342
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    new-array p0, p0, [C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "\u0000"

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_63
    :goto_63
    return-object p1
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 2

    .line 1923
    sget-object p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "EnterpriseLicenseService"

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1634
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4e

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_4d

    .line 1646
    :cond_1c
    :try_start_1c
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "pkgName"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1651
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;

    const-string/jumbo v1, "getPermissions() - deserializeObject"

    .line 1652
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_40

    .line 1655
    invoke-virtual {p1}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    goto :goto_4d

    :cond_40
    const-string/jumbo p1, "ro is null!!"

    .line 1657
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    const-string/jumbo p1, "getPermissions() failed"

    .line 1661
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-object v0

    .line 1635
    :cond_4e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 1275
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .registers 8

    const-string v0, "EnterpriseLicenseService"

    .line 582
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_40

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_40

    .line 590
    :cond_13
    :try_start_13
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "instanceId"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_40

    .line 595
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_29} :catch_32

    :try_start_29
    const-string/jumbo p0, "getRightsObject() - deserializeObject"

    .line 596
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_3f

    :catch_30
    move-exception p0

    goto :goto_36

    :catch_32
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_36
    const-string/jumbo v1, "getRightsObject() failed"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    move-object p0, p1

    :cond_40
    :goto_40
    return-object p0
.end method

.method public getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .registers 8

    const-string v0, "EnterpriseLicenseService"

    .line 613
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_40

    .line 616
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_40

    .line 621
    :cond_13
    :try_start_13
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "pkgName"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_40

    .line 626
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_29} :catch_32

    :try_start_29
    const-string/jumbo p0, "getRightsObjectByAdmin() - deserializeObject"

    .line 627
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_3f

    :catch_30
    move-exception p0

    goto :goto_36

    :catch_32
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_36
    const-string/jumbo v1, "getRightsObjectByAdmin() failed"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    move-object p0, p1

    :cond_40
    :goto_40
    return-object p0
.end method

.method public final declared-synchronized getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "EnterpriseLicenseService"

    const-string v1, "UCM is not enabled"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    const/4 v0, 0x0

    .line 215
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isElmKey(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "EnterpriseLicenseService"

    .line 1840
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_17

    const-string/jumbo p1, "isElmKey(True)"

    .line 1842
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_f} :catch_11

    const/4 p0, 0x1

    return p0

    :catch_11
    const-string/jumbo p1, "isElmKey(False)"

    .line 1846
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final isLicenseLocked(I)Z
    .registers 3

    .line 2131
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getAttributes(I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    return p1

    :cond_d
    and-int/lit8 p0, p0, 0x10

    if-lez p0, :cond_12

    const/4 p1, 0x1

    .line 2136
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isLicenseLocked : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnterpriseLicenseService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .registers 9

    const-string/jumbo v0, "isPackageInstalled() - "

    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "isPackageInstalled()"

    .line 1852
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1854
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1856
    :try_start_2b
    iget-object v5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, p1, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 1857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_52} :catch_54

    const/4 p0, 0x1

    return p0

    .line 1861
    :catch_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_71
    return v4
.end method

.method public isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo v0, "isServiceAvailable"

    .line 1999
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_7e

    .line 2001
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_7e

    :cond_12
    const/4 v1, 0x1

    const-string v2, "LICENSE"

    const-string/jumbo v3, "rightsObject"

    if-eqz p1, :cond_3d

    .line 2007
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_3d

    .line 2034
    :cond_21
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v2, v5, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 2037
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;

    if-eqz p1, :cond_7d

    .line 2039
    invoke-virtual {p1}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object p1

    .line 2040
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    return v1

    .line 2009
    :cond_3d
    :goto_3d
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    .line 2011
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 2014
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 2016
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2018
    :cond_54
    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2019
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2020
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 2021
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/license/RightsObject;

    if-nez v2, :cond_6d

    goto :goto_54

    .line 2025
    :cond_6d
    invoke-virtual {v2}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 2027
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_75} :catch_78

    if-eqz v2, :cond_54

    return v1

    :catch_78
    const-string p1, "check Service did not find permission"

    .line 2046
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v0

    :cond_7e
    :goto_7e
    const-string/jumbo p1, "serviceName is null"

    .line 2002
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .registers 5

    .line 1678
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/enterprise/license/LicenseLog;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final notifyContainerLicenseStatus(Ljava/lang/String;)V
    .registers 3

    .line 290
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 291
    invoke-interface {v0, p1}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateContainerLicenseStatus(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 4

    .line 2123
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 2124
    invoke-interface {v0, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 6

    .line 2112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2114
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 2115
    invoke-interface {v2, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    goto :goto_a

    .line 2118
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    throw p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onDeviceOwnerAdded(Ljava/lang/String;)V
    .registers 3

    .line 2467
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDeviceOwnerAdded "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseLicenseService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceOwnerRemoved(Ljava/lang/String;)V
    .registers 5

    .line 2472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceOwnerRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EnterpriseLicenseService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2475
    :try_start_1b
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2477
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2c

    .line 2479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2480
    throw p0
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public onProfileOwnerAdded(I)V
    .registers 3

    .line 2449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onProfileOwnerAdded "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseLicenseService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProfileOwnerRemoved(I)V
    .registers 5

    .line 2454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileOwnerRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EnterpriseLicenseService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2457
    :try_start_1b
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2459
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2c

    .line 2461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2462
    throw p0
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v8, p6

    const-string/jumbo v1, "pkgName"

    const-string v2, "LICENSE"

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v11, "EnterpriseLicenseService"

    const-string/jumbo v3, "processKnoxLicenseResponse()"

    .line 459
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, 0x1

    const/4 v3, 0x0

    if-eqz p8, :cond_b0

    .line 469
    :try_start_1e
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 470
    invoke-virtual {v4, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 473
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v6

    const-string/jumbo v7, "rightsObject"

    .line 474
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 476
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_44

    .line 479
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    goto :goto_5d

    :cond_44
    const-string/jumbo v4, "instanceId"

    const-string v6, "-1"

    .line 482
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkgVersion"

    move-object/from16 v6, p2

    .line 483
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v5, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    :goto_5d
    if-eqz v1, :cond_a7

    const-string/jumbo v2, "processKnoxLicenseResponse(): License Table update."

    .line 489
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result setLicensePermissionForMDM("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 492
    invoke-interface {v4, v10}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 494
    invoke-interface {v4, v10}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V

    .line 498
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_NDA"

    const-string/jumbo v7, "licenseActivated"

    invoke-virtual {v4, v5, v6, v7, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_a8

    :cond_a7
    move-object v2, v3

    :goto_a8
    move-object v9, v2

    goto :goto_b8

    :catchall_aa
    move-exception v0

    goto/16 :goto_144

    :catch_ad
    move-exception v0

    goto/16 :goto_136

    :cond_b0
    const-string/jumbo v1, "processKnoxLicenseResponse().RO is null"

    .line 502
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v3

    const/4 v1, 0x0

    .line 505
    :goto_b8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_c8

    .line 508
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v16, v1

    goto :goto_ca

    :cond_c8
    move-object/from16 v16, v2

    :goto_ca
    const/16 v1, 0x321

    if-eq v8, v1, :cond_e3

    .line 512
    iget-object v2, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    .line 513
    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 514
    iget-object v1, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-static {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v3

    goto :goto_fa

    :cond_e3
    if-eq v8, v1, :cond_fa

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "klm activation record not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_fa
    :goto_fa
    new-instance v7, Lcom/samsung/android/knox/license/LicenseResult;

    .line 520
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v5

    .line 521
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedKlm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v6, v9

    move-object v15, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move/from16 v7, p9

    move-object v8, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 543
    invoke-virtual {v0, v10, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    move-object/from16 v1, p3

    .line 547
    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_132} :catch_ad
    .catchall {:try_start_1e .. :try_end_132} :catchall_aa

    .line 554
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v14

    :goto_136
    :try_start_136
    const-string/jumbo v1, "processKnoxLicenseResponse() failed"

    .line 550
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13f
    .catchall {:try_start_136 .. :try_end_13f} :catchall_aa

    .line 554
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :goto_144
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw v0
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v8, p8

    monitor-enter p0

    .line 315
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "processLicenseActivationResponse()"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v8, :cond_25

    .line 320
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_25

    .line 322
    :cond_1c
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_25

    :cond_23
    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    :goto_25
    move v2, v1

    .line 329
    :goto_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    const/4 v9, 0x0

    const/4 v3, 0x0

    if-nez p5, :cond_a1

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v10

    if-eqz v2, :cond_3f

    .line 405
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    :cond_3f
    move-object v15, v1

    .line 413
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 414
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-static {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6b

    :cond_55
    const-string v1, "EnterpriseLicenseService"

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elm activation record not found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_6b
    new-instance v7, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v5, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 421
    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v10

    move-object v0, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/16 v4, 0x320

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object v10, v15

    .line 423
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {v11, v12, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    move-object/from16 v4, p3

    .line 431
    invoke-virtual {v11, v4, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9e
    .catchall {:try_start_7 .. :try_end_9e} :catchall_2de

    .line 336
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_a1
    move-object/from16 v4, p3

    const/16 v5, 0x12d

    .line 340
    :try_start_a5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "pkgName"

    .line 341
    invoke-virtual {v0, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 344
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v7

    const-string/jumbo v10, "rightsObject"

    .line 345
    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v7, "instanceId"

    move-object/from16 v10, p4

    .line 346
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "pkgVersion"

    move-object/from16 v10, p2

    .line 347
    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v7, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_e3

    .line 352
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v7, v10, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    :goto_e1
    move v15, v0

    goto :goto_10d

    :cond_e3
    const-string/jumbo v0, "pkgName"

    .line 355
    invoke-virtual {v6, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v0, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_10c

    const-string v0, "EnterpriseLicenseService"

    const-string v7, "check key field"

    .line 359
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "licenseKey"

    const-string/jumbo v7, "na"

    .line 360
    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v0, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_10b} :catch_1ce
    .catchall {:try_start_a5 .. :try_end_10b} :catchall_1cb

    goto :goto_e1

    :cond_10c
    move v15, v1

    :goto_10d
    :try_start_10d
    const-string v0, "EnterpriseLicenseService"

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_124} :catch_1c7
    .catchall {:try_start_10d .. :try_end_124} :catchall_25a

    if-eqz v15, :cond_14d

    .line 368
    :try_start_126
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v12}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 370
    invoke-interface {v0, v12}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_136} :catch_14a
    .catchall {:try_start_126 .. :try_end_136} :catchall_146

    .line 372
    :try_start_136
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13d} :catch_142
    .catchall {:try_start_136 .. :try_end_13d} :catchall_13f

    move-object v9, v1

    goto :goto_14d

    :catchall_13f
    move-exception v0

    move-object v9, v1

    goto :goto_147

    :catch_142
    move-exception v0

    move-object v9, v1

    goto/16 :goto_1d0

    :catchall_146
    move-exception v0

    :goto_147
    move v1, v15

    goto/16 :goto_25f

    :catch_14a
    move-exception v0

    goto/16 :goto_1d0

    .line 399
    :cond_14d
    :goto_14d
    :try_start_14d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_165

    .line 402
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    if-eqz v2, :cond_160

    .line 405
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_160
    move-object/from16 v16, v0

    move v10, v1

    move-object v0, v4

    goto :goto_16b

    :cond_165
    const-string v1, "fail"

    move-object/from16 v16, v0

    move-object v0, v1

    move v10, v5

    .line 413
    :goto_16b
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 414
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-static {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v3

    goto :goto_196

    :cond_180
    const-string v1, "EnterpriseLicenseService"

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elm activation record not found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_196
    new-instance v7, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v5, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 421
    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v0

    move v4, v10

    move-object v6, v9

    move/from16 p2, v15

    move-object v15, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/16 v4, 0x320

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v10, v16

    .line 423
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {v11, v12, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 431
    invoke-virtual {v11, v0, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c5
    .catchall {:try_start_14d .. :try_end_1c5} :catchall_2de

    goto/16 :goto_253

    :catch_1c7
    move-exception v0

    move/from16 p2, v15

    goto :goto_1d0

    :catchall_1cb
    move-exception v0

    goto/16 :goto_25f

    :catch_1ce
    move-exception v0

    move v15, v1

    :goto_1d0
    :try_start_1d0
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v6, "processLicenseActivationResponse() failed"

    .line 394
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1db
    .catchall {:try_start_1d0 .. :try_end_1db} :catchall_25a

    .line 399
    :try_start_1db
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_1f3

    .line 402
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    if-eqz v2, :cond_1ee

    .line 405
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_1ee
    move-object/from16 v16, v0

    move v10, v1

    move-object v0, v4

    goto :goto_1f9

    :cond_1f3
    const-string v1, "fail"

    move-object/from16 v16, v0

    move-object v0, v1

    move v10, v5

    .line 413
    :goto_1f9
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 414
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-static {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v3

    goto :goto_224

    :cond_20e
    const-string v1, "EnterpriseLicenseService"

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elm activation record not found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_224
    new-instance v7, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v5, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 421
    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v0

    move v4, v10

    move-object v6, v9

    move/from16 p2, v15

    move-object v15, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/16 v4, 0x320

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v10, v16

    .line 423
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {v11, v12, v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 431
    invoke-virtual {v11, v0, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_253
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_256
    .catchall {:try_start_1db .. :try_end_256} :catchall_2de

    move/from16 v15, p2

    .line 436
    monitor-exit p0

    return v15

    :catchall_25a
    move-exception v0

    move/from16 p2, v15

    move/from16 v1, p2

    .line 399
    :goto_25f
    :try_start_25f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_27a

    .line 402
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    if-eqz v2, :cond_277

    .line 405
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v10, v1

    move-object/from16 v16, v2

    move-object v15, v4

    goto :goto_280

    :cond_277
    move v10, v1

    move-object v15, v4

    goto :goto_27e

    :cond_27a
    const-string v1, "fail"

    move-object v15, v1

    move v10, v5

    :goto_27e
    move-object/from16 v16, v6

    .line 413
    :goto_280
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_295

    .line 414
    iget-object v1, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-static {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2ab

    :cond_295
    const-string v1, "EnterpriseLicenseService"

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elm activation record not found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_2ab
    new-instance v7, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v5, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 421
    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v10

    move-object v6, v9

    move-object/from16 p2, v0

    move-object v0, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const/16 v4, 0x320

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v10, v16

    .line 423
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {v11, v12, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 431
    invoke-virtual {v11, v15, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    throw p2
    :try_end_2de
    .catchall {:try_start_25f .. :try_end_2de} :catchall_2de

    :catchall_2de
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p5

    move-object/from16 v10, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const-string v0, "LICENSE"

    const-string v5, "fail"

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "processLicenseValidationResult()"

    .line 655
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2d

    .line 658
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_2d

    .line 660
    :cond_24
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v8, 0x1

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v8, 0x0

    .line 667
    :goto_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    const-string v7, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    const-string v11, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    move-object/from16 v16, v5

    const-string v5, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v17, v6

    const-string v6, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    move-wide/from16 v18, v12

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    if-nez p3, :cond_9a

    .line 745
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_55

    .line 748
    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :cond_55
    invoke-virtual {v0, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    .line 754
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x321

    .line 763
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_73

    .line 767
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 771
    :cond_73
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 808
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 813
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    .line 677
    :cond_9a
    :try_start_9a
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 678
    invoke-virtual {v13, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_aa} :catch_1c3
    .catchall {:try_start_9a .. :try_end_aa} :catchall_1b6

    .line 682
    :try_start_aa
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v4
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ae} :catch_1b2
    .catchall {:try_start_aa .. :try_end_ae} :catchall_1a4

    move-object/from16 v20, v11

    :try_start_b0
    const-string/jumbo v11, "rightsObject"

    .line 683
    invoke-virtual {v1, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v4, "pkgVersion"

    .line 684
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c2} :catch_19a
    .catchall {:try_start_b0 .. :try_end_c2} :catchall_194

    if-lez v4, :cond_d9

    .line 689
    :try_start_c4
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0, v1, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ca} :catch_19a
    .catchall {:try_start_c4 .. :try_end_ca} :catchall_cc

    move v1, v0

    goto :goto_da

    :catchall_cc
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, p8

    move-object/from16 p2, v0

    move-object/from16 v11, v16

    move-object/from16 v13, v20

    goto/16 :goto_1ae

    :cond_d9
    const/4 v1, 0x0

    .line 692
    :goto_da
    :try_start_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processLicenseValidationResult(): ret = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ec} :catch_188
    .catchall {:try_start_da .. :try_end_ec} :catchall_17f

    move-object/from16 v4, v17

    :try_start_ee
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f1} :catch_17b
    .catchall {:try_start_ee .. :try_end_f1} :catchall_17f

    if-eqz v1, :cond_108

    .line 695
    :try_start_f3
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v10}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_17b
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_f9

    goto :goto_108

    :catchall_f9
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 p2, v0

    move-object/from16 v11, v16

    move-object/from16 v13, v20

    move/from16 v16, v1

    move-object/from16 v1, p8

    goto/16 :goto_241

    .line 738
    :cond_108
    :goto_108
    :try_start_108
    new-instance v0, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v11, v10}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_113} :catch_17b
    .catchall {:try_start_108 .. :try_end_113} :catchall_17f

    .line 745
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_130

    if-eqz v8, :cond_122

    .line 748
    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {v4, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :cond_122
    invoke-virtual {v4, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    .line 754
    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    invoke-virtual {v4, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_13a

    :cond_130
    move-object/from16 v11, v16

    .line 759
    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x12d

    .line 760
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_13a
    move-object/from16 v13, v20

    const/16 v2, 0x321

    .line 763
    invoke-virtual {v4, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_152

    move-object/from16 v2, p8

    .line 767
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v11, p0

    .line 768
    iget-object v2, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_154

    :cond_152
    move-object/from16 v11, p0

    .line 771
    :goto_154
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v2, v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 808
    new-instance v12, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    move-object v2, v12

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v11, v10, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 813
    invoke-virtual {v11, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_239

    :catch_17b
    move-exception v0

    move-object/from16 v11, v16

    goto :goto_18d

    :catchall_17f
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v13, v20

    move/from16 v16, v1

    goto/16 :goto_23b

    :catch_188
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v4, v17

    :goto_18d
    move-object/from16 v13, v20

    move/from16 v16, v1

    move-object/from16 v1, p8

    goto :goto_1cc

    :catchall_194
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v13, v20

    goto :goto_1a8

    :catch_19a
    move-exception v0

    move-object/from16 v1, p8

    move-object/from16 v11, v16

    move-object/from16 v4, v17

    move-object/from16 v13, v20

    goto :goto_1ca

    :catchall_1a4
    move-exception v0

    move-object v13, v11

    move-object/from16 v11, v16

    :goto_1a8
    move-object/from16 v4, p0

    move-object/from16 v1, p8

    move-object/from16 p2, v0

    :goto_1ae
    const/16 v16, 0x0

    goto/16 :goto_241

    :catch_1b2
    move-exception v0

    move-object/from16 v1, p8

    goto :goto_1c5

    :catchall_1b6
    move-exception v0

    move-object v13, v11

    move-object/from16 v11, v16

    move-object/from16 p2, v0

    move-object v1, v4

    const/16 v16, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_241

    :catch_1c3
    move-exception v0

    move-object v1, v4

    :goto_1c5
    move-object v13, v11

    move-object/from16 v11, v16

    move-object/from16 v4, v17

    :goto_1ca
    const/16 v16, 0x0

    :goto_1cc
    :try_start_1cc
    const-string/jumbo v1, "processLicenseValidationResult() failed"

    .line 740
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d5
    .catchall {:try_start_1cc .. :try_end_1d5} :catchall_23a

    .line 745
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_1f2

    if-eqz v8, :cond_1e4

    .line 748
    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :cond_1e4
    invoke-virtual {v0, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    .line 754
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1fa

    .line 759
    :cond_1f2
    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12d

    .line 760
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1fa
    const/16 v1, 0x321

    .line 763
    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_210

    move-object/from16 v1, p8

    .line 767
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 768
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_212

    :cond_210
    move-object/from16 v1, p0

    .line 771
    :goto_212
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 808
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 813
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v1, v16

    :goto_239
    return v1

    :catchall_23a
    move-exception v0

    :goto_23b
    move-object/from16 v4, p0

    move-object/from16 v1, p8

    move-object/from16 p2, v0

    .line 745
    :goto_241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_25e

    if-eqz v8, :cond_250

    .line 748
    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :cond_250
    invoke-virtual {v0, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v3

    .line 754
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_266

    .line 759
    :cond_25e
    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x12d

    .line 760
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_266
    const/16 v2, 0x321

    .line 763
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_277

    .line 767
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    iget-object v1, v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 771
    :cond_277
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v1, v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 808
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v3, p6

    move-object v1, v4

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 813
    invoke-virtual {v1, v9, v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 817
    throw p2
.end method

.method public final registerElmLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .registers 5

    .line 1420
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    return-void
.end method

.method public final registerKlmLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .registers 5

    .line 1414
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    return-void
.end method

.method public final registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/license/ILicenseResultCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;",
            ">;)V"
        }
    .end annotation

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerLicenseResultRecord() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    if-eqz p3, :cond_49

    .line 1432
    :try_start_24
    invoke-interface {p3}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1433
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeathRecipient successfully linked to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception p0

    .line 1435
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_49
    :goto_49
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .registers 2

    .line 2107
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2108
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetELMInfo(Ljava/lang/String;)Z
    .registers 4

    .line 1928
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "rightsObject"

    const/4 v1, 0x0

    .line 1930
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1931
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 1932
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LICENSE"

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .registers 9

    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    .line 1685
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz p1, :cond_69

    .line 1689
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_69

    .line 1695
    :cond_1a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    .line 1696
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    invoke-virtual {p1, v6, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_39

    const-string/jumbo p0, "resetLicense(): result is null"

    .line 1702
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_35} :catch_57
    .catchall {:try_start_f .. :try_end_35} :catchall_55

    .line 1722
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1706
    :cond_39
    :try_start_39
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_49

    const-string/jumbo p0, "resetLicense(): pkgName is null, Record does not exist"

    .line 1709
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_45} :catch_57
    .catchall {:try_start_39 .. :try_end_45} :catchall_55

    .line 1722
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 1713
    :cond_49
    :try_start_49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1716
    sget-object p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_57
    .catchall {:try_start_49 .. :try_end_54} :catchall_55

    goto :goto_61

    :catchall_55
    move-exception p0

    goto :goto_65

    :catch_57
    move-exception p0

    :try_start_58
    const-string/jumbo p1, "resetLicense() failed"

    .line 1719
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_55

    .line 1722
    :cond_61
    :goto_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    throw p0

    .line 1722
    :cond_69
    :goto_69
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .registers 6

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_39

    .line 1735
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_39

    .line 1739
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1740
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 1742
    sget-object p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_29
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    goto :goto_31

    :catchall_27
    move-exception p0

    goto :goto_35

    :catch_29
    :try_start_29
    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo p1, "resetLicenseByAdmin() failed"

    .line 1745
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_27

    .line 1747
    :cond_31
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    throw p0

    .line 1747
    :cond_39
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceRegistrationIntentToKpmAgent : status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "success"

    .line 563
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 564
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    .line 565
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.pushmanager"

    .line 566
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    .line 567
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 568
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v0, "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public final sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    .line 2149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .registers 18

    .line 2143
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 2157
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendElmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p9

    const/16 v0, 0x321

    const-string v14, "EnterpriseLicenseService"

    if-nez p10, :cond_3e

    const/16 v2, 0x25a

    if-eq v9, v2, :cond_3e

    if-eq v10, v0, :cond_3e

    .line 2170
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v2, :cond_28

    .line 2173
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-virtual {v1, v11, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3c

    .line 2175
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ELM Record not found. Caller died or race condition for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    move-object v15, v2

    goto :goto_40

    :cond_3e
    move-object/from16 v15, p10

    :goto_40
    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v15, :cond_8f

    .line 2180
    invoke-static {v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v2

    if-eqz v2, :cond_8f

    if-eq v10, v0, :cond_8f

    .line 2183
    :try_start_4e
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    .line 2184
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromElmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v6

    invoke-static {v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2186
    invoke-static {v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ELM result sent by callback to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Landroid/os/DeadObjectException; {:try_start_4e .. :try_end_7f} :catch_87
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_7f} :catch_80

    goto :goto_8f

    :catch_80
    move-exception v0

    const-string v2, "RemoteException in sendElmResult"

    .line 2192
    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    :catch_87
    move-exception v0

    const-string v2, "DeadObjectException in sendElmResult"

    .line 2189
    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8d
    move/from16 v16, v17

    :cond_8f
    :goto_8f
    if-eqz v15, :cond_99

    .line 2197
    invoke-static {v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v0

    if-eqz v0, :cond_99

    if-eqz v16, :cond_12c

    .line 2199
    :cond_99
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v3, p1

    .line 2200
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 2201
    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    .line 2202
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    .line 2203
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v3, p6

    .line 2204
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move/from16 v3, p7

    .line 2205
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    move-object/from16 v3, p8

    .line 2207
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-eqz v13, :cond_dc

    .line 2211
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Permissions"

    .line 2212
    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    .line 2214
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_dc
    const-string v2, "ELM result sent by Intent to "

    if-eqz v12, :cond_109

    .line 2218
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 2219
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2221
    iget-object v5, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2222
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_109
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2228
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    return-void
.end method

.method public final sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 2242
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2250
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public final sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p8

    const/16 v14, 0x321

    const-string v15, "EnterpriseLicenseService"

    if-nez p9, :cond_3f

    if-eq v10, v14, :cond_3f

    const/16 v0, 0x25a

    if-eq v9, v0, :cond_3f

    .line 2263
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v0, :cond_28

    .line 2266
    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-virtual {v1, v11, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3c

    .line 2268
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KLM Record not found. Caller died or race condition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    move-object/from16 v16, v0

    goto :goto_41

    :cond_3f
    move-object/from16 v16, p9

    :goto_41
    const/16 v17, 0x1

    if-eqz v16, :cond_92

    .line 2273
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v2

    if-eqz v2, :cond_92

    if-eq v10, v14, :cond_92

    .line 2276
    :try_start_4d
    new-instance v8, Lcom/samsung/android/knox/license/LicenseResult;

    .line 2277
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;

    move-result-object v18

    move-object v2, v8

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p7

    move-object v0, v8

    move-object/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2280
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KLM result sent by callback to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/DeadObjectException; {:try_start_4d .. :try_end_81} :catch_89
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_81} :catch_82

    goto :goto_92

    :catch_82
    move-exception v0

    const-string v2, "RemoteException in sendKlmResult"

    .line 2286
    invoke-static {v15, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catch_89
    move-exception v0

    const-string v2, "DeadObjectException in sendKlmResult"

    .line 2283
    invoke-static {v15, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8f
    move/from16 v0, v17

    goto :goto_93

    :cond_92
    :goto_92
    const/4 v0, 0x0

    :goto_93
    if-eqz v16, :cond_9f

    .line 2291
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v2

    if-eqz v2, :cond_9f

    if-nez v0, :cond_9f

    if-ne v10, v14, :cond_12f

    .line 2294
    :cond_9f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    move-object/from16 v3, p1

    .line 2295
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 2296
    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    .line 2297
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 2298
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    move-object/from16 v3, p7

    .line 2299
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v2, 0x320

    if-ne v10, v2, :cond_ce

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    move/from16 v3, p6

    .line 2303
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_ce
    if-eqz v13, :cond_df

    .line 2309
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "Permissions"

    .line 2310
    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    .line 2312
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_df
    const-string v2, "KLM result sent by intent to "

    if-eqz v12, :cond_10c

    .line 2316
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10c

    .line 2317
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2319
    iget-object v5, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2320
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_10c
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2326
    iget-object v1, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2327
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    return-void
.end method

.method public final sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .registers 17

    .line 2236
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;",
            ">;)V"
        }
    .end annotation

    .line 1443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unregisterLicenseResultRecord() for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnterpriseLicenseService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 1446
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz p0, :cond_4b

    .line 1447
    invoke-static {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1448
    invoke-static {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->-$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeathRecipient unlinked from "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_4b
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 1454
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "license record not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void
.end method

.method public updateAdminPermissions()V
    .registers 6

    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo v0, "pkgName"

    .line 1869
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v1, v2, :cond_63

    .line 1875
    :try_start_d
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 1877
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 1880
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 1883
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1885
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1886
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1887
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdminPermissions() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4d} :catch_58

    .line 1893
    :try_start_4d
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_26

    :catch_53
    move-exception v2

    .line 1895
    :try_start_54
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_26

    :catch_58
    move-exception v0

    const-string/jumbo v1, "updateAdminPermissions() failed"

    .line 1901
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_62
    return-void

    .line 1870
    :cond_63
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized validateLicenses()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1472
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->validateLicenses(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1473
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized validateLicenses(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 1482
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_46

    :try_start_8
    const-string v2, "EnterpriseLicenseService"

    .line 1486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateLicenses to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    move-object v4, p1

    goto :goto_1b

    :cond_19
    const-string v4, "all packages"

    .line 1487
    :goto_1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1486
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    .line 1491
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    new-instance p1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Landroid/os/Bundle;)V

    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1495
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_41

    .line 1498
    :try_start_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_46

    .line 1500
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    .line 1498
    :try_start_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    throw p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method
