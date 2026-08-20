.class public Lcom/android/server/display/WifiDisplayAdapter$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 182
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/DlnaController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmDlnaController(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/DlnaController;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Lcom/android/server/display/VolumeController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDlnaController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/DlnaController;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/VolumeController;-><init>(Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/DlnaController;)V

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmVolumeController(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/VolumeController;)V

    .line 185
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.ROTATION_CHANGED"

    .line 186
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    .line 187
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    .line 188
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmBroadcastReceiver(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v10

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
