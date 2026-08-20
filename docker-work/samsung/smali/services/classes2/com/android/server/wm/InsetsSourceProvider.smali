.class public abstract Lcom/android/server/wm/InsetsSourceProvider;
.super Ljava/lang/Object;
.source "InsetsSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InsetsSourceProvider"


# instance fields
.field public mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

.field public mClientVisible:Z

.field public mControl:Landroid/view/InsetsSourceControl;

.field public mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public final mControllable:Z

.field public mCropToProvidingInsets:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFakeControl:Landroid/view/InsetsSourceControl;

.field public mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFrameProvider:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final mImeOverrideFrame:Landroid/graphics/Rect;

.field public mInsetsHint:Landroid/graphics/Insets;

.field public mIsLeashReadyForDispatching:Z

.field public final mLastSourceFrame:Landroid/graphics/Rect;

.field public mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mSeamlessRotating:Z

.field public mServerVisible:Z

.field public final mSetLeashPositionConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public final mSource:Landroid/view/InsetsSource;

.field public final mSourceFrame:Landroid/graphics/Rect;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static synthetic $r8$lambda$A-bhFv7ipn_mv60gW-T4zEwJ36A(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmControlTarget(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCropToProvidingInsets(Lcom/android/server/wm/InsetsSourceProvider;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mCropToProvidingInsets:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateController(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsStateController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdapter(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmControl(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/InsetsSourceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmControlTarget(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProvidingInsetsBoundsCropRect(Lcom/android/server/wm/InsetsSourceProvider;)Landroid/graphics/Rect;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getProvidingInsetsBoundsCropRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mLastSourceFrame:Landroid/graphics/Rect;

    .line 96
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 98
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSetLeashPositionConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mCropToProvidingInsets:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 134
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 135
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 136
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 137
    new-instance p2, Landroid/view/InsetsSourceControl;

    .line 138
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result p3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Landroid/view/InsetsSourceControl;->INVALID_HINTS:Landroid/graphics/Insets;

    const/4 v2, 0x0

    invoke-direct {p2, p3, v2, v0, v1}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/graphics/Insets;)V

    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    .line 139
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->isInsetsTypeControllable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_19

    .line 100
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p0

    .line 103
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_19
    return-void
.end method


# virtual methods
.method public createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 6

    .line 279
    new-instance v0, Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/InsetsSource;-><init>(I)V

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz p2, :cond_24

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p2, p1, v1, v2}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    :cond_24
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_63

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mControl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSourceControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 634
    :cond_63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsLeashReadyForDispatching="

    .line 635
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mImeOverrideFrame="

    .line 636
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_9e

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWindowContainer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 642
    :cond_9e
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    if-eqz v0, :cond_bb

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAdapter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 646
    :cond_bb
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_dc

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mControlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 650
    :cond_dc
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_fd

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPendingControlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 654
    :cond_fd
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_11e

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mFakeControlTarget="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_11e
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 661
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_2e

    const-wide v1, 0x10b00000004L

    .line 666
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 668
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_46

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 671
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 674
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_76

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 677
    :cond_76
    iget-object p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    if-eqz p4, :cond_8e

    invoke-static {p4}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->-$$Nest$fgetmCapturedLeash(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;

    move-result-object p4

    if-eqz p4, :cond_8e

    .line 678
    iget-object p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-static {p4}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->-$$Nest$fgetmCapturedLeash(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;

    move-result-object p4

    const-wide v0, 0x10b00000008L

    invoke-virtual {p4, p1, v0, v1}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 680
    :cond_8e
    iget-object p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    const-wide v0, 0x10b00000009L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x1080000000aL

    .line 681
    iget-boolean p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000bL

    .line 682
    iget-boolean p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000cL

    .line 683
    iget-boolean p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000dL

    .line 684
    iget-boolean p4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000fL

    .line 685
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 686
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finishSeamlessRotation()V
    .registers 2

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    return-void
.end method

.method public getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .registers 5

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_28

    .line 588
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_25

    .line 592
    new-instance p1, Landroid/view/InsetsSourceControl;

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 593
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/graphics/Insets;)V

    return-object p1

    .line 595
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object p0

    .line 597
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_2f

    .line 598
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    return-object p0

    :cond_2f
    return-object v1
.end method

.method public getControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    .line 604
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0
.end method

.method public getImeOverrideFrame()Landroid/graphics/Rect;
    .registers 1

    .line 623
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getProvidingInsetsBoundsCropRect()Landroid/graphics/Rect;
    .registers 7

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_19

    .line 412
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 413
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    .line 416
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-direct {v1, v2, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getSource()Landroid/view/InsetsSource;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    return-object p0
.end method

.method public final getWindowFrameSurfacePosition()Landroid/graphics/Point;
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v1, :cond_1f

    .line 341
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 342
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 343
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AsyncRotationController;->shouldFreezeInsetsPosition(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 345
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    .line 348
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_38

    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 350
    :goto_38
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 351
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/WindowContainer;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    return-object v1
.end method

.method public hasWindowContainer()Z
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isClientVisible()Z
    .registers 1

    .line 608
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    return p0
.end method

.method public isControllable()Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    return p0
.end method

.method public final isMirroredSource()Z
    .registers 5

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 571
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 574
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    check-cast p0, Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-nez p0, :cond_18

    return v1

    :cond_18
    move v0, v1

    .line 578
    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 579
    aget v2, p0, v0

    const/16 v3, 0x13

    if-ne v2, v3, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_27
    return v1
.end method

.method public onPostLayout()V
    .registers 7

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    return-void

    .line 296
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_23

    :cond_1b
    move v3, v1

    goto :goto_23

    .line 299
    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    .line 300
    :goto_23
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v3, :cond_b4

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getWindowFrameSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v3}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v3, :cond_6c

    if-eqz v0, :cond_60

    .line 315
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 316
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 317
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSetLeashPositionConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    goto :goto_6b

    .line 319
    :cond_60
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSetLeashPositionConsumer:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_6b
    move v1, v2

    .line 322
    :cond_6c
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mLastSourceFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 324
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 323
    invoke-virtual {v0, v3, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    .line 325
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1, v0}, Landroid/view/InsetsSourceControl;->setInsetsHint(Landroid/graphics/Insets;)V

    .line 328
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    goto :goto_9f

    :cond_9e
    move v2, v1

    .line 330
    :goto_9f
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mLastSourceFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v1, v2

    :cond_ab
    if-eqz v1, :cond_b4

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_b4
    return-void
.end method

.method public onSurfaceTransactionApplied()V
    .registers 2

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    return-void
.end method

.method public overridesImeFrame()Z
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public removeCropToProvidingInsetsBounds(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mCropToProvidingInsets:Z

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_19
    return-void
.end method

.method public setClientVisible(Z)V
    .registers 4

    .line 527
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 530
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 531
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutAndAssignWindowLayersScheduled:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutAndAssignWindowLayersScheduled:Z

    .line 533
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 536
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    return-void
.end method

.method public setCropToProvidingInsetsBounds(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mCropToProvidingInsets:Z

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 389
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getProvidingInsetsBoundsCropRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 388
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1c
    return-void
.end method

.method public setServerVisible(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 541
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrameForServerVisibility()V

    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    return-void
.end method

.method public setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    .line 166
    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    if-eqz v3, :cond_d

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 173
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 175
    iput-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 178
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 183
    :cond_3e
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_INSETS_enabled:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_64

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x586b6ed2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v4, v7, v3

    invoke-static {v5, v6, v2, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_64
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 186
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    .line 187
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-nez p1, :cond_7f

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 190
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 191
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1, v2}, Landroid/view/InsetsSource;->setInsetsRoundedCornerFrame(Z)V

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_a0

    .line 194
    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result p2

    iget-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    if-eqz p1, :cond_a0

    .line 196
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 197
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_a0

    .line 198
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 199
    iput-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    :cond_a0
    :goto_a0
    return-void
.end method

.method public startSeamlessRotation()V
    .registers 2

    .line 503
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 505
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_c
    return-void
.end method

.method public updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v0

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v1, :cond_18

    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, p1, :cond_13

    goto :goto_18

    .line 518
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_5

    return-void

    .line 362
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .registers 10

    .line 425
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    if-eqz v0, :cond_5

    return-void

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_13

    .line 433
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 435
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_1a

    .line 436
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void

    .line 439
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_21

    if-nez p2, :cond_21

    return-void

    :cond_21
    const/4 p2, 0x1

    if-nez p1, :cond_53

    .line 446
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 447
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 448
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 449
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 453
    :cond_40
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 454
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    return-void

    .line 459
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/16 v2, 0x13

    if-eq v0, v2, :cond_72

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 460
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_72

    return-void

    .line 467
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getWindowFrameSurfacePosition()Landroid/graphics/Point;

    move-result-object v0

    .line 481
    new-instance v3, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;Landroid/graphics/Point;)V

    iput-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 482
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    if-ne v3, v2, :cond_94

    .line 483
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 485
    :cond_94
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 486
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    iget-boolean v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    xor-int/2addr v5, p2

    const/16 v6, 0x20

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    const/4 v2, 0x0

    .line 491
    iput-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 493
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-static {v3}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->-$$Nest$fgetmCapturedLeash(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 494
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 496
    new-instance p1, Landroid/view/InsetsSourceControl;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    invoke-direct {p1, v4, v3, v0, v5}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/graphics/Insets;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 498
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_INSETS_enabled:Z

    if-eqz v0, :cond_e0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x18d9c4b0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p0, v4, p2

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e0
    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .registers 8

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    return-void

    .line 220
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_41

    .line 224
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz p1, :cond_2f

    .line 225
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 226
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz p1, :cond_34

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_34

    .line 231
    :cond_2f
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 233
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    return-void

    .line 238
    :cond_41
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v2, :cond_5a

    .line 240
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_61

    .line 243
    :cond_5a
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 245
    :goto_61
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrameForServerVisibility()V

    .line 247
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v2, :cond_7e

    .line 248
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 249
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    :cond_7e
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_97

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_97

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_97

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_91

    goto :goto_97

    .line 260
    :cond_91
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    goto :goto_aa

    .line 256
    :cond_97
    :goto_97
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 258
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    :goto_aa
    return-void
.end method

.method public final updateSourceFrameForServerVisibility()V
    .registers 2

    .line 268
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v0, :cond_c

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_12

    .line 271
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/InsetsSource;->setFrame(IIII)V

    :goto_12
    return-void
.end method

.method public updateVisibility()V
    .registers 11

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    .line 551
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isMirroredSource()Z

    move-result v2

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v2, :cond_1a

    :cond_18
    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 552
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_INSETS_enabled:Z

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x7b6cc667

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v4

    aput-object v2, v9, v3

    const/4 v1, 0x2

    aput-object v5, v9, v1

    invoke-static {v6, v7, v4, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 558
    :cond_4f
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eq v0, v1, :cond_9c

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVisibility: serverVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", clientVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", from="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    .line 562
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InsetsSourceProvider"

    .line 559
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return-void
.end method
