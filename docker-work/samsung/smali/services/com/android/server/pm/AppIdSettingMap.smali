.class public final Lcom/android/server/pm/AppIdSettingMap;
.super Ljava/lang/Object;
.source "AppIdSettingMap.java"


# instance fields
.field public mFirstAvailableAppId:I

.field public final mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Lcom/android/server/pm/SettingBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/pm/SettingBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 44
    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 47
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 48
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "AppIdSettingMap.mNonSystemSettings"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 50
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 51
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "AppIdSettingMap.mSystemSettings"

    invoke-direct {v1, v0, v0, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppIdSettingMap;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 44
    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 56
    iget-object v0, p1, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 57
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 58
    iget-object p1, p1, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    iput-object p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 59
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 141
    iget v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    add-int/lit16 v1, v1, -0x2710

    :goto_a
    if-ge v1, v0, :cond_1f

    .line 142
    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 143
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_19
    add-int/lit16 v1, v1, 0x2710

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    const/16 v1, 0x270f

    if-le v0, v1, :cond_39

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_37

    .line 154
    iget-object v2, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_34

    .line 155
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_37
    const/4 p0, -0x1

    return p0

    .line 163
    :cond_39
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v0, v0, 0x2710

    return v0
.end method

.method public getSetting(I)Lcom/android/server/pm/SettingBase;
    .registers 4

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_18

    .line 93
    iget-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_16

    .line 95
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SettingBase;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0

    .line 97
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SettingBase;

    return-object p0
.end method

.method public registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x0

    const-string v1, " name="

    const/4 v2, 0x5

    const/16 v3, 0x2710

    if-lt p1, v3, :cond_44

    .line 65
    iget-object v3, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v3

    add-int/lit16 v4, p1, -0x2710

    :goto_10
    if-lt v4, v3, :cond_1b

    .line 69
    iget-object v5, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 72
    :cond_1b
    iget-object v3, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding duplicate app id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v0

    .line 78
    :cond_3e
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 80
    :cond_44
    iget-object v3, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding duplicate shared id: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v0

    .line 86
    :cond_67
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :goto_6c
    const/4 p0, 0x1

    return p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 173
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeSetting(I)V
    .registers 5

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_1a

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 109
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    :cond_1a
    :goto_1a
    add-int/lit8 p1, p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->setFirstAvailableAppId(I)V

    return-void
.end method

.method public replaceSetting(ILcom/android/server/pm/SettingBase;)V
    .registers 5

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_2f

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_14

    .line 126
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_14
    const/4 p0, 0x5

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in package manager settings: calling replaceAppIdLpw to replace SettingBase at appId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but nothing is replaced."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_34

    .line 134
    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :goto_34
    return-void
.end method

.method public final setFirstAvailableAppId(I)V
    .registers 3

    .line 116
    iget v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    if-le p1, v0, :cond_6

    .line 117
    iput p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    :cond_6
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/AppIdSettingMap;
    .registers 2

    .line 168
    new-instance v0, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppIdSettingMap;-><init>(Lcom/android/server/pm/AppIdSettingMap;)V

    return-object v0
.end method
