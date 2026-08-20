.class public Lcom/android/future/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 99
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 100
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    instance-of v0, p1, Lcom/android/future/usb/UsbAccessory;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/android/future/usb/UsbAccessory;

    .line 107
    .local v0, "accessory":Lcom/android/future/usb/UsbAccessory;
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    nop

    .line 107
    :goto_53
    return v1

    .line 114
    .end local v0    # "accessory":Lcom/android/future/usb/UsbAccessory;
    :cond_54
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 120
    :goto_b
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_15

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    xor-int/2addr v0, v2

    .line 121
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    xor-int/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_27

    move v2, v1

    goto :goto_2b

    :cond_27
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2b
    xor-int/2addr v0, v2

    .line 123
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    if-nez v2, :cond_32

    move v2, v1

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_36
    xor-int/2addr v0, v2

    .line 124
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    if-nez v2, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_40
    xor-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAccessory[mManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
