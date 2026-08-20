.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;
.super Landroid/os/Handler;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 345
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 348
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    .line 349
    iget-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmLock(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 350
    :try_start_c
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_21

    .line 351
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$2;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fgetNO_PM_CACHE(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$mreadDefaultPermissionExceptionsLocked(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->-$$Nest$fputmGrantExceptions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)V

    .line 353
    :cond_21
    monitor-exit p1

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    return-void
.end method
