.class public final Lcom/android/server/wm/RestartAppPolicy$UiHandler;
.super Landroid/os/Handler;
.source "RestartAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RestartAppPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UiHandler"
.end annotation


# static fields
.field public static final DISMISS_RESTART_APP_DIALOG_UI_MSG:I = 0x2

.field public static final SHOW_RESTART_APP_DIALOG_UI_MSG:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RestartAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RestartAppPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 408
    iput-object p1, p0, Lcom/android/server/wm/RestartAppPolicy$UiHandler;->this$0:Lcom/android/server/wm/RestartAppPolicy;

    .line 409
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 414
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_1a

    .line 422
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy$UiHandler;->this$0:Lcom/android/server/wm/RestartAppPolicy;

    invoke-static {p0}, Lcom/android/server/wm/RestartAppPolicy;->-$$Nest$mdismissRestartAppDialog(Lcom/android/server/wm/RestartAppPolicy;)V

    goto :goto_1a

    .line 416
    :cond_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 417
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 418
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy$UiHandler;->this$0:Lcom/android/server/wm/RestartAppPolicy;

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/RestartAppPolicy;->-$$Nest$mshowRestartAppDialog(Lcom/android/server/wm/RestartAppPolicy;ILcom/android/server/wm/ActivityRecord;)V

    :goto_1a
    return-void
.end method
