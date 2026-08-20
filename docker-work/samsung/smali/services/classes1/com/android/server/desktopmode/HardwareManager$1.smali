.class public Lcom/android/server/desktopmode/HardwareManager$1;
.super Ljava/lang/Object;
.source "HardwareManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 5

    .line 132
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayAdded displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1d
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_5f

    .line 145
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplayManager(Lcom/android/server/desktopmode/HardwareManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 147
    new-instance v1, Lcom/android/server/desktopmode/DisplayInfo;

    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/DisplayInfo;-><init>(Landroid/view/Display;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_28
    iget-object v2, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DisplayInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 150
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged, DisplayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmDisplays(Lcom/android/server/desktopmode/HardwareManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    :cond_5a
    monitor-exit v0

    goto :goto_5f

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_28 .. :try_end_5e} :catchall_5c

    throw p0

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    .line 138
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayRemoved displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1d
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$1;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateExternalDisplayStatus(Lcom/android/server/desktopmode/HardwareManager;ZI)V

    return-void
.end method
