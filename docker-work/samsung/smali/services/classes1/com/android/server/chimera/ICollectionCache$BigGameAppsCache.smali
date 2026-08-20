.class public Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;
.super Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;
.source "ChimeraDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ICollectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigGameAppsCache"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 2

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, "BigGameAppsCache"

    return-object p0
.end method
