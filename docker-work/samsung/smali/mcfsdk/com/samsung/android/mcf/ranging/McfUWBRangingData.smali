.class public Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "[MCFSDK]_McfUWBRangingData"


# instance fields
.field private final mAntennaPairInfo:I

.field private final mAoaLandscape:I

.field private final mAoaPortrait:I

.field private final mBluetoothAddress:Ljava/lang/String;

.field private final mDeviceId:Ljava/lang/String;

.field private final mDistance:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mcf/ranging/McfUWBRangingData$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    iput p4, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    iput p5, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    iput p6, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    instance-of v1, p1, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    if-nez v1, :cond_14

    return v0

    :cond_14
    :try_start_14
    check-cast p1, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1f

    return v0

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_29} :catch_30
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_2e

    if-nez p1, :cond_2c

    return v0

    :cond_2c
    const/4 p1, 0x1

    return p1

    :catch_2e
    move-exception p1

    return v0

    :catch_30
    move-exception p1

    return v0
.end method

.method public getAntennaPairInfo()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    return v0
.end method

.method public getAoaLandscape()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    return v0
.end method

.method public getAoaPortrait()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    return v0
.end method

.method public getBluetoothAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cm|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "degree|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaPortrait:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAoaLandscape:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->mAntennaPairInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
