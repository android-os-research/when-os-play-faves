.class public Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessChangeValues"
.end annotation


# instance fields
.field public final brightness:F

.field public final isDefaultBrightnessConfig:Z

.field public final isUserSetBrightness:Z

.field public final powerBrightnessFactor:F

.field public final timestamp:J

.field public final uniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFZZJLjava/lang/String;)V
    .registers 8

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput p1, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    .line 1066
    iput p2, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 1067
    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    .line 1068
    iput-boolean p4, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 1069
    iput-wide p5, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    .line 1070
    iput-object p7, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    return-void
.end method
