.class public Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;
.super Ljava/lang/Object;
.source "ServiceInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configParameters:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config-parameters"
    .end annotation
.end field

.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end-time"
    .end annotation
.end field

.field public expirationTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration-time"
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friendly-name"
    .end annotation
.end field

.field public isOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is-owner"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;

.field public provisioningParameters:Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provisioning-parameters"
    .end annotation
.end field

.field public serviceInstanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instance-id"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->serviceName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->serviceInstanceId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 27
    .local v0, "isOwnerVal":B
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    move-object v2, v1

    goto :goto_22

    :cond_19
    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_22
    iput-object v2, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->isOwner:Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->endTime:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_31

    goto :goto_39

    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_39
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->msisdn:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->friendlyName:Ljava/lang/String;

    .line 32
    const-class v1, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->provisioningParameters:Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->configParameters:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->serviceInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->isOwner:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1b

    .line 48
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    :goto_1b
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    if-nez v0, :cond_29

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_36

    .line 54
    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    :goto_36
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->provisioningParameters:Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceInstance;->configParameters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
