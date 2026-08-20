.class Lcom/gsma/services/rcs/sharing/image/ImageSharing$State$1;
.super Ljava/lang/Object;
.source "ImageSharing.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 123
    invoke-static {}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->values()[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 124
    .local v3, "state":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->-$$Nest$fgetmCode(Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_15

    .line 125
    return-object v3

    .line 123
    .end local v3    # "state":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 128
    :cond_18
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    .registers 3
    .param p1, "size"    # I

    .line 117
    new-array v0, p1, [Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$State$1;->newArray(I)[Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object p1

    return-object p1
.end method
