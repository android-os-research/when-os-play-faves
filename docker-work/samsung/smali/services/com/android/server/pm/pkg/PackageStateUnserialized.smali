.class public Lcom/android/server/pm/pkg/PackageStateUnserialized;
.super Ljava/lang/Object;
.source "PackageStateUnserialized.java"


# instance fields
.field public hiddenUntilInstalled:Z

.field public volatile lastPackageUsageTimeInMills:[J

.field public final mPackageSetting:Lcom/android/server/pm/PackageSetting;

.field public overrideSeInfo:Ljava/lang/String;

.field public updatedSystemApp:Z

.field public usesLibraryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$NOe4IykUj3ZbTnY-JER9obdI6AE(Landroid/content/pm/SharedLibraryInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lambda$getNonNativeUsesLibraryInfos$0(Landroid/content/pm/SharedLibraryInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public static synthetic lambda$getNonNativeUsesLibraryInfos$0(Landroid/content/pm/SharedLibraryInfo;)Z
    .registers 1

    .line 129
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getLastPackageUsageTimeInMills()[J
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    if-nez v0, :cond_14

    .line 207
    monitor-enter p0

    .line 208
    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    if-nez v0, :cond_f

    .line 210
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lazyInitLastPackageUsageTimeInMills()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 212
    :cond_f
    monitor-exit p0

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public getLatestForegroundPackageUseTimeInMills()J
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 98
    fill-array-data v1, :array_1c

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v0, :cond_1a

    .line 104
    aget v5, v1, v4

    .line 105
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v6

    aget-wide v5, v6, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1a
    return-wide v2

    nop

    :array_1c
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public getLatestPackageUseTimeInMills()J
    .registers 7

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object p0

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_13

    aget-wide v4, p0, v3

    .line 92
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    return-wide v1
.end method

.method public getNonNativeUsesLibraryInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getOverrideSeInfo()Ljava/lang/String;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageSetting()Lcom/android/server/pm/PackageSetting;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    return-object p0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    return-object p0
.end method

.method public isHiddenUntilInstalled()Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return p0
.end method

.method public isUpdatedSystemApp()Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return p0
.end method

.method public final lazyInitLastPackageUsageTimeInMills()[J
    .registers 1

    const/16 p0, 0x8

    new-array p0, p0, [J

    return-object p0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 133
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 134
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 5

    if-gez p1, :cond_3

    return-object p0

    :cond_3
    const/16 v0, 0x8

    if-lt p1, v0, :cond_8

    return-object p0

    .line 81
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-object p0
.end method

.method public varargs setLastPackageUsageTimeInMills([J)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 158
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 164
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 152
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 146
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 140
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V
    .registers 4

    .line 111
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    .line 113
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 117
    :cond_15
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 121
    :cond_26
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 122
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 123
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    .line 124
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method
