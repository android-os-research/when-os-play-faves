.class public Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 211
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 212
    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_39

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choreographer callback time out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RampAnimator"

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_39
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4, v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;J)V

    .line 225
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_51

    .line 228
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    goto :goto_be

    .line 232
    :cond_51
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    .line 233
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_83

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_83

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmRateAtHbm(Lcom/android/server/display/RampAnimator;)F

    move-result v3

    .line 235
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_83

    .line 236
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmRateAtHbm(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    :cond_83
    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    .line 242
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_aa

    .line 243
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    goto :goto_be

    .line 245
    :cond_aa
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    .line 248
    :goto_be
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmCurrentValue(Lcom/android/server/display/RampAnimator;F)V

    .line 250
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e0

    .line 251
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$msetPropertyValue(Lcom/android/server/display/RampAnimator;F)V

    .line 253
    :cond_e0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f6

    .line 254
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {p0}, Lcom/android/server/display/RampAnimator;->-$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator;)V

    goto :goto_10d

    .line 256
    :cond_f6
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimating(Lcom/android/server/display/RampAnimator;Z)V

    .line 257
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 258
    iget-object p0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {p0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_10d
    :goto_10d
    return-void
.end method
