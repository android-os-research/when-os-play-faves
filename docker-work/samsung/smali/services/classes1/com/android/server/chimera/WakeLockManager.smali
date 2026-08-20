.class public Lcom/android/server/chimera/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# instance fields
.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mWakeLockPackages:Ljava/util/Set;
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    .line 16
    iput-object p1, p0, Lcom/android/server/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 2

    .line 36
    iget-object p0, p0, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget-object p0, p0, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 32
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 21
    iget-object v0, p0, Lcom/android/server/chimera/WakeLockManager;->mWakeLockPackages:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/chimera/WakeLockManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->getWakeLockPackageList()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
