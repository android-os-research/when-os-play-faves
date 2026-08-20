.class public Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseManageService.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public instanceToken:Lcom/sec/vsim/ericssonnsds/data/InstanceToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instance-token"
    .end annotation
.end field

.field public serviceInstance:Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instance"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 14
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;->serviceInstance:Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;

    .line 15
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/InstanceToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/InstanceToken;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;->instanceToken:Lcom/sec/vsim/ericssonnsds/data/InstanceToken;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 25
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;->serviceInstance:Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageService;->instanceToken:Lcom/sec/vsim/ericssonnsds/data/InstanceToken;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
