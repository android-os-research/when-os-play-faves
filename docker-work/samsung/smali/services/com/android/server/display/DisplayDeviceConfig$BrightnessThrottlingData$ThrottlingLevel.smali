.class public Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrottlingLevel"
.end annotation


# instance fields
.field public brightness:F

.field public thermalStatus:I


# direct methods
.method public constructor <init>(IF)V
    .registers 3

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1534
    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 1535
    iput p2, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;->brightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
