.class public Lcom/android/server/display/color/ColorDisplayService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mIsCancelled:Z

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field public final synthetic val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

.field public final synthetic val$tintController:Lcom/android/server/display/color/TintController;

.field public final synthetic val$to:[F


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V
    .registers 5

    .line 692
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    iput-object p4, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 698
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 703
    check-cast p1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Animation cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to matrix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    const/16 v2, 0x10

    .line 706
    invoke-static {v1, v2}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " min matrix coefficients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getMin()[F

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " max matrix coefficients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getMax()[F

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorDisplayService"

    .line 704
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    if-nez p1, :cond_68

    .line 715
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 717
    :cond_68
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/TintController;->setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V

    return-void
.end method
