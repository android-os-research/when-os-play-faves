.class public Lcom/android/internal/telephony/cat/BearerCSD;
.super Ljava/lang/Object;
.source "BearerCSD.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerCSD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bearerService:I

.field public blacklist connectionElement:I

.field public blacklist dataRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/BearerCSD$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerCSD$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerCSD;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerCSD;->dataRate:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerCSD;->bearerService:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/BearerCSD;->connectionElement:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerCSD-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerCSD;-><init>(Landroid/os/Parcel;)V

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

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerCSD;->dataRate:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerCSD;->bearerService:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerCSD;->connectionElement:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 35
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerCSD;->dataRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerCSD;->bearerService:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerCSD;->connectionElement:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
