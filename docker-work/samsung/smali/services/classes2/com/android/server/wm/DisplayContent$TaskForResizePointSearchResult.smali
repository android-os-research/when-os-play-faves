.class public final Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskForResizePointSearchResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/Task;",
        ">;"
    }
.end annotation


# instance fields
.field public delta:I

.field public deltaInside:I

.field public mTmpRect:Landroid/graphics/Rect;

.field public taskForResize:Lcom/android/server/wm/Task;

.field public topOffset:I

.field public x:I

.field public y:I


# direct methods
.method public static synthetic $r8$lambda$zTkmXs8zSHWndzagqMxQaZgXW3I([ZLcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->lambda$test$0([ZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5939
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$test$0([ZLcom/android/server/wm/WindowState;)V
    .registers 3

    .line 6003
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 6004
    aput-boolean v0, p0, p1

    :cond_a
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/wm/WindowContainer;IIIII)Lcom/android/server/wm/Task;
    .registers 8

    const/4 v0, 0x0

    .line 5945
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 5946
    iput p2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    .line 5947
    iput p3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    .line 5948
    iput p4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    .line 5950
    iput p5, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->topOffset:I

    .line 5951
    iput p6, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->deltaInside:I

    .line 5953
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 5954
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 5956
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public test(Lcom/android/server/wm/Task;)Z
    .registers 7

    .line 5962
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 5967
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    return v2

    .line 5971
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_1f

    return v2

    .line 5977
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_30

    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_31

    :cond_30
    return v2

    .line 5983
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 5984
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 5985
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_44

    return v1

    .line 5996
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 5998
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_97

    new-array v0, v2, [Z

    .line 6000
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 6002
    new-instance v4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult$$ExternalSyntheticLambda0;-><init>([Z)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6c

    .line 6008
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->topOffset:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 6012
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 6013
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->deltaInside:I

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 6015
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 6016
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return v2

    .line 6019
    :cond_8e
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->deltaInside:I

    neg-int v4, v3

    neg-int v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 6023
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    neg-int v4, v3

    neg-int v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 6024
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 6025
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 6027
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 6028
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    :cond_c1
    return v2

    :cond_c2
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 5930
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->test(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
