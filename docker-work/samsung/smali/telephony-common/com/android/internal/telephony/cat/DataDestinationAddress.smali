.class public Lcom/android/internal/telephony/cat/DataDestinationAddress;
.super Ljava/lang/Object;
.source "DataDestinationAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/DataDestinationAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist address:[B

.field public blacklist addressType:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/DataDestinationAddress$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DataDestinationAddress$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    goto :goto_1b

    .line 26
    :cond_14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_1b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/DataDestinationAddress-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DataDestinationAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 36
    iget-byte p2, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-object p2, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    if-nez p2, :cond_e

    const/4 p0, -0x1

    .line 38
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 41
    :cond_e
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object p0, p0, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
