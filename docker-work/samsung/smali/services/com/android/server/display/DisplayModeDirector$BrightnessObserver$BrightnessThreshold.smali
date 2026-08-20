.class public final Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BrightnessThreshold"
.end annotation


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field public mAmbientBrightnessFeature:Ljava/lang/String;

.field public mAmbientBrightnessProperties:Ljava/lang/String;

.field public mDisplayBrightnessFeature:Ljava/lang/String;

.field public mDisplayBrightnessProperties:Ljava/lang/String;

.field public mHighAmbientBrightnessThreshold:I

.field public mHighDisplayBrightnessThreshold:I

.field public mLowAmbientBrightnessThreshold:I

.field public mLowDisplayBrightnessThreshold:I

.field public final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, ","

    const-string v1, "DisplayModeDirector"

    const-string v2, ""

    .line 2620
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2609
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    .line 2610
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowAmbientBrightnessThreshold:I

    .line 2611
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighDisplayBrightnessThreshold:I

    .line 2612
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighAmbientBrightnessThreshold:I

    const/4 v3, 0x0

    .line 2615
    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessFeature:Ljava/lang/String;

    .line 2616
    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    .line 2617
    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2622
    :try_start_1c
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessFeature:Ljava/lang/String;

    .line 2623
    invoke-static {p4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2624
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 2625
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    move-object p2, p4

    .line 2627
    :cond_2b
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2628
    array-length p4, p2

    move v4, v3

    :goto_31
    if-ge v4, p4, :cond_4a

    aget-object v5, p2, v4

    .line 2629
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2630
    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    if-ne v6, p1, :cond_40

    .line 2631
    iput v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowDisplayBrightnessThreshold:I

    goto :goto_42

    .line 2633
    :cond_40
    iput v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighDisplayBrightnessThreshold:I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_42} :catch_45

    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :catch_45
    const-string p2, "SEC_PRODUCT_FEATURE_LCD_CONFIG_SEAMLESS_BRT is empty"

    .line 2637
    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_4a
    :try_start_4a
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessFeature:Ljava/lang/String;

    .line 2641
    invoke-static {p5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2642
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_59

    .line 2643
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    move-object p3, p2

    .line 2645
    :cond_59
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2646
    array-length p3, p2

    :goto_5e
    if-ge v3, p3, :cond_77

    aget-object p4, p2, v3

    .line 2647
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .line 2648
    iget p5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowAmbientBrightnessThreshold:I

    if-ne p5, p1, :cond_6d

    .line 2649
    iput p4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mLowAmbientBrightnessThreshold:I

    goto :goto_6f

    .line 2651
    :cond_6d
    iput p4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$BrightnessThreshold;->mHighAmbientBrightnessThreshold:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6f} :catch_72

    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :catch_72
    const-string p0, "SEC_PRODUCT_FEATURE_LCD_CONFIG_SEAMLESS_LUX is empty"

    .line 2655
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void
.end method
