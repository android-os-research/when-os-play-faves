.class public Lcom/android/server/SerialService;
.super Landroid/hardware/ISerialManager$Stub;
.source "SerialService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSerialPorts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Landroid/hardware/ISerialManager$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107011b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    return-void
.end method

.method private native native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.SERIAL_PORT"
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 41
    :goto_6
    iget-object v2, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 42
    aget-object v2, v2, v1

    .line 43
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 47
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation build Landroid/annotation/EnforcePermission;
        value = "android.permission.SERIAL_PORT"
    .end annotation

    const/4 v0, 0x0

    .line 54
    :goto_1
    iget-object v1, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 55
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/SerialService;->native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid serial port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
