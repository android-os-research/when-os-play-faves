.class public final Lcom/silead/manager/FingerVersion;
.super Ljava/lang/Object;
.source "FingerVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/silead/manager/FingerVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlgoVersion:Ljava/lang/CharSequence;

.field private mDevVersion:Ljava/lang/CharSequence;

.field private mHalVersion:Ljava/lang/CharSequence;

.field private mTaVersion:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/silead/manager/FingerVersion$1;

    invoke-direct {v0}, Lcom/silead/manager/FingerVersion$1;-><init>()V

    sput-object v0, Lcom/silead/manager/FingerVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerVersion;->mHalVersion:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerVersion;->mDevVersion:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerVersion;->mAlgoVersion:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/silead/manager/FingerVersion;->mTaVersion:Ljava/lang/CharSequence;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/silead/manager/FingerVersion$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/silead/manager/FingerVersion$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/silead/manager/FingerVersion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "hal"    # Ljava/lang/CharSequence;
    .param p2, "dev"    # Ljava/lang/CharSequence;
    .param p3, "algo"    # Ljava/lang/CharSequence;
    .param p4, "ta"    # Ljava/lang/CharSequence;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/silead/manager/FingerVersion;->mHalVersion:Ljava/lang/CharSequence;

    .line 20
    iput-object p2, p0, Lcom/silead/manager/FingerVersion;->mDevVersion:Ljava/lang/CharSequence;

    .line 21
    iput-object p3, p0, Lcom/silead/manager/FingerVersion;->mAlgoVersion:Ljava/lang/CharSequence;

    .line 22
    iput-object p4, p0, Lcom/silead/manager/FingerVersion;->mTaVersion:Ljava/lang/CharSequence;

    .line 23
    return-void
.end method

.method private static getDefaultVersion()Ljava/lang/String;
    .registers 1

    .line 80
    const-string v0, "unknow"

    return-object v0
.end method

.method private static getVersionValue([BI)Ljava/lang/String;
    .registers 6
    .param p0, "result"    # [B
    .param p1, "offset"    # I

    .line 84
    if-eqz p0, :cond_1e

    array-length v0, p0

    if-le v0, p1, :cond_1e

    array-length v0, p0

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_1e

    .line 86
    :try_start_f
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    const-string v3, "UTF-8"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1c} :catch_1d

    return-object v0

    .line 87
    :catch_1d
    move-exception v0

    .line 90
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parse([B)Lcom/silead/manager/FingerVersion;
    .registers 11
    .param p0, "result"    # [B

    .line 94
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "strVersion":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, "i":I
    const/4 v2, 0x4

    .line 97
    .local v2, "count":I
    const/4 v3, 0x0

    .line 98
    .local v3, "err":I
    const/4 v4, 0x0

    .line 100
    .local v4, "offset":I
    const/4 v5, 0x1

    if-eqz p0, :cond_4a

    array-length v6, p0

    const/4 v7, 0x4

    if-lt v6, v7, :cond_4a

    .line 101
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "offset":I
    .local v6, "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v3, v4, 0x18

    .line 102
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    .line 103
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 104
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    .line 106
    if-nez v3, :cond_4a

    .line 107
    const/4 v1, 0x0

    :goto_34
    if-ge v1, v2, :cond_4a

    .line 108
    invoke-static {p0, v4}, Lcom/silead/manager/FingerVersion;->getVersionValue([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 109
    aget-object v6, v0, v1

    if-nez v6, :cond_41

    .line 110
    goto :goto_4a

    .line 112
    :cond_41
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 117
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v2, :cond_5a

    .line 118
    aget-object v6, v0, v1

    if-nez v6, :cond_57

    .line 119
    invoke-static {}, Lcom/silead/manager/FingerVersion;->getDefaultVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 117
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 123
    :cond_5a
    new-instance v6, Lcom/silead/manager/FingerVersion;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    aget-object v5, v0, v5

    const/4 v8, 0x2

    aget-object v8, v0, v8

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-direct {v6, v7, v5, v8, v9}, Lcom/silead/manager/FingerVersion;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getAlgoVersion()Ljava/lang/CharSequence;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mAlgoVersion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDevVersion()Ljava/lang/CharSequence;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mDevVersion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHalVersion()Ljava/lang/CharSequence;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mHalVersion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTaVersion()Ljava/lang/CharSequence;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mTaVersion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "hal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/silead/manager/FingerVersion;->mHalVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "dev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/silead/manager/FingerVersion;->mDevVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "algo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/silead/manager/FingerVersion;->mAlgoVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "ta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/silead/manager/FingerVersion;->mTaVersion:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mHalVersion:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mDevVersion:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mAlgoVersion:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/silead/manager/FingerVersion;->mTaVersion:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
