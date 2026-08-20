.class public Lcom/android/server/desktopmode/McfManager$1;
.super Landroid/content/BroadcastReceiver;
.source "McfManager.java"


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

    .line 126
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 129
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive intent.getAction():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 133
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    const/16 p2, 0x2bd

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 135
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 134
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_99

    :cond_4c
    const-string v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 137
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    const/16 v0, 0x2be

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 139
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 138
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_99

    :cond_73
    const-string p2, "com.samsung.android.nearbyscanning"

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 141
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    const/16 p2, 0x2bf

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 143
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_99
    :goto_99
    return-void
.end method
