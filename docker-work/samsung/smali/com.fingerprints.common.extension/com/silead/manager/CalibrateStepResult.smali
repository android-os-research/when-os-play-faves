.class public final Lcom/silead/manager/CalibrateStepResult;
.super Ljava/lang/Object;
.source "CalibrateStepResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/CalibrateStepResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mData:[I

.field private mErrCode:I

.field private mStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/silead/manager/CalibrateStepResult$1;

    invoke-direct {v0}, Lcom/silead/manager/CalibrateStepResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/CalibrateStepResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "err"    # I
    .param p2, "step"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/silead/manager/CalibrateStepResult;->mErrCode:I

    .line 18
    iput p2, p0, Lcom/silead/manager/CalibrateStepResult;->mStep:I

    .line 19
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    .line 20
    iput v0, p0, Lcom/silead/manager/CalibrateStepResult;->mCount:I

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/CalibrateStepResult;->mErrCode:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/CalibrateStepResult;->mStep:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/CalibrateStepResult;->mCount:I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/CalibrateStepResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/CalibrateStepResult$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/silead/manager/CalibrateStepResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/CalibrateStepResult;
    .registers 7
    .param p0, "result"    # [B

    .line 107
    const/4 v0, -0x2

    .line 108
    .local v0, "err":I
    const/4 v1, 0x0

    .line 109
    .local v1, "offset":I
    const/4 v2, -0x1

    .line 110
    .local v2, "step":I
    const/4 v3, 0x0

    .line 112
    .local v3, "extDataValid":Z
    if-eqz p0, :cond_3d

    array-length v4, p0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3d

    .line 113
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 114
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    .line 115
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 116
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 118
    array-length v4, p0

    add-int/lit8 v5, v1, 0x1

    if-lt v4, v5, :cond_37

    .line 119
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xff

    move v1, v4

    .line 121
    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :cond_37
    array-length v4, p0

    add-int/lit8 v5, v1, 0x1

    if-lt v4, v5, :cond_3d

    .line 122
    const/4 v3, 0x1

    .line 126
    :cond_3d
    new-instance v4, Lcom/silead/manager/CalibrateStepResult;

    invoke-direct {v4, v0, v2}, Lcom/silead/manager/CalibrateStepResult;-><init>(II)V

    .line 127
    .local v4, "rst":Lcom/silead/manager/CalibrateStepResult;
    if-eqz v3, :cond_49

    .line 128
    array-length v5, p0

    sub-int/2addr v5, v1

    invoke-virtual {v4, p0, v1, v5}, Lcom/silead/manager/CalibrateStepResult;->setData([BII)V

    .line 130
    :cond_49
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getDataStr()Ljava/lang/String;
    .registers 6

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Lcom/silead/manager/CalibrateStepResult;->mCount:I

    if-ge v1, v2, :cond_41

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_29

    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 65
    :cond_29
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, ",%d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 68
    .end local v1    # "i":I
    :cond_41
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getErrorCode()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/silead/manager/CalibrateStepResult;->mErrCode:I

    return v0
.end method

.method public getStep()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/silead/manager/CalibrateStepResult;->mStep:I

    return v0
.end method

.method public hasData()Z
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setData([BII)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "dataLen"    # I

    .line 24
    if-eqz p1, :cond_6e

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_6e

    const/4 v0, 0x4

    if-lt p3, v0, :cond_6e

    .line 25
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    .line 26
    .local p2, "count":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    .line 27
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    .line 28
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p2, v0

    .line 29
    if-lez p2, :cond_6d

    array-length v0, p1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_6d

    .line 30
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    .line 31
    iput p2, p0, Lcom/silead/manager/CalibrateStepResult;->mCount:I

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    if-ge v0, p2, :cond_6b

    .line 33
    iget-object v2, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aput v1, v2, v0

    .line 34
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v2, v0

    .line 35
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    aput v1, v2, v0

    .line 36
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    aput v1, v2, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_3a

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :cond_6b
    move p2, v1

    goto :goto_6e

    .line 40
    .end local v0    # "i":I
    .end local p2    # "count":I
    :cond_6d
    move p2, v1

    .end local v1    # "offset":I
    .local p2, "offset":I
    :cond_6e
    :goto_6e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/CalibrateStepResult;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/CalibrateStepResult;->mStep:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/CalibrateStepResult;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Lcom/silead/manager/CalibrateStepResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/silead/manager/CalibrateStepResult;->mStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/silead/manager/CalibrateStepResult;->mData:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 85
    return-void
.end method
