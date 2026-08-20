.class public Lcom/android/server/remoteappmode/RemoteAppModeService$3;
.super Ljava/lang/Object;
.source "RemoteAppModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/remoteappmode/RemoteAppModeService;->moveDisplayToTop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .registers 3

    .line 489
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iput p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 494
    :try_start_4
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v2}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmContext(Lcom/android/server/remoteappmode/RemoteAppModeService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 496
    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v3}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmVirtualDisplayMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-static {v3}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$fgetmVirtualDisplayMap(Lcom/android/server/remoteappmode/RemoteAppModeService;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    .line 497
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->isValid()Z

    move-result v3

    if-nez v3, :cond_51

    .line 498
    :cond_45
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    if-ne v2, v3, :cond_63

    .line 499
    :cond_51
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    const-string v3, "RemoteAppModeService"

    invoke-interface {v2, p0, v3}, Landroid/view/IWindowManager;->moveDisplayToTop(ILjava/lang/String;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_5c} :catch_5f
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5d

    goto :goto_63

    :catchall_5d
    move-exception p0

    goto :goto_67

    :catch_5f
    move-exception p0

    .line 502
    :try_start_60
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_5d

    .line 504
    :cond_63
    :goto_63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    throw p0
.end method
