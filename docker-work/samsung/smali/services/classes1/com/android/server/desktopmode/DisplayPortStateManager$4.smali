.class public Lcom/android/server/desktopmode/DisplayPortStateManager$4;
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

    .line 112
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 4

    const-string p2, "dual"

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 116
    iget-object p2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 117
    :try_start_d
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmExternalDisplayModeDual(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v0

    if-eq v0, p1, :cond_34

    .line 118
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fputmExternalDisplayModeDual(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 119
    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$fgetmDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 120
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$4;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$mgetSettingState(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDisplayPortStateLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    .line 123
    :cond_34
    monitor-exit p2

    return-void

    :catchall_36
    move-exception p0

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_36

    throw p0
.end method
