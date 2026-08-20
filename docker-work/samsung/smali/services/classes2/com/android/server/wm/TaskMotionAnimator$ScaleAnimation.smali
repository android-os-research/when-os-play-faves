.class public final Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;
.super Ljava/lang/Object;
.source "TaskMotionAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/server/wm/TaskMotionAnimator$TaskMotionAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskMotionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScaleAnimation"
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0x190

.field public static final END_SCALE:F = 0.96f

.field public static final PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field public static final SOURCE_SCALE:F = 1.0f

.field public static final START_SCALE:F = 0.95f


# instance fields
.field public final SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public mValueAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/wm/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskMotionAnimator;I)V
    .registers 7

    .line 132
    iput-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x2

    const-string/jumbo v1, "scale"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_30

    new-array p2, v3, [Landroid/animation/PropertyValuesHolder;

    new-array v0, v0, [F

    .line 134
    fill-array-data v0, :array_5a

    .line 135
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p2, v2

    .line 134
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_43

    :cond_30
    new-array p2, v3, [Landroid/animation/PropertyValuesHolder;

    new-array v0, v0, [F

    .line 137
    fill-array-data v0, :array_62

    .line 138
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, p2, v2

    .line 137
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 140
    :goto_43
    iget-object p2, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    iget-object p2, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_5a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_62
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel(Z)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 161
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/TaskMotionAnimator;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_36

    .line 165
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmCanceled(Lcom/android/server/wm/TaskMotionAnimator;Z)V

    if-eqz p1, :cond_24

    .line 167
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 169
    :cond_24
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 170
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_38

    .line 171
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_35

    const-string p0, "TaskMotionAnimator"

    const-string p1, "ScaleAnimation[cancel]"

    .line 172
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void

    .line 162
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    .line 170
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public isAnimating()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 180
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 9

    .line 210
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 211
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 214
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;Z)V

    .line 216
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p0, v2}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 218
    :cond_4c
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit p1
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 197
    iget-object p1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 198
    :try_start_8
    iput-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;)Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;

    move-result-object v1

    .line 200
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p0, v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fputmAnimationFinishedCallback(Lcom/android/server/wm/TaskMotionAnimator;Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 201
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1d

    if-eqz v1, :cond_1c

    const/4 p0, 0x0

    .line 204
    invoke-interface {v1, v0, p0}, Lcom/android/server/wm/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;Z)V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 201
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_4d

    .line 188
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v1}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {p0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLeash(Lcom/android/server/wm/TaskMotionAnimator;)Landroid/view/SurfaceControl;

    move-result-object v3

    const-string/jumbo p0, "scale"

    .line 189
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo p0, "scale"

    .line 190
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 188
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 191
    monitor-exit v0

    return-void

    .line 186
    :cond_4d
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    .line 191
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public start()V
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/server/wm/TaskMotionAnimator;

    invoke-static {v0}, Lcom/android/server/wm/TaskMotionAnimator;->-$$Nest$fgetmLock(Lcom/android/server/wm/TaskMotionAnimator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_e

    .line 150
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 152
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1b

    .line 153
    sget-boolean p0, Lcom/android/server/wm/TaskMotionController;->DEBUG:Z

    if-eqz p0, :cond_1a

    const-string p0, "TaskMotionAnimator"

    const-string v0, "ScaleAnimation[start]"

    .line 154
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void

    :catchall_1b
    move-exception p0

    .line 152
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method
