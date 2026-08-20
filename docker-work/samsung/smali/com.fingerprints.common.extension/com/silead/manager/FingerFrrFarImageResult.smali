.class public final Lcom/silead/manager/FingerFrrFarImageResult;
.super Ljava/lang/Object;
.source "FingerFrrFarImageResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerFrrFarImageResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMG_TYPE_AUTH:I = 0x0

.field private static final IMG_TYPE_CAL:I = 0x2

.field private static final IMG_TYPE_TPL:I = 0x1


# instance fields
.field private mErrCode:I

.field private mIndex:I

.field private mResult:I

.field private mTime:I

.field private mTime2:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/silead/manager/FingerFrrFarImageResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerFrrFarImageResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerFrrFarImageResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7
    .param p1, "err"    # I
    .param p2, "type"    # I
    .param p3, "result"    # I
    .param p4, "index"    # I
    .param p5, "time1"    # I
    .param p6, "time2"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mErrCode:I

    .line 24
    iput p2, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    .line 25
    iput p3, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mResult:I

    .line 26
    iput p4, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mIndex:I

    .line 27
    iput p5, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime:I

    .line 28
    iput p6, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime2:I

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

    iput v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mErrCode:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mResult:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mIndex:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime2:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerFrrFarImageResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerFrrFarImageResult$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerFrrFarImageResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerFrrFarImageResult;
    .registers 18
    .param p0, "result"    # [B

    .line 108
    move-object/from16 v0, p0

    const/4 v1, -0x2

    .line 109
    .local v1, "err":I
    const/4 v2, 0x0

    .line 110
    .local v2, "rlt":I
    const/4 v3, 0x0

    .line 111
    .local v3, "offset":I
    const/4 v4, 0x0

    .line 112
    .local v4, "type":I
    const/4 v5, 0x0

    .line 113
    .local v5, "index":I
    const/4 v6, 0x0

    .line 114
    .local v6, "time1":I
    const/4 v7, 0x0

    .line 116
    .local v7, "time2":I
    if-eqz v0, :cond_c3

    array-length v8, v0

    const/4 v9, 0x4

    if-lt v8, v9, :cond_c3

    .line 117
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "offset":I
    .local v8, "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x18

    .line 118
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v1, v8

    .line 119
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    .line 120
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v1, v8

    .line 122
    if-nez v1, :cond_c3

    .line 123
    array-length v8, v0

    add-int/lit8 v9, v3, 0x6

    if-lt v8, v9, :cond_c2

    .line 124
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 125
    .end local v5    # "index":I
    .local v3, "index":I
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "offset":I
    .local v5, "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    .line 126
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    .line 127
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    .line 128
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, v0, v5

    and-int/lit16 v4, v5, 0xff

    .line 129
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v2, v8, 0xff

    .line 130
    array-length v8, v0

    add-int/lit8 v9, v5, 0x4

    if-lt v8, v9, :cond_8f

    .line 131
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 132
    .end local v6    # "time1":I
    .local v5, "time1":I
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "offset":I
    .local v6, "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    .line 133
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 134
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    .line 136
    .local v5, "offset":I
    .local v6, "time1":I
    :cond_8f
    array-length v8, v0

    add-int/lit8 v9, v5, 0x4

    if-lt v8, v9, :cond_bc

    .line 137
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 138
    .end local v7    # "time2":I
    .local v5, "time2":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .local v7, "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    .line 139
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    .line 140
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    move/from16 v16, v5

    move v5, v3

    move v3, v7

    move/from16 v7, v16

    goto :goto_c3

    .line 136
    .local v5, "offset":I
    .local v7, "time2":I
    :cond_bc
    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    goto :goto_c3

    .line 143
    .local v3, "offset":I
    .local v5, "index":I
    :cond_c2
    const/4 v1, -0x2

    .line 148
    :cond_c3
    :goto_c3
    new-instance v15, Lcom/silead/manager/FingerFrrFarImageResult;

    move-object v8, v15

    move v9, v1

    move v10, v4

    move v11, v2

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/silead/manager/FingerFrrFarImageResult;-><init>(IIIIII)V

    return-object v15
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mErrCode:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mIndex:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mResult:I

    return v0
.end method

.method public getTime()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime:I

    return v0
.end method

.method public getTime2()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime2:I

    return v0
.end method

.method public isAuth()Z
    .registers 2

    .line 53
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCalibrate()Z
    .registers 3

    .line 49
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTpl()Z
    .registers 3

    .line 45
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "time2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/silead/manager/FingerFrrFarImageResult;->mTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
