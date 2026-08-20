.class public Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "BssidStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/BssidStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field public final mAlpha:D

.field public mProduct:D

.field public mValue:D

.field public mVolume:D

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/BssidStatistics;D)V
    .registers 6

    .line 491
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->this$0:Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 492
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    .line 493
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    .line 494
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mProduct:D

    .line 495
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mAlpha:D

    return-void
.end method


# virtual methods
.method public update(DI)V
    .registers 14

    if-gtz p3, :cond_3

    return-void

    :cond_3
    int-to-double v0, p3

    mul-double/2addr p1, v0

    .line 502
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mAlpha:D

    mul-double/2addr p1, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v6, v4, v2

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v6, v8

    add-double/2addr p1, v6

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v0, v2

    sub-double/2addr v4, v2

    .line 503
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mVolume:D

    div-double/2addr p1, v0

    .line 504
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;->mValue:D

    return-void
.end method
