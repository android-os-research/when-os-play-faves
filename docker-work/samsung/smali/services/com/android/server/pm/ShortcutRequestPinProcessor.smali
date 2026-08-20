.class public Lcom/android/server/pm/ShortcutRequestPinProcessor;
.super Ljava/lang/Object;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;,
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;,
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V
    .registers 3

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 225
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result p2

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p0, "ShortcutService"

    const-string p1, "Default launcher not found."

    .line 295
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 301
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 304
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;I)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object p0

    .line 306
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public directPinShortcut(Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;)Z
    .registers 12

    .line 477
    iget-object v0, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 478
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 479
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 480
    iget v3, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 481
    iget-object v4, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 482
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 487
    iget-object v6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 488
    :try_start_15
    iget-object v7, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v7, v1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_cc

    iget-object v7, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget p1, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 489
    invoke-virtual {v7, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_cc

    .line 494
    :cond_2a
    iget-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, v4, v1, v3}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 497
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_66

    .line 507
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 509
    invoke-virtual {v3, v5}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_48

    .line 512
    monitor-exit v6

    return v4

    :cond_48
    const-string v3, "ShortcutService"

    .line 515
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Shortcut already pinned. But, it doesn\'t exist. Pinning "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_66
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 524
    invoke-virtual {v3, v5}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7
    :try_end_70
    .catchall {:try_start_15 .. :try_end_70} :catchall_d5

    if-nez v7, :cond_78

    .line 530
    :try_start_72
    iget-object v9, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v0}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_7b

    .line 532
    :cond_78
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_7b} :catch_af
    .catchall {:try_start_72 .. :try_end_7b} :catchall_d5

    :goto_7b
    if-nez v7, :cond_8f

    .line 548
    :try_start_7d
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_8c

    .line 549
    iget-object v9, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v2}, Lcom/android/server/pm/ShortcutService;->getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 551
    :cond_8c
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z

    .line 560
    :cond_8f
    invoke-virtual {p1, v2, v1, v5, v4}, Lcom/android/server/pm/ShortcutLauncher;->addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V

    if-nez v7, :cond_97

    .line 567
    invoke-virtual {v3, v5, v8, v8}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    .line 571
    :cond_97
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 573
    invoke-virtual {v3, v5}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 574
    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_7d .. :try_end_a3} :catchall_d5

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 577
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    return v4

    :catch_af
    move-exception p0

    :try_start_b0
    const-string p1, "ShortcutService"

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to pin shortcut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    monitor-exit v6

    return v8

    :cond_cc
    :goto_cc
    const-string p0, "ShortcutService"

    const-string p1, "User is locked now."

    .line 490
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    monitor-exit v6

    return v8

    :catchall_d5
    move-exception p0

    .line 574
    monitor-exit v6
    :try_end_d7
    .catchall {:try_start_b0 .. :try_end_d7} :catchall_d5

    throw p0
.end method

.method public getRequestPinConfirmationActivity(II)Landroid/util/Pair;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result p1

    .line 449
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p0, "ShortcutService"

    const-string p1, "Default launcher not found."

    .line 452
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 455
    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_20

    goto :goto_28

    .line 457
    :cond_20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_28
    return-object v1
.end method

.method public isCallerUid(I)Z
    .registers 2

    .line 468
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 3

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;I)Z
    .registers 21

    move-object v7, p0

    move-object v0, p1

    const/4 v8, 0x2

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    move v9, v1

    move/from16 v1, p4

    goto :goto_d

    :cond_a
    move/from16 v1, p4

    move v9, v8

    .line 253
    :goto_d
    invoke-virtual {p0, v1, v9}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object v10

    if-nez v10, :cond_1c

    const-string v0, "ShortcutService"

    const-string v1, "Launcher doesn\'t support requestPinnedShortcut(). Shortcut not created."

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 262
    :cond_1c
    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 266
    iget-object v1, v7, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    if-eqz v0, :cond_43

    .line 271
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 272
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, p5

    .line 271
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;I)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    move-object v12, v0

    goto :goto_67

    :cond_43
    move-object/from16 v3, p5

    .line 274
    iget-object v0, v7, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    .line 275
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1, v11}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 276
    new-instance v12, Landroid/content/pm/LauncherApps$PinItemRequest;

    new-instance v13, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;

    const/4 v6, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner-IA;)V

    invoke-direct {v12, v13, v8}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    .line 281
    :goto_67
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    move-object p1, v0

    move/from16 p2, v11

    move-object/from16 p3, v12

    move/from16 p4, v9

    move/from16 p5, p6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->startRequestConfirmActivity(Landroid/content/ComponentName;ILandroid/content/pm/LauncherApps$PinItemRequest;II)Z

    move-result v0

    return v0
.end method

.method public final requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;I)Landroid/content/pm/LauncherApps$PinItemRequest;
    .registers 17

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move/from16 v6, p4

    .line 315
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 316
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 315
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_20

    move v8, v10

    goto :goto_22

    :cond_20
    const/4 v3, 0x0

    move v8, v3

    :goto_22
    if-eqz v8, :cond_28

    .line 320
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v3

    :cond_28
    if-eqz v8, :cond_52

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 337
    iget-object v3, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 338
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 337
    invoke-virtual {v3, p3, v4, v6}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v3

    .line 338
    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v3

    const/4 v4, 0x0

    move-object v7, p2

    if-eqz v3, :cond_43

    .line 342
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    goto :goto_44

    :cond_43
    move-object v4, v7

    :goto_44
    const/16 v7, 0x1b

    .line 350
    invoke-virtual {v0, v7}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-nez v3, :cond_50

    const/4 v3, 0x2

    .line 354
    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_50
    move-object v3, v0

    goto :goto_88

    :cond_52
    move-object v7, p2

    .line 360
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 361
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 362
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 361
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 366
    :cond_6a
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 369
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 370
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 369
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    const/16 v0, 0x1a

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    move-object v3, v0

    move-object v4, v7

    .line 383
    :goto_88
    new-instance v11, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 386
    invoke-virtual {v0, p3, v6}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;IIZLcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner-IA;)V

    .line 389
    new-instance v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v11, v10}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    return-object v0
.end method

.method public sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 3

    .line 464
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public final startRequestConfirmActivity(Landroid/content/ComponentName;ILandroid/content/pm/LauncherApps$PinItemRequest;II)Z
    .registers 8

    const/4 p5, 0x1

    if-ne p4, p5, :cond_6

    const-string p4, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    goto :goto_8

    :cond_6
    const-string p4, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .line 407
    :goto_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p4, "android.content.pm.extra.PIN_ITEM_REQUEST"

    .line 409
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p3, 0x10008000

    .line 410
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    iget-object p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide p3

    .line 427
    :try_start_21
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 428
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 427
    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_2c} :catch_34
    .catchall {:try_start_21 .. :try_end_2c} :catchall_32

    .line 433
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return p5

    :catchall_32
    move-exception p1

    goto :goto_52

    :catch_34
    move-exception p2

    :try_start_35
    const-string p5, "ShortcutService"

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_32

    const/4 p1, 0x0

    .line 433
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return p1

    :goto_52
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 434
    throw p1
.end method

.method public final validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    .line 396
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shortcut ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists but disabled."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method
