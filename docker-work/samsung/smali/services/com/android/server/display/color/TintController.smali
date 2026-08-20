.class public abstract Lcom/android/server/display/color/TintController;
.super Ljava/lang/Object;
.source "TintController.java"


# instance fields
.field public mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

.field public mIsActivated:Ljava/lang/Boolean;

.field public mIsActivationLocked:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matrixToString([FI)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    if-gtz p1, :cond_9

    goto :goto_36

    .line 118
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 119
    :goto_f
    array-length v4, p0

    if-ge v0, v4, :cond_31

    .line 120
    rem-int v4, v0, p1

    if-nez v4, :cond_1b

    const-string v4, "\n      "

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    new-array v4, v1, [Ljava/lang/Object;

    .line 123
    aget v5, p0, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%9.6f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 125
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_36
    :goto_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid arguments when formatting matrix to string, matrix is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " columns: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorDisplayService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public cancelAnimator()V
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    if-eqz p0, :cond_7

    .line 47
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public endAnimator()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    :cond_a
    return-void
.end method

.method public getAnimator()Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    return-object p0
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMatrix()[F
.end method

.method public isActivated()Z
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isActivatedStateNotSet()Z
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isActivationLock()Z
    .registers 1

    .line 134
    iget-boolean p0, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    return p0
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    return-void
.end method

.method public setActivationLock(Z)V
    .registers 2

    .line 130
    iput-boolean p1, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    return-void
.end method

.method public setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    return-void
.end method

.method public abstract setMatrix(I)V
.end method

.method public abstract setUp(Landroid/content/Context;Z)V
.end method
