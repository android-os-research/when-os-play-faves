.class public final Lcom/android/server/pm/PreferredActivityHelper;
.super Ljava/lang/Object;
.source "PreferredActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;
    }
.end annotation


# static fields
.field public static final TAG_DEFAULT_APPS:Ljava/lang/String; = "da"

.field public static final TAG_PREFERRED_BACKUP:Ljava/lang/String; = "pa"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$izQskCNIRnCTnqbp03aVRJ2AA6s(Lcom/android/server/pm/PreferredActivityHelper;ILjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->lambda$updateDefaultHomeNotLocked$0(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-YXH-FzVsCF1Q4E0eJBkQrsoLw(Lcom/android/server/pm/PreferredActivityHelper;Landroid/util/TypedXmlPullParser;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->lambda$restorePreferredActivities$1(Landroid/util/TypedXmlPullParser;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rT_zcq7A4bG8N-zapSxEa_Js8pM(Lcom/android/server/pm/PreferredActivityHelper;Landroid/util/TypedXmlPullParser;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->lambda$restoreDefaultApps$2(Landroid/util/TypedXmlPullParser;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method private synthetic lambda$restoreDefaultApps$2(Landroid/util/TypedXmlPullParser;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 652
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 653
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object p1

    .line 655
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    if-eqz p1, :cond_1d

    .line 657
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->setDefaultBrowser(Ljava/lang/String;ZI)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception p0

    .line 655
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private synthetic lambda$restorePreferredActivities$1(Landroid/util/TypedXmlPullParser;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 595
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V

    .line 596
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_17

    .line 597
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    return-void

    :catchall_17
    move-exception p0

    .line 596
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private synthetic lambda$updateDefaultHomeNotLocked$0(ILjava/lang/Boolean;)V
    .registers 3

    .line 206
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 207
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public addPersistentPreferredActivity(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V
    .registers 9

    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_50

    .line 476
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_16

    const-string p0, "PackageManager"

    const-string p1, "Cannot set a preferred activity with no filter actions"

    .line 477
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 485
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 486
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 487
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;Z)V

    .line 486
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 489
    iget-object p2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 490
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_4d

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 492
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 494
    :cond_47
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    return-void

    :catchall_4d
    move-exception p0

    .line 490
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0

    .line 473
    :cond_50
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "addPersistentPreferredActivity can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V
    .registers 23

    move-object v0, p0

    move-object v7, p2

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v6, "add preferred activity"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, v8

    move/from16 v3, p7

    .line 220
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 222
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_47

    move-object v1, p1

    .line 225
    invoke-interface {p1, v8}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3d

    const-string v0, "PackageManager"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_3d
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_47
    invoke-static/range {p7 .. p7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x0

    move v8, v1

    goto :goto_52

    :cond_50
    move/from16 v8, p7

    .line 238
    :goto_52
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_60

    const-string v0, "PackageManager"

    const-string v1, "Cannot set a preferred activity with no filter actions"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_60
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v9

    .line 248
    :try_start_65
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v10

    .line 249
    invoke-virtual {v10, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p9, :cond_7d

    if-eqz v1, :cond_7d

    const-string v2, "Removing prefs while adding by removeExisting"

    .line 252
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 255
    invoke-static {v10, p2, v1}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    .line 258
    :cond_7d
    new-instance v11, Lcom/android/server/pm/PreferredActivity;

    move-object v1, v11

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    move-object/from16 v1, p8

    invoke-static {v1, v11}, Lcom/android/server/pm/PackageManagerSamsungUtils;->logPreferenceChange(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    .line 261
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/PreferredActivity;

    move-object v1, v12

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 263
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 264
    monitor-exit v9
    :try_end_af
    .catchall {:try_start_65 .. :try_end_af} :catchall_ce

    .line 266
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    move-result v1

    if-eqz v1, :cond_c1

    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 267
    :cond_c1
    iget-object v0, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    :cond_c6
    move/from16 v0, p3

    move-object/from16 v1, p5

    .line 270
    invoke-static {p2, v0, v1, v8}, Lcom/android/server/DualAppManagerService;->checkLauncherSwitch(Lcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;I)V

    return-void

    :catchall_ce
    move-exception v0

    .line 264
    :try_start_cf
    monitor-exit v9
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v0
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .registers 5

    .line 498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2f

    .line 504
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 505
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z

    move-result p1

    .line 506
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2c

    if-eqz p1, :cond_2b

    .line 508
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 509
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 510
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception p0

    .line 506
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0

    .line 500
    :cond_2f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "clearPackagePersistentPreferredActivities can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearPackagePreferredActivities(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 9

    .line 367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 368
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return-void

    .line 371
    :cond_b
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    const-string v2, "PackageManager"

    if-eqz v1, :cond_19

    .line 372
    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 373
    :cond_19
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4a

    .line 376
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v3

    const/16 v5, 0x8

    if-ge v3, v5, :cond_42

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 382
    :cond_42
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    if-eqz v1, :cond_57

    .line 387
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 386
    invoke-interface {p1, v1, v0, v3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p1

    if-eqz p1, :cond_57

    return-void

    .line 395
    :cond_57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    :try_start_5b
    const-string/jumbo v0, "kioskmode"

    .line 397
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 399
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 400
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    .line 403
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 405
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 406
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_97} :catch_98

    goto :goto_b1

    :catch_98
    move-exception p1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " clearPackagePreferredActivities in kioskMode exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_b1
    :goto_b1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 416
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;I)V
    .registers 6

    .line 154
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 156
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 157
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2a

    .line 158
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_29

    .line 159
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 160
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 161
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_29
    return-void

    :catchall_2a
    move-exception p0

    .line 157
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public findPersistentPreferredActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 18

    move-object v0, p0

    .line 791
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 795
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v9, p3

    invoke-virtual {v1, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x0

    return-object v0

    .line 798
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 799
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 800
    iget-object v0, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, v10

    move/from16 v4, p3

    move-object v5, v0

    .line 803
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v13

    move-wide v3, v11

    move/from16 v5, p3

    move v6, v1

    move v7, v8

    move v8, v13

    .line 801
    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v11

    move-object v3, v10

    move-object v4, v0

    move-wide v5, v11

    move/from16 v7, p3

    .line 805
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move/from16 v9, p3

    .line 807
    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/Computer;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 792
    :cond_58
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "findPersistentPreferredActivity can only be run by the system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move v12, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 110
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v13, p10

    .line 121
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "PackageManager"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is holding mLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_35
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_41

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_41
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_55

    move v12, v2

    goto :goto_56

    :cond_55
    move v12, v3

    .line 134
    :goto_56
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v14

    .line 135
    :try_start_5b
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v1 .. v12}, Lcom/android/server/pm/Computer;->findPreferredActivityInternal2(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v1

    .line 138
    monitor-exit v14
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_91

    .line 140
    iget-boolean v2, v1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    if-eqz v2, :cond_81

    .line 144
    iget-object v0, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_81
    if-eqz p9, :cond_8e

    .line 146
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_8e

    const-string v0, "PackageManager"

    const-string v2, "No preferred activity to return"

    .line 147
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_8e
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0

    :catchall_91
    move-exception v0

    .line 138
    :try_start_92
    monitor-exit v14
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method

.method public getDefaultAppsBackup(I)[B
    .registers 6

    .line 612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_46

    .line 616
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 618
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 619
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 620
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "da"

    .line 621
    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_45

    .line 624
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 625
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_42

    :try_start_32
    const-string p0, "da"

    .line 627
    invoke-interface {v2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 629
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_45

    .line 637
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_42
    move-exception p0

    .line 625
    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    :catch_45
    return-object v1

    .line 613
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call getDefaultAppsBackup()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHomeFilter()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 2

    .line 460
    new-instance p0, Lcom/android/server/pm/WatchedIntentFilter;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    return-object p0
.end method

.method public getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 20

    move/from16 v0, p4

    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v9, p1

    invoke-interface {v9, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 855
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 858
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v1

    if-eqz v1, :cond_38

    int-to-long v5, v0

    move-object v1, p0

    .line 859
    iget-object v7, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PersonaServiceHelper;->getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Landroid/util/Pair;

    move-result-object v2

    .line 861
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 862
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_38
    move-object v1, p0

    :cond_39
    int-to-long v10, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v5, v10

    move v7, v12

    .line 866
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide v6, v10

    move v9, v0

    move v10, v13

    move v11, v14

    .line 868
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredActivities(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 718
    invoke-static {p2}, Lcom/android/server/pm/WatchedIntentFilter;->toWatchedIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 719
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivitiesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    .line 720
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 721
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_22

    .line 722
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p3}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_22
    return p0
.end method

.method public final getPreferredActivitiesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 734
    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 738
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 740
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 742
    invoke-virtual {v2}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 743
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    .line 745
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_3c

    .line 747
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v5, v5, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v5, :cond_1a

    .line 749
    :cond_3c
    invoke-interface {p1, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 748
    invoke-interface {p1, v4, p0, v0}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_1a

    :cond_47
    if-eqz p2, :cond_55

    .line 754
    new-instance v4, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v3}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    if-eqz p3, :cond_1a

    .line 757
    iget-object v3, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v3, v3, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_5f
    const-string p0, "application_policy"

    .line 766
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 765
    invoke-static {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-eqz p0, :cond_ab

    .line 770
    :try_start_6b
    invoke-interface {p0, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplicationsInternal(I)Ljava/util/List;

    move-result-object p1

    .line 771
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_73
    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;

    if-eqz p4, :cond_8f

    .line 772
    invoke-virtual {v0}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    :cond_8f
    if-eqz p2, :cond_a1

    .line 775
    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    .line 776
    invoke-virtual {v0}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->getTaskType()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->createIntentFilter(Landroid/content/Intent;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 775
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a1
    if-eqz p3, :cond_73

    .line 778
    invoke-virtual {v0}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_aa} :catch_ab

    goto :goto_73

    :catch_ab
    :cond_ab
    return v1
.end method

.method public getPreferredActivityBackup(I)[B
    .registers 7

    .line 556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_49

    .line 560
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 562
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 563
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 564
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "pa"

    .line 565
    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_48

    .line 568
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 569
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_45

    :try_start_34
    const-string/jumbo p0, "pa"

    .line 571
    invoke-interface {v2, v1, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 573
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_48

    .line 581
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_45
    move-exception p0

    .line 569
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_48} :catch_48

    :catch_48
    return-object v1

    .line 557
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call getPreferredActivityBackup()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z
    .registers 2

    const-string p0, "android.intent.action.MAIN"

    .line 515
    invoke-virtual {p1, p0}, Lcom/android/server/pm/WatchedIntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "android.intent.category.HOME"

    invoke-virtual {p1, p0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "android.intent.category.DEFAULT"

    .line 516
    invoke-virtual {p1, p0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 19

    move-object v0, p0

    move-object v3, p2

    .line 279
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ff

    .line 283
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataAuthorities()I

    move-result v1

    if-nez v1, :cond_f6

    .line 284
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataPaths()I

    move-result v1

    if-nez v1, :cond_f6

    .line 285
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v1

    if-gt v1, v2, :cond_f6

    .line 286
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataTypes()I

    move-result v1

    if-nez v1, :cond_f6

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "replace preferred activity"

    move-object v4, p1

    move v5, v1

    move/from16 v6, p6

    .line 298
    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 300
    iget-object v4, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7b

    .line 303
    iget-object v4, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    .line 305
    :try_start_42
    iget-object v5, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v1

    const/16 v5, 0x8

    if-ge v1, v5, :cond_6c

    const-string v0, "PackageManager"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v4

    return-void

    .line 311
    :cond_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_42 .. :try_end_6d} :catchall_78

    .line 312
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :catchall_78
    move-exception v0

    .line 311
    :try_start_79
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 316
    :cond_7b
    :goto_7b
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 317
    :try_start_80
    iget-object v4, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v8, p6

    invoke-virtual {v4, v8}, Lcom/android/server/pm/Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    if-eqz v4, :cond_d4

    .line 320
    invoke-virtual {v4, p2}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_c5

    .line 321
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v2, :cond_c5

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredActivity;

    .line 339
    iget-object v6, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v7, v6, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v7, :cond_c5

    iget-object v6, v6, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v6, v2, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/high16 v9, 0xfff0000

    and-int/2addr v9, p3

    if-ne v6, v9, :cond_c2

    move-object/from16 v6, p4

    .line 341
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PreferredComponent;->sameSet([Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 349
    monitor-exit v1

    return-void

    :cond_c2
    move-object/from16 v6, p4

    goto :goto_c9

    :cond_c5
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    :cond_c9
    :goto_c9
    if-eqz v5, :cond_d8

    const-string v2, "Removing prefs while replacing"

    .line 354
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 356
    invoke-static {v4, p2, v5}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    goto :goto_d8

    :cond_d4
    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 359
    :cond_d8
    :goto_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_80 .. :try_end_d9} :catchall_f3

    .line 362
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/4 v9, 0x1

    const-string v10, "Replacing preferred"

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v9

    move/from16 v8, p6

    move-object v9, v10

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    return-void

    :catchall_f3
    move-exception v0

    .line 359
    :try_start_f4
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0

    .line 287
    :cond_f6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "replacePreferredActivity expects filter to have no data authorities, paths, or types; and at most one scheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetApplicationPreferences(I)V
    .registers 10

    .line 668
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 673
    :try_start_e
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 674
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_8f

    .line 675
    :try_start_18
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 676
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_8c

    .line 677
    :try_start_1e
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 678
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 680
    :cond_29
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_8f

    .line 681
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 682
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 683
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_46
    if-ge v5, v3, :cond_5c

    .line 685
    iget-object v6, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 687
    iget-object v7, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v7, v6, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 693
    :cond_5c
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/Settings;->writePermissionStateForUserLPr(IZ)V

    .line 695
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_2e .. :try_end_65} :catchall_89

    .line 696
    :try_start_65
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->resetNetworkPolicies(I)V

    if-nez p1, :cond_80

    .line 700
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    .line 701
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 702
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PreferredActivityHelper;->resetApplicationPreferences(I)V

    .line 705
    :cond_80
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_85
    .catchall {:try_start_65 .. :try_end_85} :catchall_8f

    .line 707
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_89
    move-exception p0

    .line 695
    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8f

    :catchall_8c
    move-exception p0

    .line 676
    :try_start_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p0

    .line 707
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    throw p0
.end method

.method public final resetNetworkPolicies(I)V
    .registers 3

    .line 712
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->resetUserState(I)V

    return-void
.end method

.method public restoreDefaultApps([BI)V
    .registers 5

    .line 641
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 646
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string p1, "da"

    .line 648
    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_24

    :catch_24
    return-void

    .line 642
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call restoreDefaultApps()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final restoreFromXml(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 527
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v1, 0x1

    if-eq p0, v1, :cond_b

    goto :goto_0

    :cond_b
    if-eq p0, v0, :cond_e

    return-void

    .line 538
    :cond_e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    return-void

    .line 546
    :cond_19
    :goto_19
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result p0

    const/4 p3, 0x4

    if-ne p0, p3, :cond_21

    goto :goto_19

    .line 547
    :cond_21
    invoke-interface {p4, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;->apply(Landroid/util/TypedXmlPullParser;I)V

    return-void
.end method

.method public restorePreferredActivities([BI)V
    .registers 5

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_26

    .line 590
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 591
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo p1, "pa"

    .line 592
    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_25

    :catch_25
    return-void

    .line 586
    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call restorePreferredActivities()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHomeActivity(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;I)V
    .registers 13

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 435
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {p1, v0, p3}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    .line 440
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 441
    new-array v6, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v2, v1, :cond_3c

    .line 443
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 444
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 445
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    aput-object v5, v6, v2

    if-nez v3, :cond_39

    .line 447
    invoke-virtual {v5, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v3, 0x1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3c
    if-eqz v3, :cond_4c

    .line 455
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivityHelper;->getHomeFilter()Lcom/android/server/pm/WatchedIntentFilter;

    move-result-object v4

    const/high16 v5, 0x100000

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void

    .line 452
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be home on user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;)V
    .registers 24

    .line 817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v12, p1

    invoke-interface {v12, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    .line 820
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 v10, p2

    .line 830
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 832
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isSpfKnoxSupported()Z

    move-result v1

    move-object/from16 v13, p0

    if-eqz v1, :cond_38

    .line 833
    iget-object v8, v13, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p0

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/PersonaServiceHelper;->isLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Z

    move-result v1

    if-eqz v1, :cond_38

    return-void

    :cond_38
    move/from16 v1, p4

    int-to-long v7, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide v4, v7

    move v6, v0

    .line 840
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v5, v7

    move-object v7, v9

    move v8, v11

    move v9, v14

    move v10, v15

    move v11, v0

    .line 843
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-string v9, "Setting last chosen"

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    move v8, v0

    .line 846
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    return-void
.end method

.method public updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V
    .registers 6

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    :cond_32
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_38
    if-ltz v0, :cond_44

    .line 426
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 427
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    :cond_44
    return-void
.end method

.method public updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z
    .registers 16

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_32
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    return v1

    .line 181
    :cond_3c
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/32 v5, 0xc0000

    move-object v2, p1

    move-object v3, v0

    move v7, p2

    .line 182
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v12, p2

    .line 184
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 187
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_62

    .line 188
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    .line 189
    :goto_63
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageManagerService;->getActiveLauncherPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    return v1

    .line 193
    :cond_70
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 194
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    return v1

    :cond_85
    if-nez v0, :cond_88

    return v1

    .line 204
    :cond_88
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PreferredActivityHelper;I)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/server/pm/PackageManagerService;->setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method
