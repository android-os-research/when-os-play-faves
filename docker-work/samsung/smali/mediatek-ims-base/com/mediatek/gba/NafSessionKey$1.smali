.class Lcom/mediatek/gba/NafSessionKey$1;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/NafSessionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/gba/NafSessionKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey;-><init>()V

    .line 84
    .local v0, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "btid":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 86
    invoke-virtual {v0, v1}, Lcom/mediatek/gba/NafSessionKey;->setBtid(Ljava/lang/String;)V

    .line 89
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 90
    .local v2, "key":[B
    if-eqz v2, :cond_17

    .line 91
    invoke-virtual {v0, v2}, Lcom/mediatek/gba/NafSessionKey;->setKey([B)V

    .line 94
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "keylifetime":Ljava/lang/String;
    if-eqz v3, :cond_20

    .line 96
    invoke-virtual {v0, v3}, Lcom/mediatek/gba/NafSessionKey;->setKeylifetime(Ljava/lang/String;)V

    .line 98
    :cond_20
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/mediatek/gba/NafSessionKey;
    .registers 3
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Lcom/mediatek/gba/NafSessionKey;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->newArray(I)[Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method
