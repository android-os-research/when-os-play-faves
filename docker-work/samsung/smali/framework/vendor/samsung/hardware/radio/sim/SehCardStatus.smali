.class public Lvendor/samsung/hardware/radio/sim/SehCardStatus;
.super Ljava/lang/Object;
.source "SehCardStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/samsung/hardware/radio/sim/SehCardStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

.field public blacklist atr:Ljava/lang/String;

.field public blacklist cardState:I

.field public blacklist cdmaSubscriptionAppIndex:I

.field public blacklist eid:Ljava/lang/String;

.field public blacklist gsmUmtsSubscriptionAppIndex:I

.field public blacklist iccid:Ljava/lang/String;

.field public blacklist imsSubscriptionAppIndex:I

.field public blacklist slotMap:Landroid/hardware/radio/config/SlotPortMapping;

.field public blacklist universalPinState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lvendor/samsung/hardware/radio/sim/SehCardStatus$1;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/sim/SehCardStatus$1;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    .line 15
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 25
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 134
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 137
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 136
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 139
    :cond_19
    return v1

    .line 141
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 142
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 144
    :cond_26
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    invoke-direct {p0, v1}, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 129
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;

    invoke-direct {p0, v1}, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 130
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 95
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_142

    .line 98
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 120
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 120
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->universalPinState:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 120
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 120
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 120
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 120
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_b2
    :try_start_b2
    sget-object v2, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 120
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->atr:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 120
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->iccid:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 120
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->eid:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 116
    return-void

    .line 120
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_126
    :try_start_126
    sget-object v2, Landroid/hardware/radio/config/SlotPortMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/config/SlotPortMapping;

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_140

    .line 119
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13a

    .line 122
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    nop

    .line 124
    return-void

    .line 120
    :cond_13a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :catchall_140
    move-exception v2

    goto :goto_14a

    .line 97
    :cond_142
    :try_start_142
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lvendor/samsung/hardware/radio/sim/SehCardStatus;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_14a
    .catchall {:try_start_142 .. :try_end_14a} :catchall_140

    .line 119
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/sim/SehCardStatus;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_14a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_153

    .line 120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_153
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 76
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->universalPinState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 83
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->atr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->eid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Landroid/hardware/radio/config/SlotPortMapping;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 88
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void
.end method
