.class public Lcom/android/internal/telephony/cat/BearerNGRAN;
.super Ljava/lang/Object;
.source "BearerNGRAN.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerNGRAN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mPduIei:I

.field public blacklist mPduSessionType:I

.field public blacklist mPduValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/BearerNGRAN$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerNGRAN$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerNGRAN;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduSessionType:I

    .line 21
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduIei:I

    .line 22
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduValue:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduSessionType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerNGRAN-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerNGRAN;-><init>(Landroid/os/Parcel;)V

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

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PDU IEI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduIei:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PDU Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Bearer NG-RAN"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setupPduSessionType(B)V
    .registers 3

    .line 31
    iput p1, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduSessionType:I

    and-int/lit16 v0, p1, 0xf0

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduIei:I

    and-int/lit8 p1, p1, 0xf

    .line 33
    iput p1, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduValue:I

    return-void
.end method

.method public blacklist writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V
    .registers 2

    .line 45
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduSessionType:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 41
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerNGRAN;->mPduSessionType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
