.class Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters$1;
.super Ljava/lang/Object;
.source "ProvisioningParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    invoke-direct {v0, p1}, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;
    .registers 3
    .param p1, "size"    # I

    .line 36
    new-array v0, p1, [Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters$1;->newArray(I)[Lcom/sec/vsim/ericssonnsds/data/ProvisioningParameters;

    move-result-object p1

    return-object p1
.end method
