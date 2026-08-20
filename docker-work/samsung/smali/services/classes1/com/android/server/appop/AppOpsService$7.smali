.class public Lcom/android/server/appop/AppOpsService$7;
.super Landroid/os/RemoteCallbackList;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/android/internal/app/IAppOpsAsyncNotedCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic val$key:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V
    .registers 3

    .line 3920
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$7;->val$key:Landroid/util/Pair;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 3920
    check-cast p1, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$7;->onCallbackDied(Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 3

    .line 3923
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter p1

    .line 3924
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 3925
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$7;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmAsyncOpWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$7;->val$key:Landroid/util/Pair;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3927
    :cond_14
    monitor-exit p1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method
