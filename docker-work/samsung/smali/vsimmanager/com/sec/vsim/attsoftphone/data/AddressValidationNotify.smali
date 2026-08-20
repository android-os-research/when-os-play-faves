.class public Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;
.super Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
.source "AddressValidationNotify.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddressId:I

.field public mConfirmationRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify$1;

    invoke-direct {v0}, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;IZ)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "success"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "addressId"    # I
    .param p5, "confirmationRequired"    # Z

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 13
    iput p4, p0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->mAddressId:I

    .line 14
    iput-boolean p5, p0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->mConfirmationRequired:Z

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(Landroid/os/Parcel;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->mAddressId:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->mConfirmationRequired:Z

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 30
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget v0, p0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->mAddressId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-boolean v0, p0, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;->mConfirmationRequired:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    return-void
.end method
