.class public final Lcom/android/server/desktopmode/UiManager$UiCommandHandler;
.super Landroid/os/Handler;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UiCommandHandler"
.end annotation


# static fields
.field public static final DELAY:I = 0x3e8

.field public static final MSG_DOCK_TA_WARNING_DIALOG:I = 0x1

.field public static final NO_NEED_FOR_DELAY:I = -0x1


# instance fields
.field public final mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 726
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 722
    new-instance p1, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;-><init>(Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage-IA;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    return-void
.end method

.method public static getDelayedUiCommandMessageId(I)I
    .registers 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static messageIdToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const-string p0, "MSG_DOCK_TA_WARNING_DIALOG"

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 731
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage(), msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->messageIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_23
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public schedule(ILjava/lang/Runnable;)V
    .registers 7

    .line 744
    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->getDelayedUiCommandMessageId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 746
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4f

    .line 748
    :cond_b
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->messageIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 752
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->setCommand(ILjava/lang/Runnable;)V

    .line 753
    iget-object p2, p0, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    .line 757
    :cond_42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 758
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4f
    return-void
.end method
