.class public Lcom/android/server/pm/UserManagerService$WatchedUserStates;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatchedUserStates"
.end annotation


# instance fields
.field public final states:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 669
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 683
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public get(I)I
    .registers 2

    .line 672
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public get(II)I
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    :cond_e
    return p2
.end method

.method public has(I)Z
    .registers 3

    .line 686
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final invalidateIsUserUnlockedCache()V
    .registers 1

    .line 693
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public put(II)V
    .registers 4

    .line 678
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 690
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
