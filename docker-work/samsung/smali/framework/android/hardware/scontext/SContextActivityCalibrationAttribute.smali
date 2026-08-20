.class public Landroid/hardware/scontext/SContextActivityCalibrationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityCalibrationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextActivityCalibrationAttribute"


# instance fields
.field private blacklist mData:I

.field private blacklist mStatus:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    .line 16
    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    .line 22
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->setAttribute()V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "data"    # I

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    .line 16
    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    .line 39
    iput p1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    .line 40
    iput p2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->setAttribute()V

    .line 42
    return-void
.end method

.method private blacklist setAttribute()V
    .registers 7

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "attribute":Landroid/os/Bundle;
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 66
    .local v1, "acData":[B
    iget v2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 67
    iget v2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 68
    const-string v2, "activity_calibration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity Status Data : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SContextActivityCalibrationAttribute"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/16 v2, 0x35

    invoke-super {p0, v2, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .registers 5

    .line 50
    iget v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    const/4 v1, 0x0

    const-string v2, "SContextActivityCalibrationAttribute"

    if-ltz v0, :cond_1b

    const/4 v3, 0x2

    if-le v0, v3, :cond_b

    goto :goto_1b

    .line 55
    :cond_b
    iget v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    if-ltz v0, :cond_15

    const/4 v3, 0x3

    if-le v0, v3, :cond_13

    goto :goto_15

    .line 60
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_15
    :goto_15
    const-string v0, "Data of calibration is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1

    .line 52
    :cond_1b
    :goto_1b
    const-string v0, "Moving Status is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v1
.end method
