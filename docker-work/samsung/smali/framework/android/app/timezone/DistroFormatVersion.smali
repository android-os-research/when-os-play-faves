.class public final Landroid/app/timezone/DistroFormatVersion;
.super Ljava/lang/Object;
.source "DistroFormatVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/DistroFormatVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/app/timezone/DistroFormatVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroFormatVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroFormatVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "major"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 46
    const-string/jumbo v0, "minor"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 92
    return v0

    .line 94
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 98
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/timezone/DistroFormatVersion;

    .line 100
    .local v2, "that":Landroid/app/timezone/DistroFormatVersion;
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v4, v2, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-eq v3, v4, :cond_1c

    .line 101
    return v1

    .line 103
    :cond_1c
    iget v3, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v4, v2, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    .line 95
    .end local v2    # "that":Landroid/app/timezone/DistroFormatVersion;
    :cond_25
    :goto_25
    return v1
.end method

.method public blacklist getMajorVersion()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    return v0
.end method

.method public blacklist getMinorVersion()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 108
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 109
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    add-int/2addr v1, v2

    .line 110
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist supports(Landroid/app/timezone/DistroFormatVersion;)Z
    .registers 4
    .param p1, "distroFormatVersion"    # Landroid/app/timezone/DistroFormatVersion;

    .line 85
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v1, p1, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget v1, p1, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroFormatVersion{mMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
