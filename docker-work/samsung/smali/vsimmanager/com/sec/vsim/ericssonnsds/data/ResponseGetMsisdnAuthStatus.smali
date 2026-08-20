.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;
.source "ResponseGetMsisdnAuthStatus.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isRealTMOID:Ljava/lang/Boolean;

.field public msisdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;-><init>(Landroid/os/Parcel;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 17
    .local v0, "isRealTMOIDVal":B
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    move-object v3, v2

    goto :goto_17

    :cond_e
    if-eqz v0, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_17
    iput-object v3, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->isRealTMOID:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v1, :cond_30

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    .line 20
    const-class v2, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_32

    .line 22
    :cond_30
    iput-object v2, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    .line 24
    :goto_32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 33
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->isRealTMOID:Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_14

    .line 37
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    :goto_14
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_26

    .line 42
    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 45
    :goto_26
    return-void
.end method
