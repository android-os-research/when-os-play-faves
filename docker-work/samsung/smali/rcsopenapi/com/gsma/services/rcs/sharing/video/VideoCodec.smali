.class public Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.super Ljava/lang/Object;
.source "VideoCodec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/VideoCodec$Encoding;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitRate:I

.field private final clockRate:I

.field private final encoding:Ljava/lang/String;

.field private final frameRate:I

.field private final height:I

.field private final parameters:Ljava/lang/String;

.field private final payload:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .registers 9
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "payload"    # I
    .param p3, "clockRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "bitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "parameters"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    .line 110
    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    .line 111
    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    .line 112
    iput p4, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    .line 113
    iput p5, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    .line 114
    iput-object p8, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    .line 115
    iput p6, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    .line 116
    iput p7, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getBitRate()I
    .registers 2

    .line 205
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    return v0
.end method

.method public getClockRate()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    return v0
.end method

.method public getParameters()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->payload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->clockRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->frameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->bitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->parameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
