.class public Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;
.super Ljava/lang/Object;
.source "TaskMotionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskMotionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskMotionInfo"
.end annotation


# instance fields
.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mMaxBounds:Landroid/graphics/Rect;

.field public final mMotionAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/TaskMotionAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public final mSafeBounds:Landroid/graphics/Rect;

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskDragBounds:Landroid/graphics/Rect;

.field public final mTaskOriginalBounds:Landroid/graphics/Rect;

.field public mWindow:Lcom/android/server/wm/WindowState;

.field public final synthetic this$0:Lcom/android/server/wm/TaskMotionController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEndBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mEndBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSafeBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStableBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mStartBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskDragBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTaskDragBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOriginalBounds(Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTaskOriginalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskMotionController;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;I)V
    .registers 11

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->this$0:Lcom/android/server/wm/TaskMotionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTaskOriginalBounds:Landroid/graphics/Rect;

    .line 118
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTaskDragBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mStartBounds:Landroid/graphics/Rect;

    .line 120
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mEndBounds:Landroid/graphics/Rect;

    .line 122
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 125
    iput-object p2, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    .line 126
    iput-object p3, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mWindow:Lcom/android/server/wm/WindowState;

    .line 127
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 129
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/TaskMotionController;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 132
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/TaskMotionController;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 133
    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmTmpRect(Lcom/android/server/wm/TaskMotionController;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 134
    iget p3, v2, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmMinVisibleWidth(Lcom/android/server/wm/TaskMotionController;)I

    move-result v1

    add-int/2addr p3, v1

    sub-int/2addr p3, p0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1e

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmMinVisibleWidth(Lcom/android/server/wm/TaskMotionController;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, p0

    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmMinVisibleWidth(Lcom/android/server/wm/TaskMotionController;)I

    move-result p1

    sub-int/2addr p0, p1

    add-int/2addr p0, p2

    invoke-virtual {v0, p3, v1, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 138
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    iget p0, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p4

    iput p0, v3, Landroid/graphics/Rect;->left:I

    .line 140
    iget p0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p4

    iput p0, v3, Landroid/graphics/Rect;->right:I

    .line 141
    iget p0, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    iput p0, v3, Landroid/graphics/Rect;->top:I

    .line 142
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p0, p4

    iput p0, v3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public clearAnimator(Z)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_3c

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskMotionAnimator;

    if-eqz v1, :cond_39

    .line 187
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskMotionAnimator;->cancelAnimation(Z)V

    .line 188
    sget-boolean v1, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v1, :cond_39

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelMotion: animType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskMotionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_3c
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public getMotioningBounds(Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x2

    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1f

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskMotionAnimator;

    if-eqz v1, :cond_1c

    .line 210
    invoke-virtual {v1}, Lcom/android/server/wm/TaskMotionAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 211
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskMotionAnimator;->getDragBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public isAnimating()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1e

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskMotionAnimator;

    if-eqz v2, :cond_1b

    .line 148
    invoke-virtual {v2}, Lcom/android/server/wm/TaskMotionAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return v0
.end method

.method public isAnimating(I)Z
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskMotionAnimator;

    if-eqz p0, :cond_16

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wm/TaskMotionAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public makeAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZFFFZLcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/TaskMotionAnimator;
    .registers 27

    move-object/from16 v0, p0

    .line 172
    new-instance v15, Lcom/android/server/wm/TaskMotionAnimator;

    iget-object v1, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->this$0:Lcom/android/server/wm/TaskMotionController;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionController;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    iget-object v5, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->this$0:Lcom/android/server/wm/TaskMotionController;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmSpringSystem(Lcom/android/server/wm/TaskMotionController;)Lcom/android/server/wm/animation/rebound/SpringSystem;

    move-result-object v13

    move-object v1, v15

    move/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v14, p8

    move-object/from16 v16, v15

    move-object/from16 v15, p9

    invoke-direct/range {v1 .. v15}, Lcom/android/server/wm/TaskMotionAnimator;-><init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFFFLcom/android/server/wm/animation/rebound/SpringSystem;ZLcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 175
    iget-object v0, v0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public makeAnimator(ILcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/TaskMotionAnimator;
    .registers 6

    .line 162
    new-instance v0, Lcom/android/server/wm/TaskMotionAnimator;

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->this$0:Lcom/android/server/wm/TaskMotionController;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionController;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionController;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/server/wm/TaskMotionAnimator;-><init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 164
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public removeAnimator(I)V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetAnimLeash()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskMotionAnimator;

    if-eqz v0, :cond_2f

    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/TaskMotionAnimator;->resetHandlerLeash()V

    .line 201
    sget-boolean v0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetAnimLeash:  Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionController$TaskMotionInfo;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskMotionController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method
