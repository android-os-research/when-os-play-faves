.class public Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;
.super Ljava/lang/Object;
.source "CallWaitingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo$1;

    invoke-direct {v0}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    .line 11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 24
    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    return-void
.end method
