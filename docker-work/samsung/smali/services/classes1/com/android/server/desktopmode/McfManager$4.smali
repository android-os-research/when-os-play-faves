.class public Lcom/android/server/desktopmode/McfManager$4;
.super Ljava/lang/Object;
.source "McfManager.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/McfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 5

    .line 190
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapterListener onServiceConnected"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_d
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x64

    .line 193
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 3

    .line 200
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfAdapterListener onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_d
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object v0

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$4;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 204
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 203
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceRemoteException()V
    .registers 2

    .line 209
    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "McfAdapterListener onServiceRemoteException"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
