.class public Lcom/android/internal/telephony/cat/BearerDescription;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

.field public blacklist bearerDefault:Z

.field public blacklist bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

.field public blacklist bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

.field public blacklist bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

.field public blacklist bearerType:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-byte v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 31
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    .line 35
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-byte v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 16
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 17
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    .line 18
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    .line 19
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/BearerCSD;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/BearerGPRS;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/BearerEUTRAN;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/BearerNGRAN;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean p1, v1, v0

    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDescription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 54
    iget-byte p2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-object p2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget-object p2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object p2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object p2, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 60
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    aput-boolean p0, p2, v0

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
