.class public Lcom/android/server/desktopmode/DockManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 140
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 142
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 144
    :cond_1e
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(), action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3b
    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$smisDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 146
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$2;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mrequestConnectedPowerChargerInfoUpdate(Lcom/android/server/desktopmode/DockManager;)V

    :cond_46
    return-void
.end method
