.class public Lcom/android/server/wm/DisplayArea$Dimmable;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimmable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/DisplayArea;",
        ">;"
    }
.end annotation


# instance fields
.field public final mDimmer:Lcom/android/server/wm/Dimmer;

.field public final mTmpDimBoundsRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$HtkkoZkIXcEGrDXi5mCl8NOjNNQ(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->lambda$prepareSurfaces$0(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 5

    .line 675
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 671
    new-instance p1, Lcom/android/server/wm/Dimmer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 672
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$prepareSurfaces$0(Lcom/android/server/wm/Task;)Z
    .registers 1

    .line 693
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0
.end method

.method public prepareSurfaces()V
    .registers 4

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 686
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 693
    new-instance v0, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 697
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 698
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_34
    return-void
.end method
