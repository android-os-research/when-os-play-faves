.class public Lcom/android/server/StorageManagerService$WatchedLockedUsers;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatchedLockedUsers"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public users:[I


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 492
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    return-void
.end method


# virtual methods
.method public all()[I
    .registers 1

    .line 512
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    return-object p0
.end method

.method public append(I)V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 496
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public appendAll([I)V
    .registers 6

    .line 499
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 500
    iget-object v3, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 502
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public contains(I)Z
    .registers 2

    .line 509
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public final invalidateIsUserUnlockedCache()V
    .registers 1

    .line 519
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 506
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
