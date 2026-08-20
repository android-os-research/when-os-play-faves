.class public Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringSetCachedGlobalSetting"
.end annotation


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCachedValue:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;

.field public mValid:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 633
    invoke-direct {p0, p4}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 634
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    .line 635
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    .line 636
    iput-object p3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 638
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 646
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    .line 647
    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    if-nez v1, :cond_4c

    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4e

    .line 650
    :try_start_b
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 651
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v4, ","

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_47

    .line 657
    :cond_37
    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    .line 661
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    .line 662
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;

    :cond_45
    move-object v0, v2

    goto :goto_4c

    :catchall_47
    move-exception v2

    .line 657
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 658
    throw v2
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_4e

    .line 666
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-object v0

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 670
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mValid:Z

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mCachedValue:Landroid/util/ArraySet;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 672
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 676
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->invalidate()V

    .line 677
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public register()V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
