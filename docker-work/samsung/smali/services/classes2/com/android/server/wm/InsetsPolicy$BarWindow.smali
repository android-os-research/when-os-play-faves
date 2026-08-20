.class public Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarWindow"
.end annotation


# instance fields
.field public final mId:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .registers 3

    .line 879
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 880
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    return-void
.end method


# virtual methods
.method public final getInsetsSourceVisibility(Lcom/android/server/wm/InsetsControlTarget;I)Z
    .registers 7

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-ne p2, v1, :cond_27

    .line 912
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->findTransientNavOrAltBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [I

    if-eqz v1, :cond_1b

    .line 914
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v1, :cond_1b

    move-object v3, v1

    .line 917
    :cond_1b
    :goto_1b
    array-length v1, v3

    if-ge v2, v1, :cond_27

    .line 918
    aget v1, v3, v2

    if-ne v1, v0, :cond_24

    move p2, v0

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 924
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {p0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 925
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 927
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result p0

    return p0

    .line 929
    :cond_3c
    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result p0

    return p0
.end method

.method public final setVisible(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    .line 897
    :goto_5
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq v0, p1, :cond_26

    .line 898
    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 902
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 902
    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    :cond_26
    return-void
.end method

.method public final updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmFocusedWin(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 887
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->isInImmersiveSplitMode(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->getInsetsSourceVisibility(Lcom/android/server/wm/InsetsControlTarget;I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    goto :goto_2b

    :cond_1c
    if-eqz p1, :cond_27

    .line 891
    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    :goto_2b
    return-void
.end method
