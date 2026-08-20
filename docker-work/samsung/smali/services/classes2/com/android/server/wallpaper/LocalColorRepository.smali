.class public Lcom/android/server/wallpaper/LocalColorRepository;
.super Ljava/lang/Object;
.source "LocalColorRepository.java"


# instance fields
.field public mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalColorAreas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$U-07RdMzxj0qcg3MG4AT194Meb0(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Ljava/util/function/Consumer;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/LocalColorRepository;->lambda$forEachCallback$1(ILandroid/graphics/RectF;Ljava/util/function/Consumer;Landroid/app/ILocalWallpaperColorConsumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dj7_Lg3CQCn6S-BChf-mzYrKCFY(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/LocalColorRepository;->lambda$addAreas$0(Landroid/app/ILocalWallpaperColorConsumer;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    .line 44
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method private synthetic lambda$addAreas$0(Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$forEachCallback$1(ILandroid/graphics/RectF;Ljava/util/function/Consumer;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 6

    .line 149
    invoke-interface {p4}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_f

    return-void

    .line 152
    :cond_f
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_20

    .line 153
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-interface {p3, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    .line 58
    :try_start_f
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v1

    .line 61
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    :goto_20
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 64
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_32

    .line 66
    :cond_2c
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    :goto_32
    if-nez v0, :cond_3c

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_4e

    .line 74
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 76
    :cond_4e
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public forEachCallback(Ljava/util/function/Consumer;Landroid/graphics/RectF;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            ">;",
            "Landroid/graphics/RectF;",
            "I)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getAreasByDisplayId(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 128
    :goto_7
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 129
    iget-object v3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_1a

    goto :goto_36

    .line 131
    :cond_1a
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_23

    goto :goto_36

    :cond_23
    move v4, v1

    .line 133
    :goto_24
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_36

    .line 134
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_39
    return-object v0
.end method

.method public isCallbackAvailable(Landroid/app/ILocalWallpaperColorConsumer;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 92
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-nez v3, :cond_1d

    .line 94
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_37

    :cond_1d
    move v4, v2

    .line 96
    :goto_1e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 97
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 99
    :cond_2e
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_37

    .line 100
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    :cond_37
    :goto_37
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-nez p3, :cond_4d

    .line 104
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_4d

    .line 108
    :cond_48
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 110
    :cond_4d
    :goto_4d
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move p2, v2

    .line 111
    :goto_53
    iget-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge p2, p3, :cond_9d

    move p3, v2

    .line 112
    :goto_5c
    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_9a

    move v0, v2

    .line 113
    :goto_6b
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 114
    iget-object v1, p0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_97
    add-int/lit8 p3, p3, 0x1

    goto :goto_5c

    :cond_9a
    add-int/lit8 p2, p2, 0x1

    goto :goto_53

    .line 118
    :cond_9d
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
