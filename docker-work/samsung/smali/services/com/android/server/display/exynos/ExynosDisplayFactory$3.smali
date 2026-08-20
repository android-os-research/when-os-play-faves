.class public Lcom/android/server/display/exynos/ExynosDisplayFactory$3;
.super Landroid/os/CountDownTimer;
.source "ExynosDisplayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/exynos/ExynosDisplayFactory;->initCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V
    .registers 6

    .line 642
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetDEBUG(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountDownTimer finished = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExynosDisplayFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    return-void
.end method

.method public onTick(J)V
    .registers 9

    .line 646
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-gtz p1, :cond_43

    :goto_b
    if-ge p2, v0, :cond_327

    .line 649
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_20

    goto :goto_40

    .line 651
    :cond_20
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_40

    .line 653
    :cond_2f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationAPS(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 657
    :cond_43
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    if-gt p1, v1, :cond_83

    :goto_4b
    if-ge p2, v0, :cond_327

    .line 660
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_60

    goto :goto_80

    .line 662
    :cond_60
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_80

    .line 664
    :cond_6f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationDEGAMMA(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    add-int/lit8 p2, p2, 0x1

    goto :goto_4b

    .line 668
    :cond_83
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    if-gt p1, v0, :cond_c3

    :goto_8b
    if-ge p2, v0, :cond_327

    .line 671
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_a0

    goto :goto_c0

    .line 673
    :cond_a0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_af

    goto :goto_c0

    .line 675
    :cond_af
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationGAMMA(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c0
    add-int/lit8 p2, p2, 0x1

    goto :goto_8b

    .line 679
    :cond_c3
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x3

    if-gt p1, v2, :cond_104

    :goto_cc
    if-ge p2, v0, :cond_327

    .line 682
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_e1

    goto :goto_101

    .line 684
    :cond_e1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_f0

    goto :goto_101

    .line 686
    :cond_f0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationGAMMA_MATRIX(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_101
    add-int/lit8 p2, p2, 0x1

    goto :goto_cc

    .line 690
    :cond_104
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x4

    if-gt p1, v2, :cond_14c

    :goto_10d
    if-ge p2, v0, :cond_327

    .line 693
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v3

    aget p1, p1, v3

    if-nez p1, :cond_122

    goto :goto_149

    .line 695
    :cond_122
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_131

    goto :goto_149

    .line 697
    :cond_131
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p2

    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {p1, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationHSC48_LCG(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_149
    add-int/lit8 p2, p2, 0x1

    goto :goto_10d

    .line 701
    :cond_14c
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_18d

    :goto_155
    if-ge p2, v0, :cond_327

    .line 704
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_16a

    goto :goto_18a

    .line 706
    :cond_16a
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_179

    goto :goto_18a

    .line 708
    :cond_179
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationHSC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18a
    add-int/lit8 p2, p2, 0x1

    goto :goto_155

    .line 712
    :cond_18d
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/4 v2, 0x6

    if-gt p1, v2, :cond_1ce

    :goto_196
    if-ge p2, v0, :cond_327

    .line 715
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_1ab

    goto :goto_1cb

    .line 717
    :cond_1ab
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1ba

    goto :goto_1cb

    .line 719
    :cond_1ba
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationSCL(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1cb
    add-int/lit8 p2, p2, 0x1

    goto :goto_196

    .line 723
    :cond_1ce
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0x9

    if-gt p1, v2, :cond_218

    :goto_1d8
    if-ge p2, v0, :cond_327

    .line 726
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_1ed

    goto :goto_215

    .line 728
    :cond_1ed
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_1fc

    goto :goto_215

    .line 730
    :cond_1fc
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_ENC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_215
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d8

    .line 734
    :cond_218
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xa

    if-gt p1, v2, :cond_24e

    :goto_222
    if-ge p2, v0, :cond_327

    .line 737
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_237

    goto :goto_24b

    .line 739
    :cond_237
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_246

    goto :goto_24b

    .line 741
    :cond_246
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_DEC(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    :goto_24b
    add-int/lit8 p2, p2, 0x1

    goto :goto_222

    .line 745
    :cond_24e
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xb

    if-gt p1, v2, :cond_290

    :goto_258
    if-ge p2, v0, :cond_327

    .line 748
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_26d

    goto :goto_28d

    .line 750
    :cond_26d
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_27c

    goto :goto_28d

    .line 752
    :cond_27c
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC17_CON(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_28d
    add-int/lit8 p2, p2, 0x1

    goto :goto_258

    .line 756
    :cond_290
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xc

    if-gt p1, v2, :cond_2d2

    :goto_29a
    if-ge p2, v0, :cond_327

    .line 759
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_2af

    goto :goto_2cf

    .line 761
    :cond_2af
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_2be

    goto :goto_2cf

    .line 763
    :cond_2be
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationCGC_DITHER(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2cf
    add-int/lit8 p2, p2, 0x1

    goto :goto_29a

    .line 767
    :cond_2d2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 v2, 0xd

    if-gt p1, v2, :cond_314

    :goto_2dc
    if-ge p2, v0, :cond_327

    .line 770
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[[I

    move-result-object p1

    aget-object p1, p1, p2

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result v2

    aget p1, p1, v2

    if-nez p1, :cond_2f1

    goto :goto_311

    .line 772
    :cond_2f1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdx(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    move-result p1

    if-nez p1, :cond_300

    goto :goto_311

    .line 774
    :cond_300
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmFactoryXMLPath(Lcom/android/server/display/exynos/ExynosDisplayFactory;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeSettingTable(Lcom/android/server/display/exynos/ExynosDisplayFactory;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-static {p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationDE(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;Ljava/lang/String;)V

    :goto_311
    add-int/lit8 p2, p2, 0x1

    goto :goto_2dc

    .line 778
    :cond_314
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    const/16 p2, 0xe

    if-gt p1, p2, :cond_327

    .line 779
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmColorModeModeIdxDefault(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 782
    :cond_327
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fgetmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$fputmCountDownTimerCount(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    return-void
.end method
