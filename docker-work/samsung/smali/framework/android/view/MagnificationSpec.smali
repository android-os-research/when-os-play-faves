.class public Landroid/view/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o offsetX:F

.field public greylist-max-o offsetY:F

.field public greylist-max-o scale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/MagnificationSpec;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/view/MagnificationSpec$1;

    invoke-direct {v0}, Landroid/view/MagnificationSpec$1;-><init>()V

    sput-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 127
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 2

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 67
    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 68
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 91
    return v0

    .line 94
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 98
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/MagnificationSpec;

    .line 99
    .local v2, "s":Landroid/view/MagnificationSpec;
    iget v3, p0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, v2, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, v2, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 95
    .end local v2    # "s":Landroid/view/MagnificationSpec;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 104
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v3

    .line 105
    .local v0, "result":I
    :goto_e
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_1b

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    add-int/2addr v2, v4

    .line 106
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget v4, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_29

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_29
    add-int/2addr v0, v3

    .line 107
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o initialize(FFF)V
    .registers 4
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 55
    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 56
    iput p2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 57
    iput p3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 58
    return-void
.end method

.method public greylist-max-o isNop()Z
    .registers 3

    .line 61
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public greylist-max-o setTo(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "other"    # Landroid/view/MagnificationSpec;

    .line 71
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 72
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 73
    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 74
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ",offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ",offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    return-void
.end method
