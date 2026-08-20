.class Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;
.super Ljava/lang/Object;
.source "VideoCodec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/sharing/video/VideoCodec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 160
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoCodec;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .registers 3
    .param p1, "size"    # I

    .line 164
    new-array v0, p1, [Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoCodec$1;->newArray(I)[Lcom/gsma/services/rcs/sharing/video/VideoCodec;

    move-result-object p1

    return-object p1
.end method
