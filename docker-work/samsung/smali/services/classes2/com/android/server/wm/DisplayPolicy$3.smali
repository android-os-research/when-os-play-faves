.class public Lcom/android/server/wm/DisplayPolicy$3;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mAppTransitionCancelled:Ljava/lang/Runnable;

.field public mAppTransitionFinished:Ljava/lang/Runnable;

.field public mAppTransitionPending:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic val$displayId:I


# direct methods
.method public static synthetic $r8$lambda$07WcV0q9nBXJx8ejylEPxvNohVw(Lcom/android/server/wm/DisplayPolicy$3;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy$3;->lambda$$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A5pDp2dJey-bPaeTAhCNMMf4Fac(Lcom/android/server/wm/DisplayPolicy$3;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy$3;->lambda$$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMll1vyMWlAfpQw-Kz4o73oDWUE(Lcom/android/server/wm/DisplayPolicy$3;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy$3;->lambda$onAppTransitionStartingLocked$3(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$f5M0jqTMVOuHbmsKwiN7MCd9GxQ(Lcom/android/server/wm/DisplayPolicy$3;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy$3;->lambda$$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;I)V
    .registers 3

    .line 800
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$3;->val$displayId:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 802
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy$3;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->mAppTransitionPending:Ljava/lang/Runnable;

    .line 809
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy$3;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->mAppTransitionCancelled:Ljava/lang/Runnable;

    .line 816
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy$3;I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->mAppTransitionFinished:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$0(I)V
    .registers 2

    .line 803
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 805
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending(I)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$$1(I)V
    .registers 2

    .line 810
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 812
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionCancelled(I)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$$2(I)V
    .registers 2

    .line 817
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 819
    invoke-interface {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionFinished(I)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$onAppTransitionStartingLocked$3(JJ)V
    .registers 12

    .line 833
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 835
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(IJJ)V

    :cond_17
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    .line 844
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->mAppTransitionCancelled:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 849
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->mAppTransitionFinished:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .registers 2

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$3;->mAppTransitionPending:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppTransitionStartingLocked(ZZJJJ)I
    .registers 15

    .line 832
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda3;

    move-object v0, p2

    move-object v1, p0

    move-wide v2, p5

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy$3$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy$3;JJ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method
