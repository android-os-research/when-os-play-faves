.class public Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;
.super Ljava/lang/Object;
.source "RegisteredMSISDN.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultAccount:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default-account"
    .end annotation
.end field

.field public isOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is-owner"
    .end annotation
.end field

.field public lineMetadata:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line-metadata"
    .end annotation
.end field

.field public lineName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line-name"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;

.field public serviceFingerprint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-fingerprint"
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

    .line 53
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->msisdn:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 20
    .local v0, "defaultAccountVal":B
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_15

    move-object v5, v3

    goto :goto_1e

    :cond_15
    if-eqz v0, :cond_19

    move v5, v1

    goto :goto_1a

    :cond_19
    move v5, v2

    :goto_1a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_1e
    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->defaultAccount:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->serviceFingerprint:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 23
    .local v5, "isOwnerVal":B
    if-ne v5, v4, :cond_2d

    goto :goto_35

    :cond_2d
    if-eqz v5, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_35
    iput-object v3, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->isOwner:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->serviceName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->lineName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->lineMetadata:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->defaultAccount:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-nez v0, :cond_e

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_16

    .line 40
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    :goto_16
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->serviceFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->isOwner:Ljava/lang/Boolean;

    if-nez v0, :cond_23

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2b

    .line 46
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    :goto_2b
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->lineName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/RegisteredMSISDN;->lineMetadata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
