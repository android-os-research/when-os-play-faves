.class public final Lcom/android/server/slice/SlicePermissionManager$H;
.super Landroid/os/Handler;
.source "SlicePermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final MSG_ADD_DIRTY:I = 0x1

.field public static final MSG_CLEAR_CLIENT:I = 0x4

.field public static final MSG_CLEAR_PROVIDER:I = 0x5

.field public static final MSG_PERSIST:I = 0x2

.field public static final MSG_REMOVE:I = 0x3


# instance fields
.field public final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V
    .registers 3

    .line 374
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 375
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_50

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_5d

    .line 396
    :cond_12
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedProviders(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 397
    :try_start_19
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedProviders(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    monitor-exit v0

    goto :goto_5d

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_26

    throw p0

    .line 391
    :cond_29
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedClients(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 392
    :try_start_30
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedClients(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    monitor-exit v0

    goto :goto_5d

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw p0

    .line 388
    :cond_40
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$mhandleRemove(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    goto :goto_5d

    .line 385
    :cond_4a
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    goto :goto_5d

    .line 382
    :cond_50
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmDirty(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/slice/DirtyTracker$Persistable;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_5d
    return-void
.end method
