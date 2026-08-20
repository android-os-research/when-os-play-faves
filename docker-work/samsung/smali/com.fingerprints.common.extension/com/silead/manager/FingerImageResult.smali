.class public final Lcom/silead/manager/FingerImageResult;
.super Ljava/lang/Object;
.source "FingerImageResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerImageResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrCode:I

.field private mId:I

.field private mResult:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/silead/manager/FingerImageResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerImageResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerImageResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "err"    # I
    .param p2, "id"    # I
    .param p3, "result"    # I
    .param p4, "value"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/silead/manager/FingerImageResult;->mErrCode:I

    .line 17
    iput p2, p0, Lcom/silead/manager/FingerImageResult;->mId:I

    .line 18
    iput p3, p0, Lcom/silead/manager/FingerImageResult;->mResult:I

    .line 19
    iput p4, p0, Lcom/silead/manager/FingerImageResult;->mValue:I

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerImageResult;->mErrCode:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerImageResult;->mId:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerImageResult;->mResult:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerImageResult;->mValue:I

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerImageResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerImageResult$1;

    .line 9
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerImageResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerImageResult;
    .registers 8
    .param p0, "result"    # [B

    .line 77
    const/4 v0, -0x2

    .line 78
    .local v0, "err":I
    const/4 v1, 0x0

    .line 79
    .local v1, "offset":I
    const/4 v2, -0x1

    .line 80
    .local v2, "id":I
    const/4 v3, -0x1

    .line 81
    .local v3, "testResult":I
    const/4 v4, -0x1

    .line 83
    .local v4, "testValue":I
    if-eqz p0, :cond_4d

    array-length v5, p0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4d

    .line 84
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 85
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    .line 86
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 87
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    .line 89
    if-nez v0, :cond_4c

    .line 90
    array-length v5, p0

    add-int/lit8 v6, v1, 0x1

    if-lt v5, v6, :cond_3a

    .line 91
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xff

    move v1, v5

    .line 93
    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    :cond_3a
    array-length v5, p0

    add-int/lit8 v6, v1, 0x2

    if-lt v5, v6, :cond_4d

    .line 94
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v3, v1, 0xff

    .line 95
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    goto :goto_4d

    .line 98
    :cond_4c
    const/4 v4, 0x0

    .line 102
    :cond_4d
    :goto_4d
    new-instance v5, Lcom/silead/manager/FingerImageResult;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/silead/manager/FingerImageResult;-><init>(IIII)V

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mErrCode:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mId:I

    return v0
.end method

.method public getImageValue()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mValue:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mResult:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerImageResult;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerImageResult;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerImageResult;->mResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/silead/manager/FingerImageResult;->mValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/silead/manager/FingerImageResult;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
