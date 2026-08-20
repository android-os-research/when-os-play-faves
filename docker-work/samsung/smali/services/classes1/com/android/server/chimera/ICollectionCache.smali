.class public interface abstract Lcom/android/server/chimera/ICollectionCache;
.super Ljava/lang/Object;
.source "ChimeraDataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/ICollectionCache$GameAppsCache;,
        Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;,
        Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;,
        Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
