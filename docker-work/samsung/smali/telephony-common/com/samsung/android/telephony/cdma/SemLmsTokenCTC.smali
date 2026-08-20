.class public final Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
.super Ljava/lang/Object;
.source "SemLmsTokenCTC.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LMS_STATUS_COMPLETE:I = 0x0

.field public static final blacklist LMS_STATUS_FIRST_DISPLAY_TIMEOUT:I = 0x1

.field public static final blacklist LMS_STATUS_MAXIMAL_CONNECTION_TIMEOUT:I = 0x2


# instance fields
.field public final whitelist address:Ljava/lang/String;

.field public final blacklist format:Ljava/lang/String;

.field public final blacklist msgCount:I

.field public final whitelist refNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;

    invoke-direct {v0}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;-><init>()V

    sput-object v0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 64
    iget v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 65
    iget v0, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iput v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    .line 66
    iget-object p1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 55
    iput p3, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    .line 56
    iput-object p4, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 86
    :cond_a
    check-cast p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    .line 87
    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    iget v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    if-ne v1, v3, :cond_29

    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    iget v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    if-ne v1, v3, :cond_29

    iget-object v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    if-ne v1, v3, :cond_29

    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 100
    iget v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 101
    iget v0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 102
    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "<address=%s; refNumber=%d, msgCount=%d, format=%s>"

    .line 111
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 130
    iget-object p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->refNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget p2, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->msgCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
