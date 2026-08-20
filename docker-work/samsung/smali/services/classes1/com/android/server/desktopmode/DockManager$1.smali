.class public Lcom/android/server/desktopmode/DockManager$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
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

    .line 91
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 106
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDockStateChanged n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2d
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 109
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 110
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 111
    :cond_4b
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$minitialize(Lcom/android/server/desktopmode/DockManager;)V

    .line 113
    :cond_50
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo p1, "onDockStateChanged"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mrequestUpdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V

    return-void
.end method

.method public onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 3

    .line 94
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 95
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isRawDockUsbpdIdSupported()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 96
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mupdateDockVersionToSettings(Lcom/android/server/desktopmode/DockManager;Z)V

    goto :goto_1d

    .line 99
    :cond_17
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mupdateDockVersionToSettings(Lcom/android/server/desktopmode/DockManager;Z)V

    .line 101
    :cond_1d
    :goto_1d
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo p1, "onDisplayChanged"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DockManager;->-$$Nest$mrequestUpdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V

    return-void
.end method
