.class public Lcom/android/server/chimera/ICollectionCache$GameAppsCache;
.super Ljava/lang/Object;
.source "ChimeraDataCache.java"

# interfaces
.implements Lcom/android/server/chimera/ICollectionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ICollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameAppsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/chimera/ICollectionCache<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final gameApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gms:Lcom/samsung/android/game/IGameManagerService;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final notGameApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    .line 150
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    .line 153
    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 2

    .line 141
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 162
    :cond_a
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->update(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Z
    .registers 2

    .line 141
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->update(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;)Z
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 172
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_12

    return v1

    .line 178
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_2c

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    if-eqz v0, :cond_26

    .line 186
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v2

    .line 189
    :cond_26
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1

    :catch_2c
    move-exception p1

    .line 180
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameManagerService RemoteException! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChimeraDataCache"

    .line 180
    invoke-interface {p0, v0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
