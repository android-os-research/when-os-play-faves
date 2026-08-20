.class public final Lcom/silead/manager/FingerSpeedResult;
.super Ljava/lang/Object;
.source "FingerSpeedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerSpeedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthTime:I

.field private mCaptureTime:I

.field private mEffectiveArea:I

.field private mErrCode:I

.field private mImageQuality:I

.field private mReduceBgNoiseTime:I

.field private mResult:I

.field private mTplUpdTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/silead/manager/FingerSpeedResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerSpeedResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerSpeedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .registers 9
    .param p1, "err"    # I
    .param p2, "result"    # I
    .param p3, "quality"    # I
    .param p4, "area"    # I
    .param p5, "capturetime"    # I
    .param p6, "reducenoisetime"    # I
    .param p7, "authtime"    # I
    .param p8, "tplupdtime"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/silead/manager/FingerSpeedResult;->mErrCode:I

    .line 22
    iput p2, p0, Lcom/silead/manager/FingerSpeedResult;->mResult:I

    .line 23
    iput p3, p0, Lcom/silead/manager/FingerSpeedResult;->mImageQuality:I

    .line 24
    iput p4, p0, Lcom/silead/manager/FingerSpeedResult;->mEffectiveArea:I

    .line 25
    iput p5, p0, Lcom/silead/manager/FingerSpeedResult;->mCaptureTime:I

    .line 26
    iput p6, p0, Lcom/silead/manager/FingerSpeedResult;->mReduceBgNoiseTime:I

    .line 27
    iput p7, p0, Lcom/silead/manager/FingerSpeedResult;->mAuthTime:I

    .line 28
    iput p8, p0, Lcom/silead/manager/FingerSpeedResult;->mTplUpdTime:I

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mErrCode:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mResult:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mImageQuality:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mEffectiveArea:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mCaptureTime:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mReduceBgNoiseTime:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mAuthTime:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerSpeedResult;->mTplUpdTime:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerSpeedResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerSpeedResult$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerSpeedResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerSpeedResult;
    .registers 21
    .param p0, "result"    # [B

    .line 114
    move-object/from16 v0, p0

    const/4 v1, -0x2

    .line 115
    .local v1, "err":I
    const/4 v2, 0x0

    .line 116
    .local v2, "rlt":I
    const/4 v3, 0x0

    .line 117
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 118
    .local v4, "qualityscore":I
    const/4 v5, 0x0

    .line 119
    .local v5, "converarea":I
    const/4 v6, 0x0

    .line 120
    .local v6, "capture_time":I
    const/4 v7, 0x0

    .line 121
    .local v7, "reduce_noise_time":I
    const/4 v8, 0x0

    .line 122
    .local v8, "auth_time":I
    const/4 v9, 0x0

    .line 124
    .local v9, "tpl_upd_time":I
    if-eqz v0, :cond_d2

    array-length v10, v0

    const/4 v11, 0x4

    if-lt v10, v11, :cond_d2

    .line 125
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .local v10, "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x18

    .line 126
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v1, v10

    .line 127
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    .line 128
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v1, v10

    .line 130
    if-nez v1, :cond_d2

    .line 131
    array-length v10, v0

    add-int/lit8 v11, v3, 0x13

    if-lt v10, v11, :cond_d1

    .line 132
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v2, v3, 0xff

    .line 133
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v4, v10, 0xff

    .line 134
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v5, v3, 0xff

    .line 135
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v6, v10, 0x18

    .line 136
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v6

    .line 137
    .end local v6    # "capture_time":I
    .local v3, "capture_time":I
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "offset":I
    .local v6, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v3, v10

    .line 138
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v3

    .line 139
    .end local v3    # "capture_time":I
    .local v6, "capture_time":I
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .local v3, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v7, v10, 0x18

    .line 140
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v7

    .line 141
    .end local v7    # "reduce_noise_time":I
    .local v3, "reduce_noise_time":I
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "offset":I
    .local v7, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v3, v10

    .line 142
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v3

    .line 143
    .end local v3    # "reduce_noise_time":I
    .local v7, "reduce_noise_time":I
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .local v3, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v8, v10, 0x18

    .line 144
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    .line 145
    .end local v8    # "auth_time":I
    .local v3, "auth_time":I
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "offset":I
    .local v8, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v3, v10

    .line 146
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v3

    .line 147
    .end local v3    # "auth_time":I
    .local v8, "auth_time":I
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "offset":I
    .local v3, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v9, v10, 0x18

    .line 148
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v9

    .line 149
    .end local v9    # "tpl_upd_time":I
    .local v3, "tpl_upd_time":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "offset":I
    .local v9, "offset":I
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v3, v10

    .line 150
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v3

    move v3, v10

    .end local v3    # "tpl_upd_time":I
    .local v9, "tpl_upd_time":I
    goto :goto_d2

    .line 152
    .end local v10    # "offset":I
    .local v3, "offset":I
    :cond_d1
    const/4 v1, -0x2

    .line 157
    :cond_d2
    :goto_d2
    new-instance v19, Lcom/silead/manager/FingerSpeedResult;

    move-object/from16 v10, v19

    move v11, v1

    move v12, v2

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/silead/manager/FingerSpeedResult;-><init>(IIIIIIII)V

    return-object v19
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthTime()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mAuthTime:I

    return v0
.end method

.method public getCaptureTime()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mCaptureTime:I

    return v0
.end method

.method public getEffectiveArea()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mEffectiveArea:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mErrCode:I

    return v0
.end method

.method public getImageQuality()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mImageQuality:I

    return v0
.end method

.method public getReduceBgNoiseTime()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mReduceBgNoiseTime:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mResult:I

    return v0
.end method

.method public getTplUpdTime()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mTplUpdTime:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerSpeedResult;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerSpeedResult;->mResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "quality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerSpeedResult;->mImageQuality:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "area:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerSpeedResult;->mEffectiveArea:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "captureTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerSpeedResult;->mCaptureTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "ReduceBgNoiseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerSpeedResult;->mReduceBgNoiseTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "authTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerSpeedResult;->mAuthTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "tplUpdTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerSpeedResult;->mTplUpdTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mImageQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mEffectiveArea:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mCaptureTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mReduceBgNoiseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mAuthTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/silead/manager/FingerSpeedResult;->mTplUpdTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
