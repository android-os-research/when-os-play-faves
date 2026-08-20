.class public Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;
.super Landroid/os/Handler;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DualModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeChangeHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V
    .registers 3

    .line 663
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 664
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 669
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    const/4 p1, 0x3

    if-eq v0, p1, :cond_9

    goto :goto_3e

    .line 675
    :cond_9
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p1, p1, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    if-eqz p1, :cond_3e

    .line 676
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "mStateListener unregistered"

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1d
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, p1, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fgetmStateListener(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 678
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$fputmStateListener(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;)V

    goto :goto_3e

    .line 671
    :cond_2f
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mhandleStopLoadingScreen(Lcom/android/server/desktopmode/DualModeChanger;ZI)V

    :cond_3e
    :goto_3e
    return-void
.end method
