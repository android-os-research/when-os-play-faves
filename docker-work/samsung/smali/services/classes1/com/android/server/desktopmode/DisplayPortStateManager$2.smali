.class public Lcom/android/server/desktopmode/DisplayPortStateManager$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DisplayPortStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DisplayPortStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 4

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 89
    :try_start_b
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v0

    if-eq v0, p1, :cond_32

    .line 90
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 91
    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 92
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$mgetSettingState(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDisplayPortStateLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    .line 95
    :cond_32
    monitor-exit p2

    return-void

    :catchall_34
    move-exception p0

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_34

    throw p0
.end method
