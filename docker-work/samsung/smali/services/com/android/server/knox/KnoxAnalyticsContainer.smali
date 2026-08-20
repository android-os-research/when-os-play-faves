.class public Lcom/android/server/knox/KnoxAnalyticsContainer;
.super Ljava/lang/Object;
.source "KnoxAnalyticsContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;
    }
.end annotation


# static fields
.field public static final DA_SCHEMA_VERSION:I = 0x1

.field public static final DEBUG:Z

.field public static final LOG_DUALDAR_KA_TAG:Ljava/lang/String; = "PersonaManagerService:DualDARAnalytics"

.field public static final LOG_KA_TAG:Ljava/lang/String; = "PersonaManagerService:KnoxAnalytics"

.field public static final activity_stamp:Ljava/lang/String; = "ACTIVITY_STAMP"

.field public static final login_accounts_changed:Ljava/lang/String; = "LOGIN_ACCOUNTS_CHANGED"

.field public static final move_to_knox_file:Ljava/lang/String; = "MOVE_TO_KNOX_FILE"

.field public static final package_changed:Ljava/lang/String; = "PACKAGE_CHANGED"

.field public static final profile_removed:Ljava/lang/String; = "WORK_PROFILE_REMOVED"

.field public static final rcp_policy_changed:Ljava/lang/String; = "RCP_POLICY_CHANGED"

.field public static final status_snapshot:Ljava/lang/String; = "STATUS_SNAPSHOT"

.field public static final work_mode_off:Ljava/lang/String; = "WORK_MODE_OFF"

.field public static final work_mode_on:Ljava/lang/String; = "WORK_MODE_ON"

.field public static final work_profile_created:Ljava/lang/String; = "WORK_PROFILE_CREATED"


# instance fields
.field public final analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

.field public final basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

.field public context:Landroid/content/Context;

.field public handlerThread:Landroid/os/HandlerThread;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

.field public final locationRestrictionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPostActivePackage:Ljava/lang/String;

.field public mPostActiveTime:J

.field public mPostActiveUserId:I

.field public final separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleSendLocationLog(Lcom/android/server/knox/KnoxAnalyticsContainer;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->handleSendLocationLog(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostActiveUserChangeInternal(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->postActiveUserChangeInternal(ILandroid/content/ComponentName;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendSnapshotLog(Lcom/android/server/knox/KnoxAnalyticsContainer;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->sendSnapshotLog(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 36
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainer;)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->handlerThread:Landroid/os/HandlerThread;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    const-string v0, ""

    .line 147
    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 92
    iput-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    .line 93
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxAnalyticsContainer"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->handlerThread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v0, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;-><init>(Lcom/android/server/knox/KnoxAnalyticsContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 99
    new-instance v0, Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-direct {v0, p2, p1}, Lcom/android/server/knox/SeparatedAppsAnalytics;-><init>(Lcom/android/server/knox/IKnoxAnalyticsContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 100
    new-instance v0, Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-direct {v0, p2, p1}, Lcom/android/server/knox/BasicContainerAnalytics;-><init>(Lcom/android/server/knox/IKnoxAnalyticsContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    return-void
.end method


# virtual methods
.method public final getPasswordType(I)I
    .registers 2

    const/high16 p0, 0x10000

    if-eq p1, p0, :cond_1e

    const/high16 p0, 0x20000

    if-eq p1, p0, :cond_1c

    const/high16 p0, 0x30000

    if-eq p1, p0, :cond_1c

    const/high16 p0, 0x40000

    if-eq p1, p0, :cond_1a

    const/high16 p0, 0x50000

    if-eq p1, p0, :cond_1a

    const/high16 p0, 0x60000

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1a
    const/4 p0, 0x4

    goto :goto_1f

    :cond_1c
    const/4 p0, 0x3

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x2

    :goto_1f
    return p0
.end method

.method public final handleSendLocationLog(I)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_1f

    .line 246
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getLocationProvidersAllowed(I)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    .line 248
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_3c

    if-ne v1, v0, :cond_3c

    return-void

    .line 255
    :cond_1f
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    const-string/jumbo v2, "no_share_location"

    invoke-interface {v1, v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 257
    :try_start_29
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_39} :catch_3c

    if-ne v1, v0, :cond_3c

    return-void

    .line 264
    :catch_3c
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->requestSendSnapshotLog(I)V

    return-void
.end method

.method public final isActvtStmpNeeded(I)Z
    .registers 10

    const-string v0, "PersonaManagerService:KnoxAnalytics"

    const/4 v1, 0x0

    .line 210
    :try_start_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy.MM.dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_11} :catch_9a

    const/4 v4, 0x1

    const-string v5, ""

    if-lez p1, :cond_5c

    .line 212
    :try_start_16
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result p0

    if-ne p0, p1, :cond_5c

    const-string/jumbo p0, "log_ka_actvt_stmp_as"

    .line 214
    invoke-interface {v3, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_3c

    :cond_3b
    return v1

    .line 217
    :cond_3c
    :goto_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isActvtStmpNeeded for AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 219
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    :cond_5c
    const-string/jumbo p0, "log_ka_actvt_stmp"

    .line 226
    invoke-interface {v3, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    goto :goto_7a

    :cond_79
    return v1

    .line 229
    :cond_7a
    :goto_7a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isActvtStmpNeeded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 231
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_99
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_99} :catch_9a

    return v4

    :catch_9a
    const-string p0, "IllegalStateExcpetion. User may be in locked."

    .line 238
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public knoxAnalyticsContainer(ILjava/lang/String;)V
    .registers 13

    if-eqz p1, :cond_df

    .line 434
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_df

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_df

    .line 438
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, "PersonaManagerService:DualDARAnalytics"

    const-string v1, "DualDAR Logging"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DUAL_DAR_USER_ADDED"

    .line 454
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_df

    .line 456
    new-instance p2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_DUALDAR"

    const/4 v2, 0x1

    const-string v3, "TYPE_OF_DUALDAR"

    invoke-direct {p2, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "DualDARPolicy"

    .line 458
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v3

    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 462
    iget-object v6, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDualDARIntentProvision(Landroid/content/Context;)Z

    move-result v6

    .line 463
    iget-object v7, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDualDARTrialPeriod(Landroid/content/Context;)Z

    move-result v7

    .line 464
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getDualDARType(I)I

    move-result v4

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dual Dar Container Type Created: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, " "

    .line 471
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_71

    const-string v5, "Samsung Built-In"

    move p1, v2

    goto :goto_7e

    :cond_71
    if-eqz v3, :cond_7d

    .line 478
    :try_start_73
    invoke-interface {v3, p1}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getClientInfo(I)Ljava/lang/String;

    move-result-object v5
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_77} :catch_78

    goto :goto_7d

    :catch_78
    const-string p1, "getClientInfo failed"

    .line 481
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    move p1, v9

    :goto_7e
    const-string v3, "dTp"

    .line 484
    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v3, "sLyr"

    .line 485
    invoke-virtual {p2, v3, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo p1, "sLyrName"

    .line 486
    invoke-virtual {p2, p1, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dAppTp"

    if-nez v6, :cond_99

    if-eqz v7, :cond_99

    .line 490
    invoke-virtual {p2, p1, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    goto :goto_9c

    .line 493
    :cond_99
    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 495
    :goto_9c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payload / "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {p2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 499
    new-instance p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string p2, "DAR_AUTH_TYPE"

    invoke-direct {p1, v1, v2, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo p2, "lckTp"

    .line 500
    invoke-virtual {p1, p2, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_df
    :goto_df
    return-void
.end method

.method public logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_b

    .line 124
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result v0

    if-lez v0, :cond_b

    return-void

    .line 128
    :cond_b
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v1, 0x4

    const-string v2, "KNOX_CONTAINER"

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_55

    .line 130
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 132
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_37

    .line 133
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 134
    :cond_37
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 135
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 136
    :cond_41
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4b

    .line 137
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 138
    :cond_4b
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 139
    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 142
    :cond_55
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p0, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 143
    sget-boolean p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->DEBUG:Z

    if-eqz p0, :cond_7b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService:KnoxAnalytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method public logEventAccountChanged(ILjava/lang/String;I)V
    .registers 4

    .line 120
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/BasicContainerAnalytics;->logEventAccountChanged(ILjava/lang/String;I)V

    return-void
.end method

.method public logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public logEventDeactivationForAppSep()V
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {p0}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEventDeactivationForAppSep()V

    return-void
.end method

.method public onBroadcastIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 359
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 360
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isDoEnabled(I)Z

    move-result v0

    const-string/jumbo v1, "samsung.knox.intent.action.rcp.MOVEMENT"

    const-string v2, "android.intent.action.SCREEN_OFF"

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    if-nez v0, :cond_19

    if-eqz p1, :cond_33

    :cond_19
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    .line 361
    invoke-interface {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_33

    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    .line 362
    invoke-interface {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result v0

    if-eq p1, v0, :cond_5f

    .line 363
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 364
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    return-void

    .line 370
    :cond_5f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 372
    :cond_77
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_11f

    .line 374
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8a

    return-void

    .line 378
    :cond_8a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 390
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 p1, 0x1

    const-string v1, "KNOX_DUALDAR"

    const-string v2, "DUALDAR_PACKAGE_ADDED"

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo p2, "pN"

    .line 392
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "add"

    .line 393
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On Pkg Add, Data values : packageName = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", add = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersonaManagerService:DualDARAnalytics"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Payload / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto/16 :goto_180

    .line 397
    :cond_f0
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result v1

    if-ne p1, v1, :cond_109

    if-eqz p1, :cond_180

    .line 399
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/SeparatedAppsAnalytics;->onPackageChanged(ILjava/lang/String;I)V

    goto/16 :goto_180

    .line 401
    :cond_109
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 402
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/knox/BasicContainerAnalytics;->logPackageChanged(ILjava/lang/String;I)V

    goto :goto_180

    .line 404
    :cond_11f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 405
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkModeOn(I)V

    goto :goto_180

    .line 406
    :cond_131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 407
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkModeOff(I)V

    goto :goto_180

    .line 408
    :cond_143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_181

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    goto :goto_181

    .line 421
    :cond_159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 422
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    const-string/jumbo v0, "move_to_knox"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/BasicContainerAnalytics;->logMoveToKnox(IZ)V

    goto :goto_180

    .line 423
    :cond_170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_180

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->requestSendSnapshotLog(I)V

    :cond_180
    :goto_180
    return-void

    .line 409
    :cond_181
    :goto_181
    iget p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    if-eqz p1, :cond_1a9

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-nez p1, :cond_1a9

    iget p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_1a9

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1a9

    .line 412
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    iget v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkAppUsgae(ILjava/lang/String;J)V

    .line 416
    :cond_1a9
    iput v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    const-string p1, ""

    .line 417
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    return-void
.end method

.method public onDeviceOwnerChanged(Ljava/lang/String;)V
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logDeviceOwnerChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onSeparatedAppsCreated()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {p0}, Lcom/android/server/knox/SeparatedAppsAnalytics;->onSeparatedAppsCreated()V

    return-void
.end method

.method public onSeparatedAppsPolicyUpdated()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {p0}, Lcom/android/server/knox/SeparatedAppsAnalytics;->onSeparatedAppsPolicyUpdated()V

    return-void
.end method

.method public onWorkProfileAdded(ILjava/lang/String;)V
    .registers 4

    .line 508
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 512
    :cond_7
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkProfileAdded(ILjava/lang/String;)V

    return-void
.end method

.method public onWorkProfileRemoved(I)V
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 520
    :cond_9
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkProfileRemoved(I)V

    return-void
.end method

.method public postActiveUserChange(ILandroid/content/ComponentName;Z)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    new-instance v1, Lcom/android/server/knox/KnoxAnalyticsContainer$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/knox/KnoxAnalyticsContainer$1;-><init>(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postActiveUserChangeInternal(ILandroid/content/ComponentName;Z)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p3, :cond_e2

    if-eqz p2, :cond_e2

    .line 164
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_e2

    .line 165
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.containeragent.settings.KnoxSettingsAboutKnoxActivity"

    if-eqz v1, :cond_22

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object p3, v2

    .line 169
    :cond_22
    iget v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    if-ne v1, p1, :cond_2e

    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 170
    :cond_2e
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 171
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.samsung.android.knox.containeragent.rcpcomponents.move.activity.MoveToKnoxActivity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 172
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_65

    if-eqz p1, :cond_65

    .line 173
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-nez p2, :cond_65

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 174
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {p2, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logMoveToKnoxUsage(I)V

    .line 178
    :cond_65
    iget p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_83

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p2, v1, v3

    if-lez p2, :cond_83

    .line 181
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    iget v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    iget-object v4, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v1, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->logWorkAppUsgae(ILjava/lang/String;J)V

    .line 185
    :cond_83
    iput p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 186
    iput-object p3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 189
    :cond_8d
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p2, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isDoEnabled(I)Z

    move-result p2

    if-nez p2, :cond_a7

    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isKnoxId(I)Z

    move-result p2

    if-nez p2, :cond_a7

    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p2}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result p2

    if-ne p1, p2, :cond_e2

    if-lez p1, :cond_e2

    .line 190
    :cond_a7
    invoke-virtual {p0, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->isActvtStmpNeeded(I)Z

    move-result p2

    if-eqz p2, :cond_e2

    .line 192
    :try_start_ad
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p2}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result p2

    if-ne p1, p2, :cond_c1

    if-lez p1, :cond_c1

    .line 193
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    iget p3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {p2, p3, v1}, Lcom/android/server/knox/SeparatedAppsAnalytics;->onAcitivtyChange(ILjava/lang/String;)V

    goto :goto_e2

    .line 195
    :cond_c1
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    iget p3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->logActivityChange(IILjava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ca} :catch_cb

    goto :goto_e2

    :catch_cb
    move-exception p2

    .line 198
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity_stamp KA failed"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PersonaManagerService:KnoxAnalytics"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_e2
    :goto_e2
    iget-object p2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 204
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestSendSnapshotLog(I)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 269
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendSnapshotLog(I)V
    .registers 11

    const-string v0, ""

    .line 274
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 278
    :cond_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result v2

    const-string v3, "cTp"

    .line 280
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "OToE"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_21

    move v6, v4

    goto :goto_22

    :cond_21
    move v6, v5

    .line 281
    :goto_22
    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getKnoxScreenTimeOut(I)I

    move-result v3

    const/4 v6, 0x2

    if-nez v3, :cond_30

    move v7, v5

    goto :goto_41

    :cond_30
    const/4 v7, -0x1

    if-ne v3, v7, :cond_35

    move v7, v6

    goto :goto_41

    :cond_35
    const/4 v7, -0x2

    if-ne v3, v7, :cond_3a

    const/4 v7, 0x3

    goto :goto_41

    :cond_3a
    const/16 v7, 0x1388

    .line 292
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v7, v4

    :goto_41
    const-string/jumbo v8, "lckTmoutTp"

    .line 294
    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "lckTmoutV"

    .line 295
    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getKnoxFingerprintPlus(I)I

    move-result v3

    if-ne v3, v5, :cond_57

    move v3, v5

    goto :goto_58

    :cond_57
    move v3, v4

    :goto_58
    const-string/jumbo v7, "lckTp"

    .line 298
    iget-object v8, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v8, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getActivePasswordQuality(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/knox/KnoxAnalyticsContainer;->getPasswordType(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "mfaEnb"

    if-eqz v3, :cond_6f

    move v3, v5

    goto :goto_70

    :cond_6f
    move v3, v4

    .line 299
    :goto_70
    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getDisabledPrintServices(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "disPrnSrv"

    .line 302
    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getCallerIdToShow(I)I

    move-result v3

    const-string v7, "clrId"

    if-ne v3, v5, :cond_8a

    move v3, v5

    goto :goto_8b

    :cond_8a
    move v3, v4

    .line 305
    :goto_8b
    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "nSntz"

    .line 307
    iget-object v7, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v7, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getLockScreenAllowPrivateNotification(I)I

    move-result v7

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_a6

    .line 311
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getLocationProvidersAllowed(I)I

    move-result v3

    if-nez v3, :cond_b0

    move v5, v4

    goto :goto_b0

    .line 313
    :cond_a6
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    const-string/jumbo v7, "no_share_location"

    invoke-interface {v3, v7, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    xor-int/2addr v5, v3

    :cond_b0
    :goto_b0
    const-string/jumbo v3, "lct"

    .line 316
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    iget-object v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->locationRestrictionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c3} :catch_f3

    const-string v3, "daPv"

    const-string v5, "daPn"

    if-ne v2, v6, :cond_e7

    :try_start_c9
    const-string/jumbo v0, "unknown"

    .line 321
    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getAdminComponentForLegacy(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 324
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_d8
    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p1, v0, v4}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ed

    .line 330
    :cond_e7
    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ed
    const-string p1, "STATUS_SNAPSHOT"

    .line 333
    invoke-virtual {p0, v1, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_f2} :catch_f3

    goto :goto_10b

    :catch_f3
    move-exception p0

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendSnapshotLog Failed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaManagerService:KnoxAnalytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10b
    return-void
.end method
