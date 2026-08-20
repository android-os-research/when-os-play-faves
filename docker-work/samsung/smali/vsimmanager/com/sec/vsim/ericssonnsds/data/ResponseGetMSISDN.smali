.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseGetMSISDN.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public msisdn:Ljava/lang/String;

.field public serviceFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-fingerprint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 29
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
