.class Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;
.super Ljava/lang/Object;
.source "BackOffFeatureUtil.java"


# static fields
.field public static final HEAD_SAR_PROXIMITY:I = 0x1

.field public static final HEAD_SAR_RCV:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBodySarType()Ljava/lang/String;
    .registers 1

    const-string p0, "GRIPIII"

    return-object p0
.end method

.method getSeparateAntennaType()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method getSingleAntennaType()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method isJdmModel()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method isSupportA03S()Z
    .registers 2

    .line 71
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-string v0, "a03su"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method isSupportGta4L()Z
    .registers 2

    .line 59
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-string v0, "gta4l"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method isSupportGta4XL()Z
    .registers 2

    .line 51
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-string v0, "gta4xl"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method isSupportedHeadSar(I)Z
    .registers 4

    if-eqz p1, :cond_1d

    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    return p0

    .line 34
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported sar type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
