.class public Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
.super Ljava/lang/Object;
.source "GeneralNotify.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/attsoftphone/data/GeneralNotify;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mReason:Ljava/lang/String;

.field public mRequestId:I

.field public mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify$1;

    invoke-direct {v0}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "success"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mRequestId:I

    .line 13
    iput-boolean p2, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mSuccess:Z

    .line 14
    iput-object p3, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mReason:Ljava/lang/String;

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mRequestId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mSuccess:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mReason:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 30
    iget v0, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mSuccess:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    return-void
.end method
