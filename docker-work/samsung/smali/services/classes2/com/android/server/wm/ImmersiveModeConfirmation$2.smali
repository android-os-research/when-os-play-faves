.class public Lcom/android/server/wm/ImmersiveModeConfirmation$2;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .registers 2

    .line 980
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 3

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fputmCoverState(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)V

    .line 984
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmHandler(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$2;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmHandler(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
