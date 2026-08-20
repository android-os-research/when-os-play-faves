.class public final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "ResolveIntentHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveInfoSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PreferredActivityHelper;",
            "Lcom/android/server/compat/PlatformCompat;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/UserNeedsBadgingCache;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 112
    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 113
    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 114
    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 115
    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 116
    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 117
    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final allHavePackage(Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 313
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move v1, v0

    :goto_d
    if-ge v1, p0, :cond_2a

    .line 314
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1a

    .line 315
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_29

    .line 316
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public final applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 592
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a7

    .line 593
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_21

    .line 596
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 598
    invoke-interface {p1, v2, p5, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_a3

    .line 603
    :cond_21
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 605
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 606
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_a3

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 607
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 609
    iget-object v2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_5c

    .line 610
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_58

    const-string v1, "No installer - not adding it to the ResolveInfo list"

    .line 611
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_58
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a3

    .line 618
    :cond_5c
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_65

    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    .line 619
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_65
    new-instance v2, Landroid/content/pm/ResolveInfo;

    .line 622
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 623
    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v7, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v4, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 629
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 631
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 632
    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    :cond_94
    if-nez v2, :cond_a0

    .line 637
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget v1, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a0

    goto :goto_a3

    .line 641
    :cond_a0
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a3
    :goto_a3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_a7
    return-object p2
.end method

.method public final chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p8

    move/from16 v14, p9

    if-eqz v13, :cond_1eb

    .line 186
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v12

    .line 189
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_7a

    const-string v2, "android.intent.category.HOME"

    move-object/from16 v9, p2

    .line 191
    invoke-virtual {v9, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_7a

    if-lez v12, :cond_7a

    .line 194
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 196
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 200
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 201
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    return-object v3

    .line 207
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_58

    move/from16 v16, v10

    goto :goto_5a

    :cond_58
    move/from16 v16, v11

    .line 208
    :goto_5a
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v8, 0x1

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    move/from16 v9, v17

    move v15, v10

    move/from16 v10, v16

    move/from16 v11, p9

    move v14, v12

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_7c

    return-object v1

    :cond_7a
    move v15, v10

    move v14, v12

    :cond_7c
    if-ne v14, v15, :cond_86

    const/4 v12, 0x0

    .line 218
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_86
    const/4 v12, 0x0

    if-le v14, v15, :cond_1eb

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_93

    move v10, v15

    goto :goto_94

    :cond_93
    move v10, v12

    .line 223
    :goto_94
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 224
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_d5

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_d5
    iget v3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_1e3

    iget v3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v3, v4, :cond_1e3

    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_e9

    goto/16 :goto_1e3

    .line 238
    :cond_e9
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p8

    move/from16 v11, p9

    move v15, v12

    move/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_103

    return-object v1

    :cond_103
    move v1, v15

    move v11, v1

    :goto_105
    if-ge v11, v14, :cond_140

    .line 246
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 247
    iget-boolean v2, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_114

    add-int/lit8 v1, v1, 0x1

    :cond_114
    move v8, v1

    .line 251
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 252
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, p1

    .line 254
    invoke-interface {v9, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_13c

    .line 255
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v1

    if-eqz v1, :cond_13c

    return-object v7

    :cond_13a
    move-object/from16 v9, p1

    :cond_13c
    add-int/lit8 v11, v11, 0x1

    move v1, v8

    goto :goto_105

    :cond_140
    const-wide/16 v2, 0x2

    and-long v2, p6, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14c

    const/4 v2, 0x0

    return-object v2

    .line 265
    :cond_14c
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    if-ne v1, v14, :cond_15d

    const/4 v11, 0x1

    goto :goto_15e

    :cond_15d
    move v11, v15

    .line 268
    :goto_15e
    iput-boolean v11, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 269
    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1aa

    invoke-virtual {v0, v13, v1}, Lcom/android/server/pm/ResolveIntentHelper;->allHavePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 280
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 281
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 282
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    if-eqz v0, :cond_19d

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, v2, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_1a1

    .line 285
    :cond_19d
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 287
    :goto_1a1
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 288
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    goto :goto_1ac

    :cond_1aa
    move/from16 v1, p9

    .line 290
    :goto_1ac
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1cb

    .line 293
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 294
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 293
    invoke-static {v1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 297
    :cond_1cb
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1d8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 298
    :cond_1d8
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.dock_home"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    :cond_1e3
    :goto_1e3
    move v15, v12

    .line 234
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_1eb
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 326
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "get launch intent sender for package"

    move-object/from16 v3, p1

    move v4, v1

    move/from16 v5, p5

    .line 328
    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-wide/16 v3, 0x0

    move-object/from16 v14, p1

    move/from16 v15, p5

    .line 330
    invoke-interface {v14, v2, v3, v4, v15}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 331
    invoke-static {v1, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 338
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.INFO"

    .line 339
    invoke-virtual {v13, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, p0

    .line 341
    iget-object v3, v3, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 342
    invoke-virtual {v13, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object/from16 v5, v16

    move v10, v1

    move-object/from16 v19, v11

    move/from16 v11, p5

    move-object/from16 v20, v12

    move/from16 v12, v17

    move-object v14, v13

    move/from16 v13, v18

    .line 343
    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 346
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_8c

    :cond_67
    move-object/from16 v3, v20

    .line 347
    invoke-virtual {v14, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 348
    invoke-virtual {v14, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v19

    .line 350
    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, v16

    move v10, v1

    move/from16 v11, p5

    .line 351
    invoke-interface/range {v3 .. v13}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v3

    .line 356
    :cond_8c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v3, :cond_b6

    .line 361
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b6

    .line 362
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 363
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :cond_b6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v9, v8, [Landroid/content/Intent;

    aput-object v0, v9, v1

    if-eqz v16, :cond_ca

    new-array v0, v8, [Ljava/lang/String;

    aput-object v16, v0, v1

    goto :goto_cb

    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    move-object v8, v0

    const/high16 v10, 0x4000000

    const/4 v11, 0x0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v9

    move v9, v10

    move-object v10, v11

    move/from16 v11, p5

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 371
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1

    .line 332
    :cond_e7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLaunchIntentSenderForPackage() from calling uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not own package: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p9

    .line 649
    iget-object v0, v11, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 650
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p9

    move-object/from16 v3, p6

    move-wide/from16 v4, p7

    .line 653
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    move-wide/from16 v1, p7

    move/from16 v3, p9

    move v4, v7

    move v5, v6

    move v6, v8

    .line 651
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activity options"

    move v1, v7

    move/from16 v2, p9

    .line 655
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 657
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v16, 0x40

    or-long v3, v14, v16

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v5, p9

    .line 659
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v9

    const/16 v18, 0x0

    const/4 v8, 0x0

    if-eqz v12, :cond_152

    move/from16 v6, v18

    move v7, v6

    .line 678
    :goto_56
    array-length v0, v12

    if-ge v6, v0, :cond_14e

    .line 679
    aget-object v2, v12, v6

    if-nez v2, :cond_68

    move-object/from16 v1, p1

    move/from16 v25, v6

    move/from16 v24, v7

    move-object/from16 p5, v9

    move-object v12, v10

    goto/16 :goto_d2

    .line 688
    :cond_68
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_76

    .line 689
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    move-object v4, v8

    goto :goto_77

    :cond_76
    move-object v4, v0

    .line 698
    :goto_77
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c1

    if-eqz p4, :cond_83

    .line 701
    aget-object v0, p4, v6

    move-object v3, v0

    goto :goto_84

    :cond_83
    move-object v3, v8

    :goto_84
    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v4

    move-wide v4, v14

    move/from16 v25, v6

    move/from16 v24, v7

    move-wide/from16 v6, v19

    move/from16 v8, p9

    move-object/from16 p5, v9

    move/from16 v9, v21

    move-object v12, v10

    move/from16 v10, v22

    .line 700
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_ab

    move-object/from16 v1, p1

    goto :goto_d2

    .line 706
    :cond_ab
    iget-object v0, v11, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 709
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 710
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_e0

    :cond_c1
    move-object/from16 v1, p1

    move-object/from16 v23, v4

    move/from16 v25, v6

    move/from16 v24, v7

    move-object/from16 p5, v9

    move-object v12, v10

    .line 713
    invoke-interface {v1, v0, v14, v15, v13}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_da

    :goto_d2
    move-object/from16 v4, p5

    move/from16 v7, v24

    move/from16 v2, v25

    goto/16 :goto_145

    :cond_da
    const/4 v8, 0x0

    move-object/from16 v26, v2

    move-object v2, v0

    move-object/from16 v0, v26

    .line 722
    :goto_e0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v7, v24

    :goto_e6
    if-ge v7, v3, :cond_12f

    move-object/from16 v4, p5

    .line 725
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 726
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_112

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 728
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 727
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10f

    goto :goto_112

    :cond_10f
    move-object/from16 v6, v23

    goto :goto_11e

    :cond_112
    :goto_112
    move-object/from16 v6, v23

    if-eqz v6, :cond_128

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 729
    invoke-virtual {v9, v6}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_128

    .line 730
    :goto_11e
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez v8, :cond_124

    move-object v8, v5

    :cond_124
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_128
    add-int/lit8 v7, v7, 0x1

    move-object/from16 p5, v4

    move-object/from16 v23, v6

    goto :goto_e6

    :cond_12f
    move-object/from16 v4, p5

    if-nez v8, :cond_13a

    .line 746
    new-instance v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v8}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 747
    iput-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_13a
    move/from16 v0, v24

    .line 749
    invoke-interface {v4, v0, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 v2, v25

    .line 750
    iput v2, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    add-int/lit8 v7, v0, 0x1

    :goto_145
    add-int/lit8 v6, v2, 0x1

    move-object v9, v4

    move-object v10, v12

    const/4 v8, 0x0

    move-object/from16 v12, p3

    goto/16 :goto_56

    :cond_14e
    move v0, v7

    move-object v4, v9

    move-object v12, v10

    goto :goto_156

    :cond_152
    move-object v4, v9

    move-object v12, v10

    move/from16 v7, v18

    .line 757
    :goto_156
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_15a
    add-int/lit8 v1, v0, -0x1

    const-wide/16 v2, 0x0

    if-ge v7, v1, :cond_1b2

    .line 759
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 760
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v5, :cond_16b

    goto :goto_171

    .line 766
    :cond_16b
    invoke-virtual {v5}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_173

    :cond_171
    :goto_171
    const/4 v5, 0x0

    goto :goto_1af

    .line 770
    :cond_173
    :goto_173
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a6

    .line 771
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v12, :cond_188

    .line 772
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_188

    goto :goto_173

    :cond_188
    add-int/lit8 v8, v7, 0x1

    :goto_18a
    if-ge v8, v0, :cond_173

    .line 778
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 779
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v9, :cond_1a3

    invoke-virtual {v9, v6}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a3

    .line 780
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_18a

    :cond_1a6
    and-long v5, v14, v16

    cmp-long v2, v5, v2

    if-nez v2, :cond_171

    const/4 v5, 0x0

    .line 795
    iput-object v5, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :goto_1af
    add-int/lit8 v7, v7, 0x1

    goto :goto_15a

    :cond_1b2
    const/4 v5, 0x0

    if-eqz p2, :cond_1e6

    .line 801
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v18

    :goto_1bb
    if-ge v1, v0, :cond_1e6

    .line 803
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e3

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e3

    .line 806
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1e6

    :cond_1e3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bb

    :cond_1e6
    :goto_1e6
    and-long v0, v14, v16

    cmp-long v0, v0, v2

    if-nez v0, :cond_1ff

    .line 816
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v18

    :goto_1f2
    if-ge v1, v0, :cond_1ff

    .line 818
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f2

    :cond_1ff
    return-object v4
.end method

.method public queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move/from16 v10, p6

    .line 514
    iget-object v0, v9, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 515
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 516
    invoke-interface {v8, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    move/from16 v3, p6

    move v4, v11

    .line 517
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v4

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_41

    :cond_3f
    move-object/from16 v2, p2

    :goto_41
    if-eqz v0, :cond_be

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 528
    invoke-interface {v8, v0, v4, v5, v10}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_bd

    const-wide/32 v6, 0x800000

    and-long/2addr v6, v4

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    const/4 v7, 0x0

    if-eqz v6, :cond_5c

    move v6, v2

    goto :goto_5d

    :cond_5c
    move v6, v7

    :goto_5d
    const-wide/32 v15, 0x1000000

    and-long/2addr v4, v15

    cmp-long v4, v4, v13

    if-eqz v4, :cond_67

    move v4, v2

    goto :goto_68

    :cond_67
    move v4, v7

    :goto_68
    if-eqz v12, :cond_6c

    move v5, v2

    goto :goto_6d

    :cond_6c
    move v5, v7

    .line 541
    :goto_6d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 542
    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_7f

    move v12, v2

    goto :goto_80

    :cond_7f
    move v12, v7

    .line 545
    :goto_80
    iget v13, v3, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v14, 0x100000

    and-int/2addr v13, v14

    if-nez v13, :cond_89

    move v13, v2

    goto :goto_8a

    :cond_89
    move v13, v7

    :goto_8a
    if-nez v0, :cond_9a

    if-nez v6, :cond_92

    if-nez v5, :cond_92

    if-nez v12, :cond_98

    :cond_92
    if-eqz v4, :cond_9a

    if-eqz v5, :cond_9a

    if-eqz v13, :cond_9a

    :cond_98
    move v0, v2

    goto :goto_9b

    :cond_9a
    move v0, v7

    :goto_9b
    if-nez v12, :cond_ae

    if-nez v5, :cond_ae

    .line 552
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x3e8

    .line 554
    invoke-interface {v8, v4, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 553
    invoke-interface {v8, v4, v11, v10}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_ae

    goto :goto_af

    :cond_ae
    move v2, v7

    :goto_af
    if-nez v0, :cond_bd

    if-nez v2, :cond_bd

    .line 557
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 558
    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 559
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    return-object v1

    .line 565
    :cond_be
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    .line 566
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e6

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v6, p6

    .line 568
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d9

    .line 571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, p6

    move v5, v11

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 576
    :cond_e6
    invoke-interface {v8, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_10e

    .line 579
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v6

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v7, p6

    .line 578
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_101

    .line 581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move/from16 v4, p6

    move v5, v11

    .line 583
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 586
    :cond_10e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    .line 382
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 393
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 396
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_28

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_28

    move v10, v8

    goto :goto_29

    :cond_28
    move v10, v2

    :goto_29
    if-eqz p8, :cond_2f

    const/16 v1, 0x3e8

    move v11, v1

    goto :goto_31

    :cond_2f
    move/from16 v11, p7

    :goto_31
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "query intent receivers"

    move-object/from16 v1, p1

    move v2, v11

    move v3, v10

    .line 403
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 405
    invoke-interface {v9, v11}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 408
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v13

    move-wide/from16 v2, p4

    move v4, v10

    move v5, v11

    move v6, v7

    move v7, v13

    .line 406
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    const/4 v1, 0x0

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_70

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v19, p2

    move-object/from16 v22, v1

    goto :goto_74

    :cond_70
    move-object/from16 v22, p2

    move-object/from16 v19, v1

    .line 419
    :goto_74
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v16

    .line 420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    if-eqz v2, :cond_114

    .line 422
    invoke-interface {v9, v2, v13, v14, v10}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_146

    const-wide/32 v3, 0x800000

    and-long/2addr v3, v13

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_91

    move v3, v4

    goto :goto_92

    :cond_91
    move v3, v8

    :goto_92
    const-wide/32 v17, 0x1000000

    and-long v17, v13, v17

    cmp-long v7, v17, v5

    if-eqz v7, :cond_9d

    move v7, v4

    goto :goto_9e

    :cond_9d
    move v7, v8

    :goto_9e
    const-wide/32 v17, 0x2000000

    and-long v13, v13, v17

    cmp-long v5, v13, v5

    if-eqz v5, :cond_a9

    move v5, v4

    goto :goto_aa

    :cond_a9
    move v5, v8

    :goto_aa
    if-eqz v12, :cond_ae

    move v6, v4

    goto :goto_af

    :cond_ae
    move v6, v8

    .line 437
    :goto_af
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 438
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_c1

    move v13, v4

    goto :goto_c2

    :cond_c1
    move v13, v8

    .line 441
    :goto_c2
    iget v14, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v17, 0x100000

    and-int v17, v14, v17

    if-eqz v17, :cond_cd

    move/from16 v17, v4

    goto :goto_cf

    :cond_cd
    move/from16 v17, v8

    :goto_cf
    if-eqz v17, :cond_d9

    const/high16 v18, 0x200000

    and-int v14, v14, v18

    if-nez v14, :cond_d9

    move v14, v4

    goto :goto_da

    :cond_d9
    move v14, v8

    :goto_da
    if-eqz v17, :cond_e3

    if-eqz v5, :cond_e1

    if-nez v14, :cond_e1

    goto :goto_e3

    :cond_e1
    move v5, v8

    goto :goto_e4

    :cond_e3
    :goto_e3
    move v5, v4

    :goto_e4
    if-nez v2, :cond_f3

    if-nez v3, :cond_ec

    if-nez v6, :cond_ec

    if-nez v13, :cond_f2

    :cond_ec
    if-eqz v7, :cond_f3

    if-eqz v6, :cond_f3

    if-eqz v5, :cond_f3

    :cond_f2
    move v8, v4

    :cond_f3
    if-nez v8, :cond_146

    .line 453
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 454
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 455
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/4 v4, 0x1

    move-object/from16 v2, v16

    move-object v3, v15

    move-object/from16 v5, v22

    move-object/from16 v6, p3

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_146

    .line 463
    :cond_114
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_12b

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-wide v5, v13

    move v7, v10

    .line 466
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12b

    move-object v15, v1

    .line 471
    :cond_12b
    invoke-interface {v9, v8}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_146

    .line 474
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v7

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, p3

    move-wide v5, v13

    move v8, v10

    .line 473
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_146

    goto :goto_147

    :cond_146
    :goto_146
    move-object v1, v15

    :goto_147
    if-eqz v19, :cond_156

    .line 483
    iget-object v15, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v18, 0x1

    move-object/from16 v17, v1

    move-object/from16 v20, p3

    move/from16 v21, p7

    invoke-static/range {v15 .. v21}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    :cond_156
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object/from16 p0, p1

    move-object/from16 p1, v1

    move-object/from16 p2, v12

    move/from16 p3, v0

    move/from16 p4, v11

    move/from16 p5, v2

    move/from16 p6, v10

    move-object/from16 p7, v22

    .line 488
    invoke-interface/range {p0 .. p7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;
    .registers 31

    move/from16 v0, p8

    const-wide/32 v12, 0x40000

    :try_start_5
    const-string/jumbo v1, "resolveIntent"

    .line 130
    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v14, p0

    .line 132
    iget-object v1, v14, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_ba

    const/4 v15, 0x0

    if-nez v1, :cond_1a

    .line 177
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    .line 133
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p8

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 135
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p8

    move/from16 v5, p10

    move/from16 v6, p9

    .line 134
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "resolve intent"

    move-object/from16 v1, p1

    move v2, v8

    move/from16 v3, p8

    .line 137
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-string/jumbo v1, "queryIntentActivities"

    .line 151
    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, v16

    move-wide/from16 v6, p6

    move/from16 v8, p10

    move/from16 v9, p8

    move/from16 v10, p9

    .line 152
    invoke-interface/range {v1 .. v11}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 158
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v2, :cond_77

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_77

    if-eqz v1, :cond_77

    if-nez v0, :cond_77

    .line 160
    invoke-static {v1}, Lcom/android/server/pm/SProtect;->filterSprotectHiddenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_77
    move-object v9, v1

    .line 165
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    const/16 v18, 0x1

    const/16 v19, 0x0

    if-lt v1, v2, :cond_89

    if-nez p9, :cond_89

    move/from16 v11, v18

    goto :goto_8b

    :cond_89
    move/from16 v11, v19

    :goto_8b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, v16

    move-wide/from16 v7, p6

    move/from16 v10, p8

    .line 168
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-wide/16 v1, 0x1

    and-long v1, p6, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a8

    goto :goto_aa

    :cond_a8
    move/from16 v18, v19

    :goto_aa
    if-eqz v18, :cond_b6

    if-eqz v0, :cond_b6

    .line 172
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_b0
    .catchall {:try_start_1a .. :try_end_b0} :catchall_ba

    if-eqz v1, :cond_b6

    .line 177
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    :cond_b6
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_ba
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 178
    throw v0
.end method

.method public resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;
    .registers 18

    move-object v0, p0

    .line 496
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v8, p6

    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_d

    return-object v9

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    .line 497
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v4

    const/4 v0, 0x0

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v0

    .line 499
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 502
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_36

    const/4 v1, 0x0

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_36
    return-object v9
.end method
