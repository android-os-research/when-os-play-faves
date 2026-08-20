.class public final Lcom/silead/manager/FingerFrrFarEnroll;
.super Ljava/lang/Object;
.source "FingerFrrFarEnroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerFrrFarEnroll;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_TYPE_IMAGE:I = 0x2

.field public static final DATA_TYPE_OBSOLETE:I = 0x0

.field public static final DATA_TYPE_PARAM:I = 0x1


# instance fields
.field private mData:[B

.field private mEffectiveArea:I

.field private mErrCode:I

.field private mGreyAvg:I

.field private mGreyMax:I

.field private mImageQuality:I

.field private mIsTpl:I

.field private mOriginal:I

.field private mStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/silead/manager/FingerFrrFarEnroll$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerFrrFarEnroll$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerFrrFarEnroll;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "errcode"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mErrCode:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    .line 28
    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    .line 29
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mData:[B

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mErrCode:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mImageQuality:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mEffectiveArea:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mOriginal:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mStep:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mIsTpl:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mData:[B

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerFrrFarEnroll$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerFrrFarEnroll$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerFrrFarEnroll;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerFrrFarEnroll;
    .registers 10
    .param p0, "result"    # [B

    .line 160
    const/4 v0, -0x2

    .line 161
    .local v0, "err":I
    const/4 v1, 0x0

    .line 162
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 163
    .local v2, "dataLen":I
    const/4 v3, 0x0

    .line 165
    .local v3, "enrollResult":Lcom/silead/manager/FingerFrrFarEnroll;
    if-eqz p0, :cond_a5

    array-length v4, p0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_a5

    .line 166
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 167
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    .line 168
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 169
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 171
    new-instance v4, Lcom/silead/manager/FingerFrrFarEnroll;

    invoke-direct {v4, v0}, Lcom/silead/manager/FingerFrrFarEnroll;-><init>(I)V

    move-object v3, v4

    .line 172
    array-length v4, p0

    add-int/lit8 v5, v1, 0x4

    if-lt v4, v5, :cond_a5

    .line 173
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    .line 174
    .local v4, "type_check":I
    if-nez v4, :cond_64

    .line 175
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 176
    .end local v2    # "dataLen":I
    .local v1, "dataLen":I
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "offset":I
    .local v2, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    .line 177
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 178
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 180
    invoke-virtual {v3, p0, v2, v1}, Lcom/silead/manager/FingerFrrFarEnroll;->setObsoleteData([BII)V

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_a5

    .line 182
    .local v1, "offset":I
    .local v2, "dataLen":I
    :cond_64
    :goto_64
    array-length v5, p0

    add-int/lit8 v6, v1, 0x5

    if-lt v5, v6, :cond_a5

    .line 183
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 184
    .local v1, "type":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x18

    .line 185
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    .line 186
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 187
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    .line 189
    array-length v6, p0

    add-int v7, v5, v2

    if-lt v6, v7, :cond_a2

    .line 190
    const/4 v6, 0x1

    if-ne v1, v6, :cond_9c

    .line 191
    invoke-virtual {v3, p0, v5, v2}, Lcom/silead/manager/FingerFrrFarEnroll;->setParamData([BII)V

    goto :goto_a2

    .line 192
    :cond_9c
    const/4 v6, 0x2

    if-ne v1, v6, :cond_a2

    .line 193
    invoke-virtual {v3, p0, v5, v2}, Lcom/silead/manager/FingerFrrFarEnroll;->setImageData([BII)V

    .line 196
    :cond_a2
    :goto_a2
    add-int v1, v5, v2

    .line 197
    .end local v5    # "offset":I
    .local v1, "offset":I
    goto :goto_64

    .line 202
    .end local v4    # "type_check":I
    :cond_a5
    :goto_a5
    if-nez v3, :cond_ae

    .line 203
    new-instance v4, Lcom/silead/manager/FingerFrrFarEnroll;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Lcom/silead/manager/FingerFrrFarEnroll;-><init>(I)V

    move-object v3, v4

    .line 206
    :cond_ae
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mData:[B

    return-object v0
.end method

.method public getEffectiveArea()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mEffectiveArea:I

    return v0
.end method

.method public getErrCode()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mErrCode:I

    return v0
.end method

.method public getGreyAvg()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    return v0
.end method

.method public getGreyMax()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    return v0
.end method

.method public getImageQuality()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mImageQuality:I

    return v0
.end method

.method public getStep()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mStep:I

    return v0
.end method

.method public isImgOrig()Z
    .registers 2

    .line 96
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mOriginal:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTplImage()Z
    .registers 2

    .line 116
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mIsTpl:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setImageData([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "dataLen"    # I

    .line 49
    if-eqz p1, :cond_f

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_f

    .line 50
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mData:[B

    .line 51
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :cond_f
    return-void
.end method

.method public setObsoleteData([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "dataLen"    # I

    .line 56
    const/4 v0, 0x6

    if-le p3, v0, :cond_47

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_47

    .line 57
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mImageQuality:I

    .line 58
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mEffectiveArea:I

    .line 59
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 60
    .local p2, "orig":I
    and-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mOriginal:I

    .line 61
    shr-int/lit8 v1, p2, 0x1

    and-int/lit8 v1, v1, 0x7f

    iput v1, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mStep:I

    .line 62
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mIsTpl:I

    .line 63
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    .line 64
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    .line 65
    add-int/lit8 v0, p3, -0x6

    invoke-virtual {p0, p1, v1, v0}, Lcom/silead/manager/FingerFrrFarEnroll;->setImageData([BII)V

    .line 66
    .end local p2    # "orig":I
    move p2, v1

    goto :goto_4a

    .line 67
    .end local v1    # "offset":I
    .local p2, "offset":I
    :cond_47
    const/4 v0, -0x2

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mErrCode:I

    .line 69
    :goto_4a
    return-void
.end method

.method public setParamData([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "dataLen"    # I

    .line 33
    if-eqz p1, :cond_46

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_46

    .line 34
    const/4 v0, 0x5

    if-lt p3, v0, :cond_33

    .line 35
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mImageQuality:I

    .line 36
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mEffectiveArea:I

    .line 37
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mOriginal:I

    .line 38
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mStep:I

    .line 39
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mIsTpl:I

    move p2, v0

    .line 41
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    :cond_33
    const/4 v0, 0x7

    if-lt p3, v0, :cond_46

    .line 42
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    .line 43
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    .line 46
    :cond_46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "quality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mImageQuality:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "area:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mEffectiveArea:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "orig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mOriginal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mStep:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "istpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mIsTpl:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "greyavg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "greymax:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mImageQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mEffectiveArea:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mOriginal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mIsTpl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyAvg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mGreyMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/silead/manager/FingerFrrFarEnroll;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 133
    return-void
.end method
