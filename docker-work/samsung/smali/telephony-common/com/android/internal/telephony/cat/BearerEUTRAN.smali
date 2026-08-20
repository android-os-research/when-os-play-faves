.class public Lcom/android/internal/telephony/cat/BearerEUTRAN;
.super Ljava/lang/Object;
.source "BearerEUTRAN.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerEUTRAN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mPdnType:I

.field public blacklist mQci:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/android/internal/telephony/cat/BearerEUTRAN$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerEUTRAN$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerEUTRAN-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerEUTRAN;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump()V
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QCI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PDN Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Bearer E-UTRAN"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setup([BII)V
    .registers 5

    const/4 v0, 0x3

    if-le p2, v0, :cond_7

    .line 32
    aget-byte v0, p1, p3

    iput v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    :cond_7
    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x2

    .line 34
    aget-byte p1, p1, p3

    iput p1, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    return-void
.end method

.method public blacklist writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    if-lez v0, :cond_7

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    :cond_7
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 42
    iget p2, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mQci:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerEUTRAN;->mPdnType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
