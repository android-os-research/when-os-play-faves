.class public Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessChangeValues"
.end annotation


# instance fields
.field public final brightness:F

.field public final brightnessSpline:Landroid/util/Spline;

.field public final isDefaultBrightnessConfig:Z

.field public final isUserSetBrightness:Z

.field public final powerBrightnessFactor:F

.field public final timestamp:J

.field public final uniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFZZJLjava/lang/String;Landroid/util/Spline;)V
    .registers 9

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightness:F

    .line 1431
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 1432
    iput-boolean p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isUserSetBrightness:Z

    .line 1433
    iput-boolean p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 1434
    iput-wide p5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->timestamp:J

    .line 1435
    iput-object p7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    .line 1436
    iput-object p8, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightnessSpline:Landroid/util/Spline;

    return-void
.end method
