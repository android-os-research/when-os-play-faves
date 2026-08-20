.class public Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageTagsListSetting"
.end annotation


# instance fields
.field public final mBaseValuesSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mCachedValue:Landroid/os/PackageTagsList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mValid:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 747
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;-><init>(Ljava/lang/String;)V

    .line 748
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Landroid/os/PackageTagsList;
    .registers 14

    monitor-enter p0

    .line 752
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    .line 753
    iget-boolean v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    if-nez v1, :cond_8c

    .line 754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_8e

    .line 756
    :try_start_b
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mBaseValuesSupplier:Ljava/util/function/Supplier;

    .line 757
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 756
    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v2

    const-string/jumbo v3, "location"

    .line 759
    iget-object v4, p0, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_74

    const-string v4, ","

    .line 762
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_35
    if-ge v7, v4, :cond_74

    aget-object v8, v3, v7

    .line 763
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_40

    goto :goto_71

    :cond_40
    const-string v9, ";"

    .line 767
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 768
    aget-object v9, v8, v6

    .line 769
    array-length v10, v8

    if-ne v10, v5, :cond_4f

    .line 770
    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_71

    :cond_4f
    move v10, v5

    .line 772
    :goto_50
    array-length v11, v8

    if-ge v10, v11, :cond_71

    .line 773
    aget-object v11, v8, v10

    const-string/jumbo v12, "null"

    .line 774
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    const/4 v11, 0x0

    :cond_5f
    const-string v12, "*"

    .line 778
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6b

    .line 779
    invoke-virtual {v2, v9}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_6e

    .line 781
    :cond_6b
    invoke-virtual {v2, v9, v11}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    :goto_6e
    add-int/lit8 v10, v10, 0x1

    goto :goto_50

    :cond_71
    :goto_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 788
    :cond_74
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_b .. :try_end_78} :catchall_87

    .line 790
    :try_start_78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 794
    iput-boolean v5, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    .line 795
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;

    :cond_85
    move-object v0, v2

    goto :goto_8c

    :catchall_87
    move-exception v2

    .line 790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    throw v2
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_8e

    .line 799
    :cond_8c
    :goto_8c
    monitor-exit p0

    return-object v0

    :catchall_8e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 803
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mValid:Z

    const/4 v0, 0x0

    .line 804
    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->mCachedValue:Landroid/os/PackageTagsList;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 805
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPropertiesChanged()V
    .registers 1

    .line 809
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->invalidate()V

    .line 810
    invoke-super {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;->onPropertiesChanged()V

    return-void
.end method
