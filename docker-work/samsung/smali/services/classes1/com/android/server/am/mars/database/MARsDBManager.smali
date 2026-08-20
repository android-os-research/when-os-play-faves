.class public Lcom/android/server/am/mars/database/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;,
        Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;,
        Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;,
        Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;
    }
.end annotation


# static fields
.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_ONE_MINUTE:J = 0xea60L

.field public static final MARS_DB_GETPOLICYCONDITION_MSG:I = 0x5

.field public static final MARS_DB_GET_RESTRICTION_FLAG_MSG:I = 0x9

.field public static final MARS_DB_GET_SPCM_LIST_MSG:I = 0xa

.field public static final MARS_DB_INIT_SETTING_MSG:I = 0x1

.field public static final MARS_DB_MIGRATE_MSG:I = 0x8

.field public static final MARS_DB_SM_CHANGED_MSG:I = 0x6

.field public static final MARS_DB_UPDATE_APP_STARTUP_MSG:I = 0x4

.field public static final MARS_DB_UPDATE_NOTI_TIME_MSG:I = 0x7

.field public static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x2

.field public static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x3

.field public static final SEND_MIGRATE_MSG_DELAY:I = 0x3e8


# instance fields
.field public MARsDBVersion:Ljava/lang/String;

.field public MARsLocalVersion:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public mAppStartUpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mCurrentContext:Landroid/content/Context;

.field public mDBCreate:Z

.field public mDBUpdated:Z

.field public mFASDBupdateRunnable:Ljava/lang/Runnable;

.field public mIsBigDataRestrictionColumnExist:Z

.field public mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

.field public mMARsDBManagerThread:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;

.field public mRegisteredSmartManagerDefaultAllowedListObserver:Z

.field public mRegisteredSmartManagerForcedAppStandbyObserver:Z

.field public mRegisteredSmartManagerFreezeExcludeListObserver:Z

.field public mRegisteredSmartManagerSettingsObserver:Z

.field public mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

.field public mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

.field public mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;

.field public mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDBUpdated(Lcom/android/server/am/mars/database/MARsDBManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mDBUpdated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFASDBupdateRunnable(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMARsDBManagerHandler(Lcom/android/server/am/mars/database/MARsDBManager;)Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMARsDBManagerHandler(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoMigration(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->doMigration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetContextForUser(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultAllowedListDBValues(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFreezeExcludeListFromDB(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getFreezeExcludeListFromDB()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMARsSettingsInfoForNotificationTime(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPolicyDefaultInfoFromSMToMARs(Lcom/android/server/am/mars/database/MARsDBManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSettingsValueFromDB(Lcom/android/server/am/mars/database/MARsDBManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitManagedPackagesInternal(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initManagedPackagesInternal()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCompHistory(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/mars/database/MARsDBManager;->updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePkgsToSMDB(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/util/ArrayList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgsToSMDB(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mDBUpdated:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mDBCreate:Z

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 246
    new-instance v1, Lcom/android/server/am/mars/database/MARsDBManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/mars/database/MARsDBManager$1;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;)V

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    .line 1062
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsDBManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsDBManager;
    .registers 1

    .line 74
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkBigDataRestrictionColumnExist()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1066
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string v2, "bigdataRestriction"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    .line 1068
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_1a} :catch_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1a} :catch_1f
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1d

    if-eqz v1, :cond_39

    goto :goto_36

    :catchall_1d
    move-exception p0

    goto :goto_3a

    .line 1073
    :catch_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v3, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v1, :cond_39

    goto :goto_36

    .line 1070
    :catch_2b
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v3, "checkBigDataRestrictionColumnExist, catch no column exception!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iput-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_1d

    if-eqz v1, :cond_39

    .line 1077
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    return-void

    :goto_3a
    if-eqz v1, :cond_3f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1078
    :cond_3f
    throw p0
.end method

.method public deInit()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->unregisterContentObservers(Landroid/content/Context;Z)V

    .line 98
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->deInit()V

    .line 99
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final doMigration()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v1, "doMigration send MARS_REQUEST_MIGRATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 381
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string v2, "FasDataMigration"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    goto :goto_39

    :catch_1e
    move-exception v0

    .line 384
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on migrateFasData e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public doUpdateCompHistory(Z)V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 549
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 550
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 551
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    if-nez p1, :cond_44

    .line 553
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_28} :catch_29

    goto :goto_44

    :catch_29
    move-exception p1

    .line 556
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception on handling DB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public final doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parameter is error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_19

    const-string/jumbo v1, "package_name"

    .line 502
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz p2, :cond_21

    const-string/jumbo v1, "uid"

    .line 503
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz p3, :cond_29

    const-string/jumbo v1, "mode"

    .line 504
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    if-eqz p4, :cond_31

    const-string/jumbo p3, "new"

    .line 505
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    if-eqz p5, :cond_39

    const-string/jumbo p3, "reason"

    .line 506
    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    if-eqz p6, :cond_40

    const-string p3, "extras"

    .line 507
    invoke-virtual {v0, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    if-eqz p7, :cond_48

    const-string/jumbo p3, "resetTime"

    .line 508
    invoke-virtual {v0, p3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    if-eqz p8, :cond_50

    const-string/jumbo p3, "packageType"

    .line 509
    invoke-virtual {v0, p3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    if-eqz p9, :cond_58

    const-string/jumbo p3, "level"

    .line 510
    invoke-virtual {v0, p3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    if-eqz p10, :cond_5f

    const-string p3, "disableType"

    .line 511
    invoke-virtual {v0, p3, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    if-eqz p11, :cond_66

    const-string p3, "disableResetTime"

    .line 512
    invoke-virtual {v0, p3, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_66
    if-eqz p12, :cond_6e

    const-string/jumbo p3, "prevCurrent"

    .line 513
    invoke-virtual {v0, p3, p12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    if-eqz p13, :cond_75

    const-string p3, "disableReason"

    .line 514
    invoke-virtual {v0, p3, p13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    const-string/jumbo p3, "package_name=? AND uid=?"

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p2, p4, p1

    .line 521
    :try_start_81
    sget-object p1, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "MARs-self"

    const-string/jumbo p5, "true"

    invoke-virtual {p1, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 522
    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9d} :catch_9e

    goto :goto_bc

    :catch_9e
    move-exception p1

    .line 524
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception with update() : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bc
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 265
    :catch_c
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getDefaultAllowedListDBValues()V
    .registers 10

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "type=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 1104
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "1"

    goto :goto_1a

    :cond_18
    const-string v1, "0"

    :goto_1a
    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v8, 0x0

    .line 1108
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v3, "package_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    goto :goto_51

    :catch_33
    move-exception v1

    .line 1111
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_51
    if-eqz v8, :cond_6a

    .line 1116
    :cond_53
    :goto_53
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_67

    .line 1117
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_53

    .line 1118
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 1121
    :cond_67
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1123
    :cond_6a
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->setDefaultAllowList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final getFreezeExcludeListFromDB()V
    .registers 7

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1176
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v4, "package_name"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1178
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    .line 1179
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1181
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_43

    .line 1182
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1186
    :cond_47
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/FreecessController;->setFreezeExcludeList(Ljava/util/ArrayList;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4e} :catch_56
    .catchall {:try_start_6 .. :try_end_4e} :catchall_54

    :cond_4e
    if-eqz v1, :cond_77

    .line 1193
    :goto_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_77

    :catchall_54
    move-exception p0

    goto :goto_78

    :catch_56
    move-exception v0

    .line 1189
    :try_start_57
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_54

    if-eqz v1, :cond_77

    goto :goto_50

    :cond_77
    :goto_77
    return-void

    :goto_78
    if-eqz v1, :cond_7d

    .line 1193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_7d
    throw p0
.end method

.method public final getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V
    .registers 10

    if-nez p1, :cond_a

    .line 562
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string p1, "getMARsSettingsInfoForNotificationTime() context is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    .line 567
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 570
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_9d

    if-eqz p1, :cond_95

    .line 577
    :cond_23
    :goto_23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x0

    .line 578
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 579
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 580
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_39
    const-string/jumbo v2, "sleep_notification_time"

    .line 582
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 583
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->setFirstNotiSentTimeForSleep(J)V

    :cond_4d
    const-string v2, "deep_sleep_notification_time"

    .line 585
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 586
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->setLastNotiSentTimeForDisabled(J)V

    :cond_60
    const-string/jumbo v2, "sleep_dismiss_time"

    .line 588
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 589
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->setFirstNotiSentTimeForSleepDismiss(J)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_74} :catch_75

    goto :goto_23

    :catch_75
    move-exception v0

    .line 592
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with parseLong : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 596
    :cond_91
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_9c

    .line 598
    :cond_95
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string p1, "getMARsSettingsInfoForNotificationTime error, no database!!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    return-void

    :catch_9d
    move-exception p1

    .line 572
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMARsSettingsInfoForNotificationTime : Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getPolicyDefaultInfoFromSMToMARs(Z)V
    .registers 4

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 605
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 606
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 607
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    goto :goto_21

    .line 609
    :cond_1a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 612
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initPolicyDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 613
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 614
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    goto :goto_3c

    .line 618
    :cond_35
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 621
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 622
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_50

    .line 623
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    goto :goto_57

    .line 627
    :cond_50
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    .line 630
    :goto_57
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 631
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6b

    .line 632
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    goto :goto_72

    .line 636
    :cond_6b
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 639
    :goto_72
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->initAdjustRestrictionInternal()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 640
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_86

    .line 641
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    goto :goto_b1

    .line 643
    :cond_86
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    goto :goto_b1

    .line 647
    :cond_8e
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    .line 648
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getPolicyFromDefaultValue()V

    .line 649
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    .line 650
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    .line 651
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    .line 654
    :goto_b1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setFakeTopActivityList(Ljava/util/ArrayList;)V

    .line 655
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    .line 656
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->initInternal(Z)V

    if-nez p1, :cond_d5

    .line 659
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->cancelAllPolicy()V

    :cond_d5
    return-void
.end method

.method public getRestrictionFlagFromDB()I
    .registers 7

    const-string/jumbo v3, "key=?"

    const-string/jumbo v0, "restriction_flag"

    .line 979
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "value"

    .line 980
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 983
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_3e

    :catch_1f
    move-exception v0

    .line 986
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_3e
    if-eqz v0, :cond_57

    const/4 p0, 0x0

    move v1, p0

    .line 991
    :cond_42
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 992
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 993
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_42

    .line 997
    :cond_57
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    move-result v1

    .line 998
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getRestrictionFlagFromDB error, no database!!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return v1
.end method

.method public getRestrictionFlagFromSMToMARs()V
    .registers 3

    .line 960
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->isCompareDBVersion()Z

    move-result v0

    .line 962
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    if-nez v1, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_10

    .line 964
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getRestrictionFlagFromDB()I

    move-result p0

    goto :goto_18

    .line 966
    :cond_10
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getRestrictionFlag()I

    move-result p0

    .line 968
    :goto_18
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/FreecessController;->setRestrictionFlagFromDC(I)V

    return-void
.end method

.method public getSCPMList()V
    .registers 9

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 885
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 888
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "dc_scpm_get_deep_sleep_specific_list"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "result"

    .line 889
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 891
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getScpmData : isSuccess"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "deviceidle"

    .line 894
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 893
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v4

    const-string/jumbo v5, "package_list"

    .line 895
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_80

    move v5, v3

    .line 896
    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5d

    .line 897
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 898
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-interface {v4, v6}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v7
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_51} :catch_5f

    if-eqz v7, :cond_5a

    .line 901
    :try_start_53
    invoke-interface {v4, v6}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_58

    move v5, v2

    goto :goto_5a

    :catch_58
    move-exception v1

    goto :goto_82

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5d
    move v3, v5

    goto :goto_9d

    :catch_5f
    move-exception v1

    move v2, v5

    goto :goto_82

    :cond_62
    :try_start_62
    const-string v2, "error_id"

    .line 905
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 906
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getScpmData : fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7f} :catch_80

    goto :goto_9d

    :catch_80
    move-exception v1

    move v2, v3

    .line 909
    :goto_82
    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCPM not available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 912
    :goto_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b4

    if-nez v3, :cond_ad

    .line 914
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->setSCPMList(Ljava/util/ArrayList;)V

    goto :goto_b4

    :cond_ad
    const-wide/32 v0, 0xea60

    .line 916
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendGetSCPMListMsgToMainHandler(J)V

    return-void

    :cond_b4
    :goto_b4
    const-wide/32 v0, 0x2932e00

    .line 920
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendGetSCPMListMsgToMainHandler(J)V

    return-void
.end method

.method public getSMDBVersionFromDB()Ljava/lang/String;
    .registers 9

    .line 930
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_c

    .line 931
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSMDBVersionFromDB!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo v5, "key=?"

    const-string/jumbo v0, "marsversion"

    .line 935
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "value"

    .line 936
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 939
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    goto :goto_4b

    :catch_2c
    move-exception v1

    .line 942
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_4b
    if-eqz v1, :cond_63

    .line 947
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_5f

    const/4 p0, 0x0

    .line 948
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 949
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .line 952
    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6b

    .line 954
    :cond_63
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSMDBVersionFromDB error, no database!!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    return-object v0
.end method

.method public final getSettingsValueFromDB(Z)V
    .registers 9

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "key"

    const-string/jumbo v3, "value"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_39

    :catch_1a
    move-exception v0

    .line 1138
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_39
    if-eqz v0, :cond_b8

    .line 1143
    :cond_3b
    :goto_3b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    const/4 v1, 0x0

    .line 1144
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_46
    const-string/jumbo v3, "spcm_locking_time"

    .line 1147
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5f

    .line 1148
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1149
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    :cond_5f
    const-string/jumbo v3, "spcm_switch"

    .line 1152
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1153
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1154
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(IZ)V

    :cond_77
    const-string v3, "ConfigCompTracing"

    .line 1157
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1158
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8a

    move v1, v4

    .line 1159
    :cond_8a
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsComponentTracker;->setEnabled(Z)V

    .line 1160
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsComponentTracker;->setEnabledEventLog(Z)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_98} :catch_99

    goto :goto_3b

    :catch_99
    move-exception v1

    .line 1163
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with parseInt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1166
    :cond_b5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b8
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->setContext(Landroid/content/Context;)V

    .line 89
    new-instance p1, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;

    const-string v0, "MARsDBManagerThread"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerThread:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 92
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/FASDataManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public final initAdjustRestrictionInternal()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "restrictionType"

    const-string/jumbo v1, "isAllowed"

    const-string v2, "callee"

    const-string v3, "caller"

    const-string/jumbo v4, "matchType"

    const-string v5, "action"

    .line 830
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 838
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_2b

    goto :goto_44

    :catch_2b
    move-exception v1

    .line 840
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustRestrictionInternal: Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_c5

    .line 844
    :cond_46
    :goto_46
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_c1

    const/4 p0, 0x0

    .line 845
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 846
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 p0, 0x1

    .line 847
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x2

    .line 848
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x3

    .line 849
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 p0, 0x4

    .line 850
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 p0, 0x5

    .line 851
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/mars/database/MARsVersionManager;->toNormalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 p0, 0xc

    if-eq v4, p0, :cond_b9

    const/16 p0, 0xd

    if-eq v4, p0, :cond_b1

    const/16 p0, 0x10

    if-eq v4, p0, :cond_a9

    const/16 p0, 0x12

    if-eq v4, p0, :cond_a1

    .line 867
    new-instance p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 868
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 864
    :cond_a1
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/FreecessController;->setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 861
    :cond_a9
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/am/FreecessController;->setOLAFBlockList(Ljava/lang/String;)V

    goto :goto_46

    .line 858
    :cond_b1
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/am/FreecessController;->setPendingBlocklistForGPS(Ljava/lang/String;)V

    goto :goto_46

    .line 855
    :cond_b9
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p0

    invoke-virtual {p0, v5, v9}, Lcom/android/server/am/FreecessController;->setPendingIntentList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 874
    :cond_c1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_cd

    .line 876
    :cond_c5
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initAdjustRestrictionInternal error, no database!!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cd
    return-object v0
.end method

.method public final initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "policyNum"

    const-string v1, "condition"

    const-string/jumbo v2, "matchType"

    const-string/jumbo v3, "packageName"

    .line 754
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 762
    :try_start_17
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_27

    goto :goto_40

    :catch_27
    move-exception v1

    .line 764
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustTargetExcludePackageInternal: Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_40
    if-eqz v1, :cond_7f

    .line 768
    :cond_42
    :goto_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_7b

    const/4 p0, 0x0

    .line 769
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 770
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 p0, 0x1

    .line 771
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 p0, 0x2

    .line 772
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x3

    .line 773
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 775
    new-instance p0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    .line 776
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 781
    :cond_7b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_87

    .line 783
    :cond_7f
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initAdjustTargetExcludePackageInternal error, no database!!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    return-object v0
.end method

.method public final initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "policyNum"

    const-string v1, "currentImportantValue"

    .line 794
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 801
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_3a

    :catch_21
    move-exception v1

    .line 803
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_3a
    if-eqz v1, :cond_6e

    .line 807
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_6a

    const/4 p0, 0x0

    .line 808
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 809
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    .line 810
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 811
    new-instance v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 812
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v4, p0, v2}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;II)V

    .line 814
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 817
    :cond_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_76

    .line 819
    :cond_6e
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-object v0
.end method

.method public final initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    .line 664
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 671
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    goto :goto_3b

    :catch_22
    move-exception v1

    .line 673
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initMARsSettingsDefinitionInternal : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_67

    .line 677
    :cond_3d
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_63

    const/4 p0, 0x0

    .line 678
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 679
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 680
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 681
    new-instance v3, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v4, p0, v2}, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 686
    :cond_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6f

    .line 688
    :cond_67
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initMARsSettingsDefinitionInternal error, no database!!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    return-object v0
.end method

.method public final initManagedPackagesInternal()V
    .registers 6

    .line 1042
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1043
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 1044
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    goto :goto_1f

    .line 1050
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string v1, "Packages database not exist, and not created!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_1f
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-nez v0, :cond_42

    .line 1054
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 1055
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1056
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x1

    .line 1055
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1057
    iput-boolean v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    :cond_42
    return-void
.end method

.method public final initPolicyDefinitionInternal()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->checkBigDataRestrictionColumnExist()V

    .line 702
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v0, :cond_22

    const-string/jumbo v1, "policyNum"

    const-string/jumbo v2, "isPolicyEnabled"

    const-string/jumbo v3, "targetCategory"

    const-string/jumbo v4, "restriction"

    const-string/jumbo v5, "killType"

    const-string v6, "firstTriggerTime"

    const-string/jumbo v7, "repeatTriggerTime"

    const-string v8, "bigdataRestriction"

    .line 703
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_22
    const-string/jumbo v1, "policyNum"

    const-string/jumbo v2, "isPolicyEnabled"

    const-string/jumbo v3, "targetCategory"

    const-string/jumbo v4, "restriction"

    const-string/jumbo v5, "killType"

    const-string v6, "firstTriggerTime"

    const-string/jumbo v7, "repeatTriggerTime"

    .line 707
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    :goto_3a
    move-object v3, v0

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 716
    :try_start_43
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_53

    goto :goto_6c

    :catch_53
    move-exception v1

    .line 718
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initPolicyDefinitionInternal: Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_6c
    if-eqz v1, :cond_d7

    .line 722
    :cond_6e
    :goto_6e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_d3

    const/4 p0, 0x0

    .line 723
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 724
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 p0, 0x1

    .line 725
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 p0, 0x2

    .line 726
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 p0, 0x3

    .line 727
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 p0, 0x4

    .line 728
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 p0, 0x5

    .line 729
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 p0, 0x6

    .line 730
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 731
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    .line 734
    new-instance p0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/mars/database/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    .line 737
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 740
    :cond_d3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_df

    .line 742
    :cond_d7
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initPolicyDefinitionInternal error, no database!!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_df
    return-object v0
.end method

.method public final isCompareDBVersion()Z
    .registers 7

    const-string/jumbo v0, "isCompareDBVersion(), IndexOutOfBoundsException"

    .line 1009
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->getMARsLocalVersionFromDefaultValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSMDBVersionFromDB()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    .line 1011
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->getMARsSettingsInfoForNotificationTime(Landroid/content/Context;)V

    .line 1013
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 1015
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_25
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_2c

    .line 1017
    :catch_26
    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 1021
    :goto_2c
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2c .. :try_end_32} :catch_33

    goto :goto_38

    .line 1023
    :catch_33
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    if-eqz v3, :cond_51

    if-eqz v4, :cond_51

    .line 1026
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1027
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt v0, p0, :cond_51

    const/4 v2, 0x1

    :cond_51
    return v2
.end method

.method public isSMProviderExist()Z
    .registers 8

    .line 1087
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_19
    .catchall {:try_start_0 .. :try_end_10} :catchall_17

    if-eqz p0, :cond_37

    .line 1093
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_17
    move-exception p0

    goto :goto_39

    :catch_19
    move-exception v0

    .line 1089
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred in isSMProviderExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_17

    :cond_37
    const/4 p0, 0x0

    return p0

    .line 1096
    :goto_39
    throw p0
.end method

.method public registerContentObservers(Landroid/content/Context;)V
    .registers 8

    .line 1229
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    .line 1230
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    .line 1231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    .line 1232
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1231
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1233
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    .line 1236
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    if-nez v0, :cond_3e

    .line 1237
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    .line 1238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    .line 1239
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1238
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1240
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    .line 1243
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-nez v0, :cond_5c

    .line 1244
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 1245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    .line 1246
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 1245
    invoke-virtual {v0, v3, v2, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1247
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 1250
    :cond_5c
    iget-boolean p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    if-nez p1, :cond_a0

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 1251
    new-instance p1, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;

    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;

    .line 1252
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;

    iget-object v4, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 1253
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1252
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1254
    iput-boolean v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_88} :catch_89

    goto :goto_a0

    :catch_89
    move-exception p1

    .line 1257
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    :goto_a0
    return-void
.end method

.method public sendGetMARsPolicyConditionMsgToDBHandler(Z)V
    .registers 5

    .line 327
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "boot"

    .line 330
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 333
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendGetRestrictionFlagMsgToMainHandler()V
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x9

    .line 392
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 393
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendGetSCPMListMsgToMainHandler(J)V
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0xa

    .line 400
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 403
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendGetSCPMListMsgToMainHandler"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendInitSettingMsgToDBHandler()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/MARsDBManager;->getSCPMList()V

    return-void
.end method

.method public sendMigrateMsgToDBHandler()V
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x8

    .line 369
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 370
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 374
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendSMDBChangedMsgToDBHandler(ZZZ)V
    .registers 7

    .line 341
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 344
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "onCreate"

    .line 345
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "onUpgrade"

    .line 346
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "onInit"

    .line 347
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 350
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSdhmsDBCompleteMsgToDBHandler()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendSdhmsDBCompleteMsgToDBHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 9

    .line 310
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callee"

    .line 313
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "caller"

    .line 314
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "isblock"

    .line 315
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "requesttime"

    .line 316
    invoke-virtual {v1, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 319
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdateNotiTimeMsgToMainHandler(I)V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    if-nez v0, :cond_5

    return-void

    .line 357
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 362
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "values"

    .line 287
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 288
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 290
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V
    .registers 5

    .line 300
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "value"

    .line 303
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 304
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 306
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    return-void
.end method

.method public switchUser(Landroid/content/Context;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->unregisterContentObservers(Landroid/content/Context;Z)V

    .line 104
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mCurrentContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterContentObservers(Landroid/content/Context;Z)V
    .registers 6

    .line 1264
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1266
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    :cond_10
    if-nez p2, :cond_21

    .line 1269
    iget-boolean p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-eqz p2, :cond_21

    .line 1270
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1271
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    .line 1274
    :cond_21
    iget-boolean p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    if-eqz p2, :cond_32

    .line 1275
    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerFreezeExcludeListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFreezeExcludeListObserver;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1276
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerFreezeExcludeListObserver:Z

    .line 1278
    :cond_32
    iget-boolean p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z

    if-eqz p2, :cond_49

    .line 1279
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mSmartManagerDefaultAllowedListObserver:Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1280
    iput-boolean v1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mRegisteredSmartManagerDefaultAllowedListObserver:Z
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_49

    .line 1283
    :catch_42
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string p1, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void
.end method

.method public final updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 8

    .line 530
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "calleepackage"

    .line 531
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callerpackage"

    .line 532
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "isblocked"

    .line 533
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "requestTime"

    .line 534
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 537
    :try_start_26
    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object p2, p0, Lcom/android/server/am/mars/database/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0x63

    if-le p2, p3, :cond_39

    const/4 p2, 0x0

    .line 539
    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 541
    :cond_39
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V
    .registers 16

    if-nez p1, :cond_3

    return-void

    .line 433
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 434
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_11

    :cond_10
    move-object v2, v1

    .line 437
    :goto_11
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 438
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1e

    :cond_1d
    move-object v3, v1

    .line 441
    :goto_1e
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 442
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2b

    :cond_2a
    move-object v4, v1

    .line 445
    :goto_2b
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrNew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 446
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrNew()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_38

    :cond_37
    move-object v5, v1

    .line 449
    :goto_38
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 450
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_45

    :cond_44
    move-object v6, v1

    .line 453
    :goto_45
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 454
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_52

    :cond_51
    move-object v7, v1

    .line 457
    :goto_52
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 458
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_5f

    :cond_5e
    move-object v8, v1

    .line 461
    :goto_5f
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 462
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_6c

    :cond_6b
    move-object v9, v1

    .line 465
    :goto_6c
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 466
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_79

    :cond_78
    move-object v10, v1

    .line 469
    :goto_79
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 470
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_86

    :cond_85
    move-object v11, v1

    .line 473
    :goto_86
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 474
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_93

    :cond_92
    move-object v12, v1

    .line 477
    :goto_93
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9f

    .line 478
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_a0

    :cond_9f
    move-object v13, v1

    .line 481
    :goto_a0
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 482
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v1

    :cond_aa
    move-object p1, v1

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, p1

    .line 485
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_bc} :catch_bd

    goto :goto_db

    :catch_bd
    move-exception p1

    .line 488
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception on handling DB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_db
    return-void
.end method

.method public final updatePkgsToSMDB(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePkgsToSMDB : begin --size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 412
    :goto_1c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 413
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/database/FASEntity;

    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->updatePkgToSMDB(Lcom/android/server/am/mars/database/FASEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 416
    :cond_2e
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePkgsToSMDB : end"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_55

    :catch_37
    move-exception p1

    .line 418
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception on handling DB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return-void
.end method
