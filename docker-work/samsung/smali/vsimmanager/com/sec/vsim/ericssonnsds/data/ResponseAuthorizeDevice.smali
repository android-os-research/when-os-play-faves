.class public Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseAuthorizeDevice.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public certInfoMetadata:Lcom/sec/vsim/ericssonnsds/data/CertInfoMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cert-info-metadata"
    .end annotation
.end field

.field public certificateChain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "certificate-chain"
    .end annotation
.end field

.field public eapPrefix:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eap-prefix"
    .end annotation
.end field

.field public realm:Ljava/lang/String;

.field public vimsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 16
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->vimsi:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->realm:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->eapPrefix:I

    .line 20
    const-class v0, Lcom/sec/vsim/ericssonnsds/data/CertInfoMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/vsim/ericssonnsds/data/CertInfoMetadata;

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->certInfoMetadata:Lcom/sec/vsim/ericssonnsds/data/CertInfoMetadata;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->certificateChain:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 31
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->vimsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->eapPrefix:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->certInfoMetadata:Lcom/sec/vsim/ericssonnsds/data/CertInfoMetadata;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseAuthorizeDevice;->certificateChain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
