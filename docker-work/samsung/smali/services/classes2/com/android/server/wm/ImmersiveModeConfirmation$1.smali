.class public Lcom/android/server/wm/ImmersiveModeConfirmation$1;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 786
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "ImmersiveModeConfirmation"

    const-string v1, "mConfirm.run()"

    .line 789
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 793
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 794
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfgetsConfirmedForGesture()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 795
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfputsConfirmedForGesture(Z)V

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmContext(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$smsaveGestureSetting(Landroid/content/Context;)V

    goto :goto_3b

    .line 800
    :cond_29
    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfgetsConfirmed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 801
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfputsConfirmed(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmContext(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$smsaveSetting(Landroid/content/Context;)V

    .line 806
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmCoverManager(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmListenerRegistered(Lcom/android/server/wm/ImmersiveModeConfirmation;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfgetsConfirmed()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$sfgetsConfirmedForGesture()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 809
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmCoverManager(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fgetmCoverStateListener(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$fputmListenerRegistered(Lcom/android/server/wm/ImmersiveModeConfirmation;Z)V

    .line 813
    :cond_6c
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleHide(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    return-void
.end method
