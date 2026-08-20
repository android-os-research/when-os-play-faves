.class public Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;
.super Ljava/lang/Object;
.source "DeviceInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-id"
    .end annotation
.end field

.field public deviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-name"
    .end annotation
.end field

.field public deviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-type"
    .end annotation
.end field

.field public serviceInstances:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instances"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->deviceId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->deviceName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->deviceType:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    .line 22
    const-class v1, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_30

    .line 24
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    .line 26
    :goto_30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_21

    .line 41
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;->serviceInstances:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 44
    :goto_21
    return-void
.end method
