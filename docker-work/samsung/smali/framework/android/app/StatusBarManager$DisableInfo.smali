.class public final Landroid/app/StatusBarManager$DisableInfo;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableInfo"
.end annotation


# instance fields
.field private blacklist mClock:Z

.field private blacklist mNavigateHome:Z

.field private blacklist mNotificationIcons:Z

.field private blacklist mNotificationPeeking:Z

.field private blacklist mRecents:Z

.field private blacklist mRotationSuggestion:Z

.field private blacklist mSearch:Z

.field private blacklist mStatusBarExpansion:Z

.field private blacklist mSystemIcons:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 6
    .param p1, "flags1"    # I
    .param p2, "flags2"    # I

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1312
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1313
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1314
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1315
    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_34

    move v0, v1

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1316
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_3f

    :cond_3e
    move v0, v2

    :goto_3f
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1317
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_48

    move v0, v1

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1318
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_52

    move v0, v1

    goto :goto_53

    :cond_52
    move v0, v2

    :goto_53
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1319
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_5a

    goto :goto_5b

    :cond_5a
    move v1, v2

    :goto_5b
    iput-boolean v1, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    .line 1320
    return-void
.end method


# virtual methods
.method public blacklist areAllComponentsDisabled()Z
    .registers 2

    .line 1482
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public whitelist areAllComponentsEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1458
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public blacklist areNotificationIconsDisabled()Z
    .registers 2

    .line 1434
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    return v0
.end method

.method public blacklist areSystemIconsDisabled()Z
    .registers 2

    .line 1406
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    return v0
.end method

.method public blacklist isClockDisabled()Z
    .registers 2

    .line 1420
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    return v0
.end method

.method public whitelist isNavigateToHomeDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1347
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    return v0
.end method

.method public whitelist isNotificationPeekingDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1362
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    return v0
.end method

.method public whitelist isRecentsDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1377
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    return v0
.end method

.method public blacklist isRotationSuggestionDisabled()Z
    .registers 2

    .line 1449
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    return v0
.end method

.method public whitelist isSearchDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1392
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    return v0
.end method

.method public whitelist isStatusBarExpansionDisabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1332
    iget-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    return v0
.end method

.method public blacklist setClockDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1425
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1426
    return-void
.end method

.method public blacklist setDisableAll()V
    .registers 2

    .line 1489
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1490
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1491
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1492
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1493
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1494
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1495
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1496
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1497
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    .line 1498
    return-void
.end method

.method public blacklist setEnableAll()V
    .registers 2

    .line 1465
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1466
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1467
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1468
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1469
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1470
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1471
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    .line 1472
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1473
    iput-boolean v0, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    .line 1474
    return-void
.end method

.method public blacklist setNagivationHomeDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1352
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    .line 1353
    return-void
.end method

.method public blacklist setNotificationIconsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1439
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    .line 1440
    return-void
.end method

.method public blacklist setNotificationPeekingDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1367
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    .line 1368
    return-void
.end method

.method public blacklist setRecentsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1382
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    .line 1383
    return-void
.end method

.method public blacklist setSearchDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1397
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    .line 1398
    return-void
.end method

.method public blacklist setStatusBarExpansionDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1337
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    .line 1338
    return-void
.end method

.method public blacklist setSystemIconsDisabled(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .line 1411
    iput-boolean p1, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    .line 1412
    return-void
.end method

.method public blacklist toFlags()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1527
    const/4 v0, 0x0

    .line 1528
    .local v0, "disable1":I
    const/4 v1, 0x0

    .line 1530
    .local v1, "disable2":I
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    if-eqz v2, :cond_9

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 1531
    :cond_9
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-eqz v2, :cond_10

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 1532
    :cond_10
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-eqz v2, :cond_17

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 1533
    :cond_17
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-eqz v2, :cond_1e

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    .line 1534
    :cond_1e
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-eqz v2, :cond_25

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    .line 1535
    :cond_25
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-eqz v2, :cond_2c

    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    .line 1536
    :cond_2c
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-eqz v2, :cond_33

    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 1537
    :cond_33
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-eqz v2, :cond_3a

    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    .line 1538
    :cond_3a
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-eqz v2, :cond_40

    or-int/lit8 v1, v1, 0x10

    .line 1540
    :cond_40
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1504
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisableInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    const-string v1, " mStatusBarExpansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mStatusBarExpansion:Z

    const-string v3, "disabled"

    const-string v4, "enabled"

    if-eqz v2, :cond_1a

    move-object v2, v3

    goto :goto_1b

    :cond_1a
    move-object v2, v4

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const-string v1, " mNavigateHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNavigateHome:Z

    if-eqz v2, :cond_2a

    move-object v2, v3

    goto :goto_2b

    :cond_2a
    move-object v2, v4

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    const-string v1, " mNotificationPeeking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1508
    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationPeeking:Z

    if-eqz v2, :cond_3a

    move-object v2, v3

    goto :goto_3b

    :cond_3a
    move-object v2, v4

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    const-string v1, " mRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRecents:Z

    if-eqz v2, :cond_4a

    move-object v2, v3

    goto :goto_4b

    :cond_4a
    move-object v2, v4

    :goto_4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    const-string v1, " mSearch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSearch:Z

    if-eqz v2, :cond_5a

    move-object v2, v3

    goto :goto_5b

    :cond_5a
    move-object v2, v4

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    const-string v1, " mSystemIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mSystemIcons:Z

    if-eqz v2, :cond_6a

    move-object v2, v3

    goto :goto_6b

    :cond_6a
    move-object v2, v4

    :goto_6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    const-string v1, " mClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mClock:Z

    if-eqz v2, :cond_7a

    move-object v2, v3

    goto :goto_7b

    :cond_7a
    move-object v2, v4

    :goto_7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    const-string v1, " mNotificationIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mNotificationIcons:Z

    if-eqz v2, :cond_8a

    move-object v2, v3

    goto :goto_8b

    :cond_8a
    move-object v2, v4

    :goto_8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    const-string v1, " mRotationSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/StatusBarManager$DisableInfo;->mRotationSuggestion:Z

    if-eqz v2, :cond_99

    goto :goto_9a

    :cond_99
    move-object v3, v4

    :goto_9a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
