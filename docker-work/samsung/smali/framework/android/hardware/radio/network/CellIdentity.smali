.class public final Landroid/hardware/radio/network/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/CellIdentity$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist cdma:I = 0x4

.field public static final blacklist gsm:I = 0x1

.field public static final blacklist lte:I = 0x5

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist nr:I = 0x6

.field public static final blacklist tdscdma:I = 0x3

.field public static final blacklist wcdma:I = 0x2


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Landroid/hardware/radio/network/CellIdentity$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    .line 30
    iput-object p2, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellIdentity;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/CellIdentity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 276
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 279
    return-void

    .line 277
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellIdentity;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/CellIdentity;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 295
    iput p1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    .line 296
    iput-object p2, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    .line 297
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 282
    packed-switch p1, :pswitch_data_34

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :pswitch_1d
    const-string v0, "nr"

    return-object v0

    .line 288
    :pswitch_20
    const-string v0, "lte"

    return-object v0

    .line 287
    :pswitch_23
    const-string v0, "cdma"

    return-object v0

    .line 286
    :pswitch_26
    const-string/jumbo v0, "tdscdma"

    return-object v0

    .line 285
    :pswitch_2a
    const-string/jumbo v0, "wcdma"

    return-object v0

    .line 284
    :pswitch_2e
    const-string v0, "gsm"

    return-object v0

    .line 283
    :pswitch_31
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist cdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityCdma;

    .line 100
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 256
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 257
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 259
    :cond_10
    return v0
.end method

.method public static blacklist gsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityGsm;

    .line 55
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityLte;

    .line 115
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/network/CellIdentity;
    .registers 4
    .param p0, "_value"    # Z

    .line 40
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist nr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityNr;

    .line 130
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 85
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist wcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 70
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    goto :goto_45

    .line 249
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    .line 246
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 247
    goto :goto_45

    .line 243
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 244
    goto :goto_45

    .line 240
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 241
    goto :goto_45

    .line 237
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 238
    goto :goto_45

    .line 234
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 235
    nop

    .line 252
    :goto_45
    return v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getCdma()Landroid/hardware/radio/network/CellIdentityCdma;
    .registers 2

    .line 104
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 105
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityCdma;

    return-object v0
.end method

.method public blacklist getGsm()Landroid/hardware/radio/network/CellIdentityGsm;
    .registers 2

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 60
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityGsm;

    return-object v0
.end method

.method public blacklist getLte()Landroid/hardware/radio/network/CellIdentityLte;
    .registers 2

    .line 119
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 120
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityLte;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 45
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getNr()Landroid/hardware/radio/network/CellIdentityNr;
    .registers 2

    .line 134
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 135
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityNr;

    return-object v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 34
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    return v0
.end method

.method public blacklist getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;
    .registers 2

    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 90
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityTdscdma;

    return-object v0
.end method

.method public blacklist getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;
    .registers 2

    .line 74
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 75
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityWcdma;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_76

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :pswitch_21
    sget-object v1, Landroid/hardware/radio/network/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityNr;

    .line 223
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityNr;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 224
    return-void

    .line 217
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityNr;
    :pswitch_2d
    sget-object v1, Landroid/hardware/radio/network/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityLte;

    .line 218
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityLte;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 219
    return-void

    .line 212
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityLte;
    :pswitch_39
    sget-object v1, Landroid/hardware/radio/network/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityCdma;

    .line 213
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityCdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 214
    return-void

    .line 207
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityCdma;
    :pswitch_45
    sget-object v1, Landroid/hardware/radio/network/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 208
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityTdscdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 209
    return-void

    .line 202
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityTdscdma;
    :pswitch_51
    sget-object v1, Landroid/hardware/radio/network/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 203
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityWcdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 204
    return-void

    .line 197
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityWcdma;
    :pswitch_5d
    sget-object v1, Landroid/hardware/radio/network/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityGsm;

    .line 198
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityGsm;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 199
    return-void

    .line 192
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityGsm;
    :pswitch_69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 193
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 194
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setCdma(Landroid/hardware/radio/network/CellIdentityCdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityCdma;

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public blacklist setGsm(Landroid/hardware/radio/network/CellIdentityGsm;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityGsm;

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public blacklist setLte(Landroid/hardware/radio/network/CellIdentityLte;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityLte;

    .line 124
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public blacklist setNr(Landroid/hardware/radio/network/CellIdentityNr;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityNr;

    .line 139
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method public blacklist setTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public blacklist setWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 264
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_100

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.lte("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.cdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.tdscdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.wcdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.gsm("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :pswitch_e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.CellIdentity.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_c3
        :pswitch_a3
        :pswitch_83
        :pswitch_63
        :pswitch_43
        :pswitch_23
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 160
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    packed-switch v0, :pswitch_data_44

    goto :goto_43

    .line 181
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    .line 178
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    goto :goto_43

    .line 175
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 176
    goto :goto_43

    .line 172
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 173
    goto :goto_43

    .line 169
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 170
    goto :goto_43

    .line 166
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 167
    goto :goto_43

    .line 163
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 164
    nop

    .line 184
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
