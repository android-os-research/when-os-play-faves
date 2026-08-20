.class public Lcom/android/internal/telephony/cat/ChannelStatus;
.super Ljava/lang/Object;
.source "ChannelStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/ChannelStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist CS:I

.field public blacklist additionalInfo:I

.field public blacklist channelIdentifier:I

.field public blacklist serverModeUICC:I

.field public blacklist serverTerminalTCP:I

.field public blacklist serverTerminalUDP:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/ChannelStatus$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ChannelStatus$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/ChannelStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->channelIdentifier:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->CS:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->serverModeUICC:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->serverTerminalTCP:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->serverTerminalUDP:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->additionalInfo:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/ChannelStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(Landroid/os/Parcel;)V

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

    .line 38
    iget p2, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->channelIdentifier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->CS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->serverModeUICC:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->serverTerminalTCP:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget p2, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->serverTerminalUDP:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->additionalInfo:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
