.class Lcom/samsung/android/wfd/DeXMode$WirelessDeX;
.super Ljava/lang/Object;
.source "DeXMode.java"

# interfaces
.implements Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/DeXMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WirelessDeX"
.end annotation


# static fields
.field private static final blacklist innerTAG:Ljava/lang/String; = "WirelessDeX"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wfd/DeXMode;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/wfd/DeXMode;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/wfd/DeXMode;

    .line 597
    iput-object p1, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    invoke-static {p1}, Lcom/samsung/android/wfd/DeXMode;->-$$Nest$mregisterDexSettingObserver(Lcom/samsung/android/wfd/DeXMode;)V

    .line 599
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 600
    const-string v0, "DeXMode"

    const-string v1, "WirelessDeX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_13
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wfd/DeXMode;Lcom/samsung/android/wfd/DeXMode$WirelessDeX-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;-><init>(Lcom/samsung/android/wfd/DeXMode;)V

    return-void
.end method


# virtual methods
.method public blacklist getTAG()Ljava/lang/String;
    .registers 2

    .line 604
    const-string v0, "WirelessDeX"

    return-object v0
.end method

.method public blacklist updateTouchInput(I)V
    .registers 9
    .param p1, "pointerIndex"    # I

    .line 608
    const/high16 v0, 0x3f800000    # 1.0f

    .line 609
    .local v0, "inputX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 611
    .local v1, "inputY":F
    sget-boolean v2, Lcom/samsung/android/wfd/ConnectionMode;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 612
    const-string v2, "DeXMode"

    const-string v3, "WFDMode is WIRELESS_DEX"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v2, v2, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    mul-float/2addr v2, v3

    .line 615
    .end local v0    # "inputX":F
    .local v2, "inputX":F
    sget-boolean v0, Lcom/samsung/android/wfd/ConnectionMode;->mIsPortraitMode:Z

    if-eqz v0, :cond_50

    .line 616
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    div-float/2addr v0, v3

    .line 618
    .local v0, "realHeight":F
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v3, v3, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v4, v4, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v3, v4

    .line 619
    .local v3, "sinkInputY":F
    iget-object v4, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v4, v4, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    sub-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 620
    .local v4, "letterBox":F
    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v5, v5, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    sub-float v6, v3, v4

    div-float/2addr v6, v0

    mul-float/2addr v5, v6

    .line 621
    .end local v0    # "realHeight":F
    .end local v1    # "inputY":F
    .end local v3    # "sinkInputY":F
    .end local v4    # "letterBox":F
    .local v5, "inputY":F
    goto :goto_60

    .line 622
    .end local v5    # "inputY":F
    .restart local v1    # "inputY":F
    :cond_50
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget v0, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v3, v3, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float v5, v0, v3

    .line 625
    .end local v1    # "inputY":F
    .restart local v5    # "inputY":F
    :goto_60
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v0, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v0, v0, p1

    iput v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 626
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;->this$0:Lcom/samsung/android/wfd/DeXMode;

    iget-object v0, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v0, v0, p1

    iput v5, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 627
    return-void
.end method
