.class public Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;
.super Ljava/lang/Object;
.source "ProvisioningParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public sipConnectivity:Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-connectivity"
    .end annotation
.end field

.field public sipCredential:Lcom/sec/vsim/ericssonnsds/data/SIPCredential;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-credential"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;->sipConnectivity:Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;

    .line 14
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/SIPCredential;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/SIPCredential;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;->sipCredential:Lcom/sec/vsim/ericssonnsds/data/SIPCredential;

    .line 15
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
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;->sipConnectivity:Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;->sipCredential:Lcom/sec/vsim/ericssonnsds/data/SIPCredential;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
