.class Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;
.super Ljava/lang/Object;
.source "VideoSharing.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 223
    invoke-static {}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 221
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .registers 3
    .param p1, "size"    # I

    .line 227
    new-array v0, p1, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 221
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;->newArray(I)[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object p1

    return-object p1
.end method
