.class public Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Landroid/os/Looper;)V
    .registers 3

    .line 1540
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1544
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1545
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_24

    .line 1553
    :cond_f
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/aod/AODToast;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$mhandleAODToastRequested(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;Lcom/samsung/android/aod/AODToast;)V

    goto :goto_24

    .line 1550
    :cond_19
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$mhandleAODDozeReleased(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    goto :goto_24

    .line 1547
    :cond_1f
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord$1;->this$1:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->-$$Nest$mhandleAODDozeAcquired(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)V

    :goto_24
    return-void
.end method
