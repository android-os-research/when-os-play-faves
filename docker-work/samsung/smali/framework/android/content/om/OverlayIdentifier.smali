.class public Landroid/content/om/OverlayIdentifier;
.super Ljava/lang/Object;
.source "OverlayIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOverlayName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/content/om/OverlayIdentifier$1;

    invoke-direct {v0}, Landroid/content/om/OverlayIdentifier$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 173
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "packageName":Ljava/lang/String;
    :goto_12
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "overlayName":Ljava/lang/String;
    :goto_1b
    iput-object v1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "overlayName"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    return-void
.end method

.method public static blacklist fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .line 79
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    if-ne v2, v1, :cond_16

    .line 81
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    aget-object v2, v0, v3

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 83
    :cond_16
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 128
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 130
    .local v2, "that":Landroid/content/om/OverlayIdentifier;
    iget-object v3, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    .line 132
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 130
    :goto_2b
    return v0

    .line 126
    .end local v2    # "that":Landroid/content/om/OverlayIdentifier;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist getOverlayName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 141
    const/4 v0, 0x1

    .line 142
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 143
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    goto :goto_22

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "flg":B
    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 155
    :cond_8
    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 156
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    :cond_19
    iget-object v1, p0, Landroid/content/om/OverlayIdentifier;->mOverlayName:Ljava/lang/String;

    if-eqz v1, :cond_20

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    :cond_20
    return-void
.end method
