.class public Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
.super Ljava/lang/Object;
.source "OpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannelNumber:I

.field private mSelectResponse:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;-><init>()V

    sput-object v0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3
    .param p1, "channelNumber"    # I
    .param p2, "selectResponse"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mChannelNumber:I

    .line 45
    iput-object p2, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mSelectResponse:[B

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mChannelNumber:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mSelectResponse:[B

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;

    .line 28
    invoke-direct {p0, p1}, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()I
    .registers 2

    .line 54
    iget v0, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mChannelNumber:I

    return v0
.end method

.method public getSelectResponse()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mSelectResponse:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget v0, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 70
    return-void
.end method
