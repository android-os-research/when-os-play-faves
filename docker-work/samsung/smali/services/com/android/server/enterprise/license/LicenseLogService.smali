.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    }
.end annotation


# static fields
.field public static final ACTION_LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

.field public static final MSG_CLEAN_OLD_RECORDS:I = 0x1

.field public static final MSG_ENROLL_PARENT_PROF_INSTANCE:Ljava/lang/String; = "ppi"

.field public static final MSG_ENROLL_PKG_NAME:Ljava/lang/String; = "pN"

.field public static final MSG_ENROLL_TYPE:Ljava/lang/String; = "enrollType"

.field public static final MSG_LOG_API:I = 0x2

.field public static final MSG_LOG_API_ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final MSG_LOG_API_GETTER:Ljava/lang/String; = "isGetterApi"

.field public static final MSG_LOG_API_IS_PARENT:Ljava/lang/String; = "parent"

.field public static final MSG_LOG_API_NAME:Ljava/lang/String; = "apiName"

.field public static final MSG_LOG_API_NON_DA_CALLER:Ljava/lang/String; = "NON_DA"

.field public static final MSG_LOG_API_OLD_NAMESPACE:Ljava/lang/String; = "isOldNamespace"

.field public static final MSG_LOG_API_ONS:Ljava/lang/String; = "ons"

.field public static final MSG_LOG_API_PROFILE_USER_ID:Ljava/lang/String; = "profileUserId"

.field public static final MSG_LOG_API_PUB_KEYS_MD5:Ljava/lang/String; = "pkMD5"

.field public static final MSG_LOG_API_USAGE_EVENT:Ljava/lang/String; = "API_USAGE"

.field public static final MSG_LOG_DALESS_CALLER:Ljava/lang/String; = "dalessCallerPackage"

.field public static final TAG:Ljava/lang/String; = "LicenseLogService"

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

.field public static mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$m_log(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;IZZIZI)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/enterprise/license/LicenseLogService;->_log(Ljava/lang/String;IZZIZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLicenseLogCleanNotification(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->handleLicenseLogCleanNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmHandler()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 321
    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/license/LicenseLogService$1;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "enterprise_license_policy"

    .line 105
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    sput-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 107
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->initializeHandlerThread()V

    return-void
.end method

.method public static deleteAllLog()Z
    .registers 3

    .line 291
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LICENSE_LOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "pkgName"

    .line 280
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 286
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE_LOG"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10

    const-string/jumbo v0, "value"

    const-string/jumbo v1, "id"

    const-string v2, "date"

    const/4 v3, 0x0

    .line 229
    :try_start_9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 233
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 235
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "pkgName"

    .line 236
    invoke-virtual {v6, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE_LOG"

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_78

    .line 241
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    const/4 v5, 0x0

    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v6, v3

    move-object v7, v6

    .line 249
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 250
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    if-eqz v8, :cond_52

    .line 253
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 258
    :cond_52
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_64

    .line 260
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 261
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_34

    .line 265
    :cond_64
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6b} :catch_6d

    goto :goto_34

    :cond_6c
    return-object v4

    :catch_6d
    move-exception p0

    const-string v0, "LicenseLogService"

    const-string v1, "getLog() failed"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_78
    return-object v3
.end method

.method public static log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .registers 7

    if-eqz p1, :cond_6b

    if-eqz p0, :cond_6b

    .line 122
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    if-nez v0, :cond_9

    goto :goto_6b

    .line 126
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_5e

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_1a

    goto :goto_5e

    .line 133
    :cond_1a
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apiName"

    .line 135
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adminUid"

    .line 136
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "isGetterApi"

    .line 137
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "isOldNamespace"

    .line 138
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "profileUserId"

    .line 139
    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "parent"

    .line 140
    iget-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "dalessCallerPackage"

    .line 141
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 143
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5d} :catch_5f

    goto :goto_6b

    :cond_5e
    :goto_5e
    return-void

    :catch_5f
    move-exception p0

    const-string p1, "LicenseLogService"

    const-string/jumbo p2, "log() failed"

    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    return-void
.end method


# virtual methods
.method public final _log(Ljava/lang/String;IZZIZI)V
    .registers 21

    move-object v0, p0

    move/from16 v1, p7

    const-string v9, "_log() failed"

    const-string v10, "LicenseLogService"

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move v2, p2

    .line 154
    :try_start_c
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-lez v1, :cond_19

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_46
    .catchall {:try_start_c .. :try_end_17} :catchall_44

    move-object v8, v1

    goto :goto_1a

    :cond_19
    move-object v8, v2

    :goto_1a
    if-nez v3, :cond_20

    .line 173
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 164
    :cond_20
    :try_start_20
    iget-object v1, v0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v1, :cond_4d

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    :cond_32
    move-object v2, p1

    .line 165
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/license/LicenseLogService;->_log_for_old(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 166
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/license/LicenseLogService;->_log_for_ka(Ljava/lang/String;Ljava/lang/String;ZZIZLjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_46
    .catchall {:try_start_20 .. :try_end_43} :catchall_44

    goto :goto_4d

    :catchall_44
    move-exception v0

    goto :goto_51

    :catch_46
    move-exception v0

    .line 170
    :try_start_47
    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_44

    .line 173
    :cond_4d
    :goto_4d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_51
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw v0
.end method

.method public final _log_for_ka(Ljava/lang/String;Ljava/lang/String;ZZIZLjava/lang/String;)V
    .registers 11

    .line 208
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "API_USAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p7, :cond_c

    move-object p1, p7

    goto :goto_d

    :cond_c
    move-object p1, p2

    :goto_d
    const-string/jumbo v1, "pN"

    .line 209
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo p1, "ppi"

    .line 211
    invoke-virtual {v0, p1, p6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    if-eqz p7, :cond_20

    move p1, v2

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    const-string p5, "NON_DA"

    .line 212
    invoke-virtual {v0, p5, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    if-eqz p3, :cond_2e

    const-string/jumbo p1, "isGetterApi"

    .line 214
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    :cond_2e
    if-eqz p4, :cond_36

    const-string/jumbo p1, "ons"

    .line 217
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    :cond_36
    :try_start_36
    const-string/jumbo p1, "pkMD5"

    .line 220
    iget-object p0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_42} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_42} :catch_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_4a

    :catch_43
    const-string p0, "LicenseLogService"

    const-string p1, "error getApplicationPubKeyMD5"

    .line 222
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_4a
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method public final _log_for_old(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 180
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 181
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 182
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 183
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 185
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "pkgName"

    .line 186
    invoke-virtual {p0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "id"

    .line 187
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "date"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "LICENSE_LOG"

    const-string/jumbo v0, "value"

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 197
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 198
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    sget-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, p2, v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    goto :goto_65

    .line 203
    :cond_60
    sget-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    :goto_65
    return-void
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    .line 312
    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 315
    iget-object p0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public final handleLicenseLogCleanNotification()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    const-string v3, "alarm"

    const-string/jumbo v4, "handleLicenseLogCleanNotification() failed"

    const-string v5, "LicenseLogService"

    const-string/jumbo v0, "handleLicenseLogCleanNotification()"

    .line 367
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v6, 0xb

    const/4 v7, 0x0

    .line 370
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 371
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 372
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 373
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 374
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long v10, v8, v10

    const-wide/16 v12, 0x0

    const/high16 v14, 0x48000000    # 131072.0f

    const-wide/32 v15, 0x5265c00

    .line 381
    :try_start_3c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "date<=?"

    .line 382
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    sget-object v6, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v6, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_51} :catch_7a
    .catchall {:try_start_3c .. :try_end_51} :catchall_77

    .line 390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    add-long/2addr v8, v15

    .line 393
    :try_start_56
    iget-object v0, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 394
    iget-object v1, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v2, v8, v12

    if-eqz v2, :cond_ac

    const/4 v2, 0x1

    .line 399
    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_74} :catch_75

    goto :goto_ac

    :catch_75
    move-exception v0

    goto :goto_a6

    :catchall_77
    move-exception v0

    move-object v6, v0

    goto :goto_b0

    :catch_7a
    move-exception v0

    .line 386
    :try_start_7b
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_77

    .line 390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    add-long/2addr v8, v15

    .line 393
    :try_start_86
    iget-object v0, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 394
    iget-object v1, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v2, v8, v12

    if-eqz v2, :cond_ac

    const/4 v2, 0x1

    .line 399
    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a4} :catch_a5

    goto :goto_ac

    :catch_a5
    move-exception v0

    .line 403
    :goto_a6
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    :cond_ac
    :goto_ac
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 390
    :goto_b0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    add-long/2addr v8, v15

    .line 393
    :try_start_b5
    iget-object v0, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 394
    iget-object v1, v1, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v2, v8, v12

    if-eqz v2, :cond_db

    const/4 v2, 0x1

    .line 399
    invoke-virtual {v0, v2, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d3} :catch_d4

    goto :goto_db

    :catch_d4
    move-exception v0

    .line 403
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    :cond_db
    :goto_db
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 407
    throw v6
.end method

.method public final initializeHandlerThread()V
    .registers 3

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LicenseLogService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-void
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

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
