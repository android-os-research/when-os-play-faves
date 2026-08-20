.class public Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;
.super Ljava/lang/Object;
.source "SIPConnectivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apn:Ljava/lang/String;

.field public pcscfAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcscf-address"
    .end annotation
.end field

.field public sipUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-uri"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->apn:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->pcscfAddress:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->sipUri:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 26
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->pcscfAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/SIPConnectivity;->sipUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
