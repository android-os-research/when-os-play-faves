.class public final Lcom/android/server/wm/TspStateController$H;
.super Landroid/os/Handler;
.source "TspStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TspStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 p1, 0x3

    if-eq v0, p1, :cond_c

    goto :goto_25

    .line 157
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-static {p0}, Lcom/android/server/wm/TspStateController;->-$$Nest$mfinishScreenTurningOnInner(Lcom/android/server/wm/TspStateController;)V

    goto :goto_25

    .line 154
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/TspStateController;->-$$Nest$mupdateImePolicyInner(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/WindowState;)V

    goto :goto_25

    .line 151
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/TspStateController;->-$$Nest$mupdateWindowPolicyInner(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/WindowState;)V

    :goto_25
    return-void
.end method
