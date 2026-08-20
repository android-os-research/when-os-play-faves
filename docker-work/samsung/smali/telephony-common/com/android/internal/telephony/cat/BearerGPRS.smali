.class public Lcom/android/internal/telephony/cat/BearerGPRS;
.super Ljava/lang/Object;
.source "BearerGPRS.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerGPRS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist delayClass:I

.field public blacklist meanThroughputClass:I

.field public blacklist packetDataProtocolType:I

.field public blacklist peakThroughputClass:I

.field public blacklist precedenceClass:I

.field public blacklist reliabilityClass:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cat/BearerGPRS$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerGPRS$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerGPRS;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->precedenceClass:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->delayClass:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->reliabilityClass:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->peakThroughputClass:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->meanThroughputClass:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->packetDataProtocolType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerGPRS-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerGPRS;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    .line 52
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->precedenceClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->delayClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->reliabilityClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->peakThroughputClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->meanThroughputClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->packetDataProtocolType:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 42
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->precedenceClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->delayClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->reliabilityClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->peakThroughputClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->meanThroughputClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerGPRS;->packetDataProtocolType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
