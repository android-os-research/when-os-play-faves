.class public Lcom/android/server/usb/hal/port/RawPortInfo$1;
.super Ljava/lang/Object;
.source "RawPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/hal/port/RawPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/hal/port/RawPortInfo;
    .registers 22

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1a

    move v7, v5

    goto :goto_1b

    :cond_1a
    move v7, v6

    .line 123
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_27

    move v9, v5

    goto :goto_28

    :cond_27
    move v9, v6

    .line 125
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_35

    move/from16 v18, v5

    goto :goto_37

    :cond_35
    move/from16 v18, v6

    .line 127
    :goto_37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 134
    new-instance v19, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object/from16 v0, v19

    move v5, v7

    move v6, v8

    move v7, v9

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-direct/range {v0 .. v16}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    return-object v19
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/hal/port/RawPortInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/usb/hal/port/RawPortInfo;
    .registers 2

    .line 147
    new-array p0, p1, [Lcom/android/server/usb/hal/port/RawPortInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/hal/port/RawPortInfo;

    move-result-object p0

    return-object p0
.end method
