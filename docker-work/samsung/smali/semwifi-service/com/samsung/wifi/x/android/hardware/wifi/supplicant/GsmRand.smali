.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand;
.super Ljava/lang/Object;
.source "GsmRand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand$1;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand$1;-><init>()V

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3b

    .line 38
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_39

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 42
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand;->data:[B
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_39

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_33

    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 42
    :cond_33
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_39
    move-exception p0

    goto :goto_43

    .line 37
    :cond_3b
    :try_start_3b
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_39

    :goto_43
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4c

    .line 42
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/GsmRand;->data:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
