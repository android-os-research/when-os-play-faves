.class public Lcom/android/server/am/mars/database/FASDataManager;
.super Ljava/lang/Object;
.source "FASDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;
    }
.end annotation


# static fields
.field public static volatile fasDataManager:Lcom/android/server/am/mars/database/FASDataManager;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public mIsDisableReasonColumnExist:Ljava/lang/Boolean;

.field public mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/android/server/am/mars/database/FASDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/FASDataManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/FASDataManager;
    .registers 1

    .line 25
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final checkDisableReasonColumnExist()Ljava/lang/Boolean;
    .registers 9

    .line 67
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 73
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_25} :catch_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_25} :catch_2a
    .catchall {:try_start_e .. :try_end_25} :catchall_28

    if-eqz v0, :cond_40

    goto :goto_3d

    :catchall_28
    move-exception p0

    goto :goto_43

    .line 79
    :catch_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v2, "checkDisableReasonColumnExist-sql, catch no column exception!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_40

    goto :goto_3d

    .line 77
    :catch_34
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v2, "checkDisableReasonColumnExist, catch no column exception!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_28

    if-eqz v0, :cond_40

    .line 82
    :goto_3d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsDisableReasonColumnExist:Ljava/lang/Boolean;

    return-object p0

    :goto_43
    if-eqz v0, :cond_48

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_48
    throw p0
.end method

.method public final checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;
    .registers 9

    .line 45
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object v0

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 51
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_25} :catch_34
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_25} :catch_2a
    .catchall {:try_start_e .. :try_end_25} :catchall_28

    if-eqz v0, :cond_40

    goto :goto_3d

    :catchall_28
    move-exception p0

    goto :goto_43

    .line 57
    :catch_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v2, "checkPreBatteryUsageColumnExist-sql, catch no column exception!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_40

    goto :goto_3d

    .line 55
    :catch_34
    iget-object v1, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v2, "checkPreBatteryUsageColumnExist, catch no column exception!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_28

    if-eqz v0, :cond_40

    .line 60
    :goto_3d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->mIsPreBatteryUsageColumnExist:Ljava/lang/Boolean;

    return-object p0

    :goto_43
    if-eqz v0, :cond_48

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_48
    throw p0
.end method

.method public deInit()V
    .registers 1

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getFASDataFromDB()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkDisableReasonColumnExist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    goto :goto_26

    .line 93
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    goto :goto_26

    .line 94
    :cond_24
    sget-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    :goto_26
    move-object v3, v0

    const/4 v0, 0x0

    .line 97
    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_3a

    goto :goto_59

    :catch_3a
    move-exception v1

    .line 100
    iget-object v2, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

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

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_59
    if-eqz v1, :cond_1ff

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :cond_60
    :goto_60
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e1

    const/4 v2, 0x0

    .line 107
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 110
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkDisableReasonColumnExist()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v3, :cond_105

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_105

    .line 111
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 112
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 113
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 114
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 115
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 116
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 117
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 118
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 119
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 120
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 121
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 122
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    const/16 v3, 0xc

    .line 123
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v2

    goto/16 :goto_1da

    .line 125
    :cond_105
    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASDataManager;->checkPreBatteryUsageColumnExist()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 126
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 127
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 128
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 129
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 130
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 131
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 132
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 133
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 134
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 135
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 136
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 137
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v2

    goto :goto_1da

    .line 140
    :cond_179
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 141
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 142
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 143
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 144
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 145
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 146
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 147
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 148
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 149
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 150
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v2

    :goto_1da
    if-eqz v2, :cond_60

    .line 154
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_60

    .line 157
    :cond_1e1
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFASDataFromDB fasEntityList size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 162
    :cond_1ff
    iget-object p0, p0, Lcom/android/server/am/mars/database/FASDataManager;->TAG:Ljava/lang/String;

    const-string v1, "getFASDataFromDB no database!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/database/FASDataManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASDataManager;->context:Landroid/content/Context;

    return-void
.end method
