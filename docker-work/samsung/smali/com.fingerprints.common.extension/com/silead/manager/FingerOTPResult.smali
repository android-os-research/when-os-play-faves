.class public final Lcom/silead/manager/FingerOTPResult;
.super Ljava/lang/Object;
.source "FingerOTPResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerOTPResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mErrCode:I

.field private mOPTDetail:Ljava/lang/CharSequence;

.field private mOTPInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/silead/manager/FingerOTPResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerOTPResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerOTPResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "err"    # I
    .param p2, "OTPInfoList"    # Ljava/util/ArrayList;
    .param p3, "detail"    # Ljava/lang/CharSequence;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    .line 22
    iput p1, p0, Lcom/silead/manager/FingerOTPResult;->mErrCode:I

    .line 23
    iput-object p2, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    .line 24
    iput-object p3, p0, Lcom/silead/manager/FingerOTPResult;->mOPTDetail:Ljava/lang/CharSequence;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/silead/manager/FingerOTPResult;->mErrCode:I

    .line 29
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOPTDetail:Ljava/lang/CharSequence;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerOTPResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerOTPResult$1;

    .line 16
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerOTPResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse([B)Lcom/silead/manager/FingerOTPResult;
    .registers 9
    .param p0, "result"    # [B

    .line 83
    const/4 v0, -0x2

    .line 84
    .local v0, "err":I
    const/4 v1, 0x0

    .line 85
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 86
    .local v2, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v3, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, ""

    .line 89
    .local v4, "detail":Ljava/lang/CharSequence;
    if-eqz p0, :cond_95

    array-length v5, p0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_95

    .line 90
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 91
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    .line 92
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 93
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    .line 95
    if-nez v0, :cond_95

    .line 96
    array-length v5, p0

    add-int/lit8 v6, v1, 0x1

    if-lt v5, v6, :cond_94

    .line 97
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xff

    .line 98
    array-length v1, p0

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v5

    if-lt v1, v6, :cond_91

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_45
    if-ge v1, v2, :cond_74

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "data":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "offset":I
    .local v7, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 102
    .end local v6    # "data":I
    .local v5, "data":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .local v6, "offset":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    .line 103
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .line 104
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "data":I
    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto :goto_45

    .line 108
    .end local v1    # "i":I
    .end local v6    # "offset":I
    .local v5, "offset":I
    :cond_74
    array-length v1, p0

    add-int/lit8 v6, v5, 0x1

    if-lt v1, v6, :cond_8f

    .line 109
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "offset":I
    .local v1, "offset":I
    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 110
    array-length v5, p0

    add-int v6, v1, v2

    if-lt v5, v6, :cond_95

    .line 112
    :try_start_84
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v1, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_8b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_84 .. :try_end_8b} :catch_8d

    move-object v4, v5

    .line 114
    :goto_8c
    goto :goto_95

    .line 113
    :catch_8d
    move-exception v5

    goto :goto_8c

    .line 108
    .end local v1    # "offset":I
    .restart local v5    # "offset":I
    :cond_8f
    move v1, v5

    goto :goto_95

    .line 118
    :cond_91
    const/4 v0, -0x2

    move v1, v5

    goto :goto_95

    .line 121
    .end local v5    # "offset":I
    .restart local v1    # "offset":I
    :cond_94
    const/4 v0, -0x2

    .line 126
    :cond_95
    :goto_95
    new-instance v5, Lcom/silead/manager/FingerOTPResult;

    invoke-direct {v5, v0, v3, v4}, Lcom/silead/manager/FingerOTPResult;-><init>(ILjava/util/ArrayList;Ljava/lang/CharSequence;)V

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

    .line 34
    iget v0, p0, Lcom/silead/manager/FingerOTPResult;->mErrCode:I

    return v0
.end method

.method public getOTPDetails()Ljava/lang/CharSequence;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOPTDetail:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOTPInfoList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 71
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "0x%08x"

    if-eqz v2, :cond_2d

    .line 72
    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 75
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 77
    :cond_4d
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget v0, p0, Lcom/silead/manager/FingerOTPResult;->mErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOTPInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lcom/silead/manager/FingerOTPResult;->mOPTDetail:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void
.end method
