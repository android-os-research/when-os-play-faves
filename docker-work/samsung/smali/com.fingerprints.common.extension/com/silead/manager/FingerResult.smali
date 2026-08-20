.class public final Lcom/silead/manager/FingerResult;
.super Ljava/lang/Object;
.source "FingerResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/silead/manager/FingerResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "err"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/silead/manager/FingerResult;->mErrCode:I

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerResult;->mErrCode:I

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerResult$1;

    .line 10
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerResult;
    .registers 5
    .param p0, "result"    # [B

    .line 51
    const/4 v0, -0x2

    .line 52
    .local v0, "err":I
    const/4 v1, 0x0

    .line 54
    .local v1, "offset":I
    if-eqz p0, :cond_29

    array-length v2, p0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_29

    .line 55
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 56
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 57
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 58
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 61
    :cond_29
    new-instance v2, Lcom/silead/manager/FingerResult;

    invoke-direct {v2, v0}, Lcom/silead/manager/FingerResult;-><init>(I)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/silead/manager/FingerResult;->mErrCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/silead/manager/FingerResult;->mErrCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 30
    iget v0, p0, Lcom/silead/manager/FingerResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
