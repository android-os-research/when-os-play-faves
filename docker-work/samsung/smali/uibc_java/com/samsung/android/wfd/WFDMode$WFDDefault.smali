.class Lcom/samsung/android/wfd/WFDMode$WFDDefault;
.super Ljava/lang/Object;
.source "WFDMode.java"

# interfaces
.implements Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WFDDefault"
.end annotation


# static fields
.field private static final blacklist innerTAG:Ljava/lang/String; = "WFDDefault"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/WFDMode;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/wfd/WFDMode;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/wfd/WFDMode;

    .line 420
    iput-object p1, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 422
    const-string v0, "WFDMode"

    const-string v1, "WFDDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_10
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode$WFDDefault-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/WFDMode$WFDDefault;-><init>(Lcom/samsung/android/wfd/WFDMode;)V

    return-void
.end method


# virtual methods
.method public blacklist getTAG()Ljava/lang/String;
    .registers 2

    .line 426
    const-string v0, "WFDDefault"

    return-object v0
.end method

.method public blacklist updateTouchInput(I)V
    .registers 9
    .param p1, "pointerIndex"    # I

    .line 430
    const/high16 v0, 0x3f800000    # 1.0f

    .line 431
    .local v0, "inputX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 433
    .local v1, "inputY":F
    sget-boolean v2, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 434
    const-string v2, "WFDMode"

    const-string v3, "WFDMode is DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayRatio:F

    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayRatio:F

    cmpg-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-gez v2, :cond_58

    .line 438
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    div-float/2addr v2, v4

    .line 439
    .local v2, "realWidth":F
    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v4, v5

    .line 440
    .local v4, "sinkInputX":F
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    .line 442
    .local v5, "pillarBox":F
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    sub-float v6, v4, v5

    mul-float/2addr v3, v6

    div-float/2addr v3, v2

    .line 443
    .end local v0    # "inputX":F
    .local v3, "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v0, v0, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v0, v6

    .line 444
    .end local v1    # "inputY":F
    .end local v2    # "realWidth":F
    .end local v4    # "sinkInputX":F
    .end local v5    # "pillarBox":F
    .local v0, "inputY":F
    goto :goto_bd

    .end local v3    # "inputX":F
    .local v0, "inputX":F
    .restart local v1    # "inputY":F
    :cond_58
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayRatio:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayRatio:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9f

    .line 445
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayWidth:F

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    div-float/2addr v2, v4

    .line 446
    .local v2, "realHeight":F
    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v4, v4, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v4, v5

    .line 447
    .local v4, "sinkInputY":F
    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v5, v5, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayHeight:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    .line 449
    .local v5, "letterBox":F
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v3, v3, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v3, v6

    .line 450
    .end local v0    # "inputX":F
    .restart local v3    # "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v0, v0, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    sub-float v6, v4, v5

    div-float/2addr v6, v2

    mul-float/2addr v0, v6

    .line 451
    .end local v1    # "inputY":F
    .end local v2    # "realHeight":F
    .end local v4    # "sinkInputY":F
    .end local v5    # "letterBox":F
    .local v0, "inputY":F
    goto :goto_bd

    .line 452
    .end local v3    # "inputX":F
    .local v0, "inputX":F
    .restart local v1    # "inputY":F
    :cond_9f
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v2, v2, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v3, v2

    .line 453
    .end local v0    # "inputX":F
    .restart local v3    # "inputX":F
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget v0, v0, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v0, v2

    .line 456
    .end local v1    # "inputY":F
    .local v0, "inputY":F
    :goto_bd
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v1, v1, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 457
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode$WFDDefault;->this$0:Lcom/samsung/android/wfd/WFDMode;

    iget-object v1, v1, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v1, v1, p1

    iput v0, v1, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 458
    return-void
.end method
