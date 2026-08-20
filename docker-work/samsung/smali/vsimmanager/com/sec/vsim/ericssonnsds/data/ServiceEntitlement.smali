.class public Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;
.super Ljava/lang/Object;
.source "ServiceEntitlement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-id"
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display-name"
    .end annotation
.end field

.field public entitlementStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entitlement-status"
    .end annotation
.end field

.field public managementWebsheet:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "management-websheet"
    .end annotation
.end field

.field public onDemandProv:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "on-demand-prov"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field

.field public visible:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field

.field public websheetPreActivation:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "websheet-pre-activation"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->entitlementStatus:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 22
    .local v0, "onDemandProvVal":B
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1b

    move-object v5, v3

    goto :goto_24

    :cond_1b
    if-eqz v0, :cond_1f

    move v5, v1

    goto :goto_20

    :cond_1f
    move v5, v2

    :goto_20
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_24
    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->clientId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->displayName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 26
    .local v5, "visibleVal":B
    if-ne v5, v4, :cond_3a

    move-object v6, v3

    goto :goto_43

    :cond_3a
    if-eqz v5, :cond_3e

    move v6, v1

    goto :goto_3f

    :cond_3e
    move v6, v2

    :goto_3f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_43
    iput-object v6, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->visible:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 28
    .local v6, "websheetPreActivationVal":B
    if-ne v6, v4, :cond_4d

    move-object v7, v3

    goto :goto_56

    :cond_4d
    if-eqz v6, :cond_51

    move v7, v1

    goto :goto_52

    :cond_51
    move v7, v2

    :goto_52
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_56
    iput-object v7, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->websheetPreActivation:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 30
    .local v7, "managementWebsheetVal":B
    if-ne v7, v4, :cond_5f

    goto :goto_67

    :cond_5f
    if-eqz v7, :cond_62

    goto :goto_63

    :cond_62
    move v1, v2

    :goto_63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_67
    iput-object v3, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->managementWebsheet:Ljava/lang/Boolean;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 40
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->entitlementStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->onDemandProv:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-nez v0, :cond_13

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1b

    .line 45
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    :goto_1b
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->visible:Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_35

    .line 52
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    :goto_35
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->websheetPreActivation:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_45

    .line 57
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    :goto_45
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ServiceEntitlement;->managementWebsheet:Ljava/lang/Boolean;

    if-nez v0, :cond_4d

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_55

    .line 62
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    :goto_55
    return-void
.end method
