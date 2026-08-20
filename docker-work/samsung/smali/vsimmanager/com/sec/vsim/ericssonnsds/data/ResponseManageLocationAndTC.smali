.class public Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseManageLocationAndTC.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addressId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address-id"
    .end annotation
.end field

.field public aidExpiration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aid-expiration"
    .end annotation
.end field

.field public locationStatus:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location-status"
    .end annotation
.end field

.field public serverData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server-data"
    .end annotation
.end field

.field public serverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server-url"
    .end annotation
.end field

.field public serviceStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-status"
    .end annotation
.end field

.field public tcStatus:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tc-status"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 21
    .local v0, "locationStatusVal":B
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_f

    move-object v5, v4

    goto :goto_18

    :cond_f
    if-eqz v0, :cond_13

    move v5, v1

    goto :goto_14

    :cond_13
    move v5, v2

    :goto_14
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_18
    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 23
    .local v5, "tcStatusVal":B
    if-ne v5, v3, :cond_22

    move-object v1, v4

    goto :goto_2a

    :cond_22
    if-eqz v5, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2a
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_33

    goto :goto_3b

    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3b
    iput-object v4, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serviceStatus:Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-nez v0, :cond_c

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_14

    .line 42
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    :goto_14
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-nez v0, :cond_1c

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_24

    .line 47
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    :goto_24
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serviceStatus:Ljava/lang/Integer;

    if-nez v0, :cond_2d

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3a

    .line 52
    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serviceStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_3a
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
