.class public Lcom/android/internal/telephony/cat/TransportLevel;
.super Ljava/lang/Object;
.source "TransportLevel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/TransportLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist portNumber:I

.field public blacklist transportProtocol:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/TransportLevel$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TransportLevel$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/TransportLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    .line 16
    iput v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    .line 16
    iput v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/TransportLevel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/TransportLevel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isClient()Z
    .registers 2

    .line 49
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v0, 0x3

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public blacklist isLocal()Z
    .registers 2

    .line 52
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public blacklist isRemoteClient()Z
    .registers 3

    .line 62
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method public blacklist isServer()Z
    .registers 2

    .line 46
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public blacklist isTCPRemoteClient()Z
    .registers 2

    .line 56
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public blacklist isUDPRemoteClient()Z
    .registers 2

    .line 59
    iget-byte p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 31
    iget-byte p2, p0, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    iget p0, p0, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
