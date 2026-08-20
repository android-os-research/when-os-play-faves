.class public Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
.super Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
.source "SupplementaryServiceNotify.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCallForwardingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify$1;

    invoke-direct {v0}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "success"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "success"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 20
    iput-object p4, p0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 21
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "success"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p4, "info":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 26
    iput-object p4, p0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallForwardingInfos:Ljava/util/List;

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(Landroid/os/Parcel;)V

    .line 31
    const-class v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallForwardingInfos:Ljava/util/List;

    .line 33
    const-class v1, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 43
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallForwardingInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 46
    return-void
.end method
