.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
    }
.end annotation


# static fields
.field public static final DEBUG_INSTANT:Z

.field public static final RESOLUTION_BIND_TIMEOUT:I = 0x2

.field public static final RESOLUTION_CALL_TIMEOUT:I = 0x3

.field public static final RESOLUTION_FAILURE:I = 0x1

.field public static final RESOLUTION_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PackageManager"

.field public static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public static bridge synthetic -$$Nest$smfilterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smlogMetrics(IJLjava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 73
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 283
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v5, v7

    const/high16 v7, 0x800000

    or-int/2addr v5, v7

    .line 284
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_23

    const-string v5, "android.intent.extra.INSTANT_APP_TOKEN"

    .line 288
    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    move-object/from16 v7, p1

    .line 294
    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p10, :cond_4f

    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 297
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_14d

    :cond_4f
    const-string v7, "android.intent.extra.SPLIT_NAME"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p2, :cond_57

    if-eqz v2, :cond_a8

    :cond_57
    if-eqz v2, :cond_78

    .line 305
    :try_start_59
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 306
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v4, :cond_74

    .line 307
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v9, :cond_74

    .line 309
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 308
    invoke-virtual {v10, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    :cond_74
    invoke-virtual {v10, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_7a

    :cond_78
    move-object/from16 v10, p2

    .line 315
    :goto_7a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    new-array v2, v9, [Landroid/content/Intent;

    aput-object v10, v2, v8

    new-array v5, v9, [Ljava/lang/String;

    aput-object p6, v5, v8

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v22, p7

    .line 316
    invoke-interface/range {v11 .. v22}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    .line 326
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v2, "android.intent.extra.INSTANT_APP_FAILURE"

    .line 328
    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_a8} :catch_a8

    .line 333
    :catch_a8
    :cond_a8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 334
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 336
    :try_start_b0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-array v0, v9, [Landroid/content/Intent;

    aput-object v2, v0, v8

    new-array v2, v9, [Ljava/lang/String;

    aput-object p6, v2, v8

    const/high16 v19, 0x54000000

    const/16 v20, 0x0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v21, p7

    .line 337
    invoke-interface/range {v10 .. v21}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 346
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v0, "android.intent.extra.INSTANT_APP_SUCCESS"

    .line 347
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_dd} :catch_dd

    :catch_dd
    if-eqz v1, :cond_e4

    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    .line 350
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_e4
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v1, p3

    .line 352
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_148

    .line 355
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 356
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v1

    move v2, v8

    :goto_f8
    if-ge v2, v1, :cond_143

    .line 357
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 358
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 359
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v10, :cond_111

    .line 361
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v10

    if-eqz v10, :cond_111

    move v10, v9

    goto :goto_112

    :cond_111
    move v10, v8

    :goto_112
    const-string v11, "android.intent.extra.UNKNOWN_INSTANT_APP"

    .line 359
    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    const-string v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-wide v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    const-string v12, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v3, v12, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    const-string v11, "android.intent.extra.INSTANT_APP_EXTRAS"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 366
    aput-object v3, v0, v2

    if-nez v2, :cond_140

    .line 370
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    iget-wide v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v3, v10

    const-string v5, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_140
    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    :cond_143
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    .line 374
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_148
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 376
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_14d
    return-object v6
.end method

.method public static buildRequestInfo(Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/InstantAppRequestInfo;
    .registers 8

    .line 382
    new-instance v6, Landroid/content/pm/InstantAppRequestInfo;

    iget-object v0, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 383
    invoke-static {v0}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    iget v0, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 386
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-boolean v4, p0, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    iget-object v5, p0, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/InstantAppRequestInfo;-><init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V

    return-object v6
.end method

.method public static computeResolveFilters(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 475
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 476
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 479
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v2, v4, v1}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 476
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1b
    if-eqz v0, :cond_28

    .line 482
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    return-object v4

    .line 486
    :cond_28
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v0

    const-string v3, "PackageManager"

    if-eqz v0, :cond_113

    .line 487
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_38

    goto/16 :goto_113

    .line 498
    :cond_38
    new-instance v6, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;

    move-object v5, p1

    invoke-direct {v6, p1}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 500
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_44
    if-ltz v5, :cond_af

    .line 501
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstantAppIntentFilter;

    .line 502
    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_ab

    .line 503
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_59

    goto :goto_ab

    .line 506
    :cond_59
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_5f
    if-ltz v9, :cond_ab

    .line 507
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter;

    .line 509
    invoke-virtual {v10}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_73

    .line 511
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_97

    :cond_73
    const-string/jumbo v11, "http"

    .line 512
    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_85

    const-string/jumbo v11, "https"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_97

    :cond_85
    const-string v11, "android.intent.action.VIEW"

    .line 513
    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_97

    const-string v11, "android.intent.category.BROWSABLE"

    .line 514
    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_97

    move-object v10, p0

    goto :goto_a8

    .line 517
    :cond_97
    new-instance v11, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 521
    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v12

    .line 522
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-direct {v11, v10, v2, v12, v13}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v10, p0

    .line 517
    invoke-virtual {v6, p0, v11}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    :goto_a8
    add-int/lit8 v9, v9, -0x1

    goto :goto_5f

    :cond_ab
    :goto_ab
    move-object v10, p0

    add-int/lit8 v5, v5, -0x1

    goto :goto_44

    :cond_af
    move-object v10, p0

    const/4 v0, 0x0

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move v10, v0

    move/from16 v11, p4

    .line 527
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "["

    if-nez v5, :cond_e4

    .line 530
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_e3

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Found match(es); "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    return-object v0

    .line 534
    :cond_e4
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_112

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] No matches found package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    return-object v4

    .line 489
    :cond_113
    :goto_113
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_11a

    return-object v4

    .line 493
    :cond_11a
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_123

    const-string v0, "No app filters; go to phase 2"

    .line 494
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 455
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 456
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, -0x801

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public static doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 25

    move-object/from16 v1, p3

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 142
    iget-object v13, v1, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 143
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v14, "["

    const-string v15, "PackageManager"

    if-eqz v0, :cond_27

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; resolving"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/16 v16, 0x0

    const/4 v0, 0x0

    .line 149
    iget-object v12, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 152
    :try_start_2f
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/InstantAppResolver;->buildRequestInfo(Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/InstantAppRequestInfo;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6a

    .line 153
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6a

    .line 154
    iget-object v8, v1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 156
    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I
    :try_end_4b
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_2f .. :try_end_4b} :catch_6f

    move-object/from16 v4, p0

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    move/from16 v19, v7

    move-object v7, v12

    move-object/from16 v20, v15

    move v15, v9

    move/from16 v9, v19

    move v15, v10

    move-object/from16 v10, v17

    move-object v11, v13

    move-object/from16 p0, v12

    move-object/from16 v12, v18

    .line 154
    :try_start_61
    invoke-static/range {v4 .. v12}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v4
    :try_end_65
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_61 .. :try_end_65} :catch_68

    move-object/from16 v16, v4

    goto :goto_81

    :catch_68
    move-exception v0

    goto :goto_75

    :cond_6a
    move-object/from16 p0, v12

    move-object/from16 v20, v15

    goto :goto_81

    :catch_6f
    move-exception v0

    move-object/from16 p0, v12

    move-object/from16 v20, v15

    move v15, v10

    .line 160
    :goto_75
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    if-ne v0, v15, :cond_7b

    const/4 v0, 0x2

    goto :goto_81

    :cond_7b
    const/4 v4, 0x2

    if-ne v0, v4, :cond_80

    const/4 v0, 0x3

    goto :goto_81

    :cond_80
    move v0, v15

    .line 169
    :goto_81
    iget-boolean v4, v1, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v4, :cond_8c

    if-nez v0, :cond_8c

    const/16 v4, 0x383

    .line 170
    invoke-static {v4, v2, v3, v13, v0}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 173
    :cond_8c
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_fd

    if-nez v16, :cond_fd

    const/4 v2, 0x2

    if-ne v0, v2, :cond_af

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase1; bind timed out"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    :cond_af
    move-object/from16 v2, v20

    const/4 v3, 0x3

    if-ne v0, v3, :cond_cc

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Phase1; call timed out"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    :cond_cc
    if-eqz v0, :cond_e6

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Phase1; service connection error"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 181
    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Phase1; No results matched"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    :goto_fd
    if-nez v16, :cond_119

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_119

    .line 186
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-static {v2, v13}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, v1, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    move-object v4, v0

    move-object v5, v13

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V

    return-object v0

    :cond_119
    return-object v16
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .registers 23

    move-object/from16 v0, p4

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 197
    iget-object v12, v0, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    .line 198
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v13, "["

    const-string v14, "PackageManager"

    if-eqz v1, :cond_27

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase2; resolving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_27
    iget-object v4, v0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 202
    invoke-static {v4}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7

    .line 204
    new-instance v15, Lcom/android/server/pm/InstantAppResolver$1;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v12

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .line 246
    :try_start_3e
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/InstantAppResolver;->buildRequestInfo(Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/InstantAppRequestInfo;

    move-result-object v0

    move-object/from16 p0, p3

    move-object/from16 p1, v0

    move-object/from16 p2, v15

    move-object/from16 p3, p6

    move-wide/from16 p4, v10

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/pm/InstantAppRequestInfo;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_4f
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_3e .. :try_end_4f} :catch_50

    goto :goto_92

    :catch_50
    move-exception v0

    .line 250
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_58

    move v2, v1

    :cond_58
    const/16 v0, 0x384

    .line 253
    invoke-static {v0, v10, v11, v12, v2}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 255
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_92

    if-ne v2, v1, :cond_7b

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase2; bind timed out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 259
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase2; service connection error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    return-void
.end method

.method public static filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/UserManagerService;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    .line 397
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v1

    .line 399
    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v0

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_22

    array-length v2, v1

    if-lez v2, :cond_20

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_20

    goto :goto_22

    :cond_20
    move v2, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v2, v4

    .line 404
    :goto_23
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v8, v3

    move-object v7, v6

    :cond_2a
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v2, :cond_48

    .line 405
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v9

    if-eqz v9, :cond_48

    const-string v9, "PackageManager"

    const-string v10, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    .line 406
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 410
    :cond_48
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v9

    .line 413
    array-length v10, v1

    if-lez v10, :cond_69

    if-nez v2, :cond_54

    array-length v10, v9

    if-lez v10, :cond_69

    .line 416
    :cond_54
    array-length v10, v1

    sub-int/2addr v10, v4

    :goto_56
    if-ltz v10, :cond_65

    .line 417
    aget-object v11, v0, v10

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_62

    move v9, v4

    goto :goto_66

    :cond_62
    add-int/lit8 v10, v10, -0x1

    goto :goto_56

    :cond_65
    move v9, v3

    :goto_66
    if-nez v9, :cond_69

    goto :goto_2a

    :cond_69
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    .line 427
    invoke-static/range {v10 .. v17}, Lcom/android/server/pm/InstantAppResolver;->computeResolveFilters(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2a

    .line 431
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_84

    move v8, v4

    :cond_84
    if-nez v7, :cond_8c

    .line 435
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2a

    .line 437
    :cond_8c
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    :cond_90
    if-eqz v7, :cond_b2

    .line 441
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 442
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    .line 443
    invoke-static {v1, v2}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 p0, v0

    move-object/from16 p1, p7

    move/from16 p2, v8

    move-object/from16 p3, v1

    move-object/from16 p4, v7

    move-object/from16 p5, p8

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V

    return-object v0

    :cond_b2
    return-object v6
.end method

.method public static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 95
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 98
    :cond_b
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static logMetrics(IJLjava/lang/String;I)V
    .registers 8

    .line 544
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p0, 0x4

    .line 545
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    new-instance v0, Ljava/lang/Long;

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/16 p1, 0x385

    .line 546
    invoke-virtual {p0, p1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 p1, 0x387

    .line 548
    invoke-virtual {p0, p1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/16 p2, 0x386

    .line 549
    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 550
    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .registers 3

    .line 130
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 131
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 134
    :cond_23
    sget-object p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    return-object p0
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 110
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_13

    .line 114
    :cond_23
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_35

    .line 116
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    :goto_35
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
