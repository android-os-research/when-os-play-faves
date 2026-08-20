.class public Lcom/android/server/pm/resolution/ComponentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/SnapshotCache<",
        "Lcom/android/server/pm/resolution/ComponentResolverApi;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/resolution/ComponentResolver;

.field public final synthetic val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/utils/Watchable;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 5

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    iput-object p4, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 188
    :try_start_5
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolverSnapshot;

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/resolution/ComponentResolverSnapshot;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .registers 1

    .line 184
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver$1;->createSnapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object p0

    return-object p0
.end method
