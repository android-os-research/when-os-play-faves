.class public final Lcom/android/server/compat/CompatChange;
.super Lcom/android/internal/compat/CompatibilityChangeInfo;
.source "CompatChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/CompatChange$ChangeListener;
    }
.end annotation


# static fields
.field public static final CTS_SYSTEM_API_CHANGEID:J = 0x8e787b1L

.field public static final CTS_SYSTEM_API_OVERRIDABLE_CHANGEID:J = 0xa5faf9fL


# instance fields
.field public mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field public mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/compat/PackageOverride;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 13

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 89
    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V
    .registers 20

    move-object v9, p0

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IIZZLjava/lang/String;Z)V

    const/4 v0, 0x0

    .line 83
    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/config/Change;)V
    .registers 12

    .line 96
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableAfterTargetSdk()I

    move-result v4

    .line 97
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableSinceTargetSdk()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDisabled()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getLoggingOnly()Z

    move-result v7

    .line 98
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getOverridable()Z

    move-result v9

    move-object v0, p0

    .line 96
    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V
    .registers 6

    monitor-enter p0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_11

    .line 167
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2c

    .line 169
    monitor-exit p0

    return-void

    .line 164
    :cond_11
    :try_start_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t add overrides for a logging only change "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addPackageOverrideInternal(Ljava/lang/String;Z)V
    .registers 4

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_13

    .line 142
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add overrides for a logging only change "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized clearOverrides()V
    .registers 2

    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 299
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public defaultValue()Z
    .registers 1

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z
    .registers 7

    if-nez p1, :cond_7

    .line 240
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result p0

    return p0

    .line 242
    :cond_7
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 243
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    .line 245
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 248
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    return v1

    .line 251
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_41

    .line 254
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 255
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq p2, p1, :cond_39

    move p2, p1

    .line 258
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p0

    if-lt p2, p0, :cond_40

    move v1, v3

    :cond_40
    return v1

    :cond_41
    return v3
.end method

.method public declared-synchronized loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    .registers 7

    monitor-enter p0

    .line 303
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 304
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->getOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 305
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v4}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 307
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v1

    .line 306
    invoke-virtual {v4, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v1

    .line 305
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 312
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 313
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 314
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v4}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 317
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v1

    .line 316
    invoke-virtual {v4, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v1

    .line 315
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 322
    :cond_84
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 323
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 324
    new-instance v1, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v1}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 325
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMinVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMaxVersionCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catchall {:try_start_1 .. :try_end_cc} :catchall_cf

    goto :goto_96

    .line 332
    :cond_cd
    monitor-exit p0

    return-void

    :catchall_cf
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized notifyListener(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-eqz v0, :cond_8

    .line 394
    invoke-interface {v0, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 396
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 187
    monitor-exit p0

    return v0

    .line 189
    :cond_6
    :try_start_6
    iget p2, p2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    const/4 v1, 0x1

    if-nez p2, :cond_d

    move p2, v1

    goto :goto_e

    :cond_d
    move p2, v0

    :goto_e
    if-eqz p3, :cond_40

    .line 191
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    if-nez p2, :cond_1b

    goto :goto_40

    .line 196
    :cond_1b
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/compat/PackageOverride;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/app/compat/PackageOverride;->evaluate(J)I

    move-result p2

    if-eqz p2, :cond_3b

    if-eq p2, v1, :cond_37

    const/4 p3, 0x2

    if-eq p2, p3, :cond_33

    goto :goto_3e

    .line 205
    :cond_33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    goto :goto_3e

    .line 202
    :cond_37
    invoke-virtual {p0, p1, v1}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    goto :goto_3e

    .line 199
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverrideInternal(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_45

    .line 208
    :goto_3e
    monitor-exit p0

    return v1

    .line 192
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverrideInternal(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_45

    .line 193
    monitor-exit p0

    return v0

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V
    .registers 4

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-nez v0, :cond_9

    .line 126
    iput-object p1, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    .line 127
    monitor-exit p0

    return-void

    .line 123
    :cond_9
    :try_start_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener for change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .registers 6

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1e

    const/4 p1, 0x1

    .line 226
    monitor-exit p0

    return p1

    :cond_1b
    const/4 p1, 0x0

    .line 228
    monitor-exit p0

    return p1

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removePackageOverrideInternal(Ljava/lang/String;)V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public declared-synchronized saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;
    .registers 9

    monitor-enter p0

    .line 335
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b6

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 336
    monitor-exit p0

    return-object v0

    .line 338
    :cond_c
    :try_start_c
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides;->setChangeId(J)V

    .line 340
    new-instance v1, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;-><init>()V

    .line 341
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 343
    new-instance v5, Lcom/android/server/compat/overrides/RawOverrideValue;

    invoke-direct {v5}, Lcom/android/server/compat/overrides/RawOverrideValue;-><init>()V

    .line 344
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/compat/overrides/RawOverrideValue;->setPackageName(Ljava/lang/String;)V

    .line 345
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMinVersionCode(J)V

    .line 346
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMaxVersionCode(J)V

    .line 347
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/compat/PackageOverride;

    invoke-virtual {v4}, Landroid/app/compat/PackageOverride;->isEnabled()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/compat/overrides/RawOverrideValue;->setEnabled(Z)V

    .line 348
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 350
    :cond_70
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V

    .line 352
    new-instance v1, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;-><init>()V

    .line 353
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v2

    .line 354
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 355
    new-instance v5, Lcom/android/server/compat/overrides/OverrideValue;

    invoke-direct {v5}, Lcom/android/server/compat/overrides/OverrideValue;-><init>()V

    .line 356
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/compat/overrides/OverrideValue;->setPackageName(Ljava/lang/String;)V

    .line 357
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/compat/overrides/OverrideValue;->setEnabled(Z)V

    .line 358
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 360
    :cond_b1
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V
    :try_end_b4
    .catchall {:try_start_c .. :try_end_b4} :catchall_b6

    .line 361
    monitor-exit p0

    return-object v0

    :catchall_b6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v1, "; name="

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    const-string v1, "; enableSinceTargetSdk="

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "; disabled"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_3e
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "; loggingOnly"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_49
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "; packageOverrides="

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    :cond_5b
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "; rawOverrides="

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    :cond_6d
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result p0

    if-eqz p0, :cond_78

    const-string p0, "; overridable"

    .line 387
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    const-string p0, ")"

    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public willBeEnabled(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_7

    .line 271
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result p0

    return p0

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/compat/PackageOverride;

    if-eqz p1, :cond_26

    .line 275
    invoke-virtual {p1}, Landroid/app/compat/PackageOverride;->evaluateForAllVersions()I

    move-result p1

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    goto :goto_26

    :cond_1e
    const/4 p0, 0x0

    return p0

    :cond_20
    return v0

    .line 281
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result p0

    return p0

    .line 284
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result p0

    return p0
.end method
