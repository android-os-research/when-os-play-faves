.class public Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseRegisteredDevices.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceInstance:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 14
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    .line 17
    const-class v1, Lcom/sec/vsim/ericssonnsds/data/DeviceInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_1e

    .line 19
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    .line 21
    :goto_1e
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
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_15

    .line 34
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseRegisteredDevices;->deviceInstance:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 37
    :goto_15
    return-void
.end method
