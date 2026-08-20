.class public final Lcom/silead/manager/FingerSpiResult;
.super Ljava/lang/Object;
.source "FingerSpiResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerSpiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChipId:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/silead/manager/FingerSpiResult$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerSpiResult$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerSpiResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerSpiResult;->mChipId:Ljava/lang/CharSequence;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerSpiResult$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerSpiResult$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerSpiResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "chipid"    # Ljava/lang/CharSequence;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/silead/manager/FingerSpiResult;->mChipId:Ljava/lang/CharSequence;

    .line 17
    return-void
.end method

.method private static getDefaultChipId()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "unknow"

    return-object v0
.end method

.method public static parse([B)Lcom/silead/manager/FingerSpiResult;
    .registers 8
    .param p0, "result"    # [B

    .line 57
    invoke-static {}, Lcom/silead/manager/FingerSpiResult;->getDefaultChipId()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "strChipId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 59
    .local v1, "err":I
    const/4 v2, 0x0

    .line 61
    .local v2, "offset":I
    if-eqz p0, :cond_48

    array-length v3, p0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_48

    .line 62
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 63
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    .line 64
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 65
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 67
    if-nez v1, :cond_48

    .line 68
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x2

    array-length v4, p0

    if-gt v3, v4, :cond_48

    .line 70
    :try_start_38
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    const-string v6, "UTF-8"

    invoke-direct {v3, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_45} :catch_47

    move-object v0, v3

    .line 72
    goto :goto_48

    .line 71
    :catch_47
    move-exception v3

    .line 77
    :cond_48
    :goto_48
    new-instance v3, Lcom/silead/manager/FingerSpiResult;

    invoke-direct {v3, v0}, Lcom/silead/manager/FingerSpiResult;-><init>(Ljava/lang/CharSequence;)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getChipId()Ljava/lang/CharSequence;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/silead/manager/FingerSpiResult;->mChipId:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "chipid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/silead/manager/FingerSpiResult;->mChipId:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 32
    iget-object v0, p0, Lcom/silead/manager/FingerSpiResult;->mChipId:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    return-void
.end method
