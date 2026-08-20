.class public Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
.super Ljava/lang/Object;
.source "CallForwardingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActive:Z

.field public mForwardCondition:I

.field public mForwardNumber:Ljava/lang/String;

.field public mNoReplyTimer:I

.field public mRetained:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo$1;

    invoke-direct {v0}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mNoReplyTimer:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(ZZIILjava/lang/String;)V
    .registers 6
    .param p1, "active"    # Z
    .param p2, "retained"    # Z
    .param p3, "noReplyTimer"    # I
    .param p4, "condition"    # I
    .param p5, "number"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    .line 15
    iput-boolean p2, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    .line 16
    iput p3, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mNoReplyTimer:I

    .line 17
    iput p4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 18
    iput-object p5, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mNoReplyTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
