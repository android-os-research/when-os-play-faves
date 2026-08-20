.class public abstract Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;
.super Ljava/lang/Object;
.source "ChimeraDataCache.java"

# interfaces
.implements Lcom/android/server/chimera/ICollectionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ICollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSharedCollectionCache"
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
.field public final apps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    .line 57
    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->init()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 2

    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->init()Z

    .line 71
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public init()Z
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-nez v0, :cond_31

    .line 101
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2f

    .line 103
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, ","

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    return v1

    :cond_2f
    const/4 p0, 0x0

    return p0

    :cond_31
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Z
    .registers 2

    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->update(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;)Z
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->init()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_32

    .line 90
    :cond_2a
    iget-object p1, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    const-string v2, ","

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 93
    :goto_32
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 94
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method
