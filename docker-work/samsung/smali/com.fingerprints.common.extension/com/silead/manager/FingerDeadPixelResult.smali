.class public final Lcom/silead/manager/FingerDeadPixelResult;
.super Ljava/lang/Object;
.source "FingerDeadPixelResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerDeadPixelResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBadlineNum:I

.field private mDeadPixelNum:I

.field private mErrCode:I

.field private mResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/silead/manager/FingerDeadPixelResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerDeadPixelResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerDeadPixelResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "err"    # I
    .param p2, "result"    # I
    .param p3, "deadPixelnum"    # I
    .param p4, "badlinenum"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/silead/manager/FingerDeadPixelResult;->mErrCode:I

    .line 18
    iput p2, p0, Lcom/silead/manager/FingerDeadPixelResult;->mResult:I

    .line 19
    iput p3, p0, Lcom/silead/manager/FingerDeadPixelResult;->mDeadPixelNum:I

    .line 20
    iput p4, p0, Lcom/silead/manager/FingerDeadPixelResult;->mBadlineNum:I

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mErrCode:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mResult:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mDeadPixelNum:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mBadlineNum:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerDeadPixelResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerDeadPixelResult$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerDeadPixelResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerDeadPixelResult;
    .registers 8
    .param p0, "result"    # [B

    .line 78
    const/4 v0, -0x2

    .line 79
    .local v0, "err":I
    const/4 v1, 0x0

    .line 80
    .local v1, "rlt":I
    const/4 v2, 0x0

    .line 81
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 82
    .local v3, "deadpixelnum":I
    const/4 v4, 0x0

    .line 84
    .local v4, "badlinenum":I
    if-eqz p0, :cond_7e

    array-length v5, p0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_7e

    .line 85
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v0, v2, 0x18

    .line 86
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    .line 87
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 88
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    .line 90
    if-nez v0, :cond_7e

    .line 91
    array-length v5, p0

    add-int/lit8 v6, v2, 0x9

    if-lt v5, v6, :cond_7d

    .line 92
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    .line 93
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x18

    .line 94
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    .line 95
    .end local v3    # "deadpixelnum":I
    .local v2, "deadpixelnum":I
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "offset":I
    .local v3, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 96
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v2

    .line 97
    .end local v2    # "deadpixelnum":I
    .local v3, "deadpixelnum":I
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "offset":I
    .local v2, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v4, v5, 0x18

    .line 98
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    .line 99
    .end local v4    # "badlinenum":I
    .local v2, "badlinenum":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .local v4, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 100
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v2

    move v2, v5

    .end local v2    # "badlinenum":I
    .local v4, "badlinenum":I
    goto :goto_7e

    .line 102
    .end local v5    # "offset":I
    .local v2, "offset":I
    :cond_7d
    const/4 v0, -0x2

    .line 107
    :cond_7e
    :goto_7e
    new-instance v5, Lcom/silead/manager/FingerDeadPixelResult;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/silead/manager/FingerDeadPixelResult;-><init>(IIII)V

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getBadlineNum()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mBadlineNum:I

    return v0
.end method

.method public getDeadPixelNum()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mDeadPixelNum:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mErrCode:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mResult:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerDeadPixelResult;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerDeadPixelResult;->mResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "deadpix:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerDeadPixelResult;->mDeadPixelNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "badline:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerDeadPixelResult;->mBadlineNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 51
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mDeadPixelNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/silead/manager/FingerDeadPixelResult;->mBadlineNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
