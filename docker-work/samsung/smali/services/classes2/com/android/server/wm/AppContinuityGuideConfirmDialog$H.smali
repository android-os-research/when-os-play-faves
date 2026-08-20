.class public final Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;
.super Landroid/os/Handler;
.source "AppContinuityGuideConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final HIDE:I = 0x2

.field public static final SHOW:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;Landroid/os/Looper;)V
    .registers 3

    .line 495
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    .line 496
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 501
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_1e

    .line 506
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    invoke-static {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$mhandleHide(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;)V

    goto :goto_1e

    .line 503
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$H;->this$0:Lcom/android/server/wm/AppContinuityGuideConfirmDialog;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, v1, p1}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog;->-$$Nest$mhandleShow(Lcom/android/server/wm/AppContinuityGuideConfirmDialog;ZLcom/android/server/wm/Task;)V

    :goto_1e
    return-void
.end method
