.class public Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextInterruptedGyroAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INTERRUPTED_GYRO_DISABLE_SYSFS_NODE:I = 0x0

.field public static final blacklist INTERRUPTED_GYRO_ENABLE_SYSFS_NODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextInterruptedGyroAttribute"


# instance fields
.field private blacklist mEnabled:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->setAttribute()V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "enable"    # I

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    .line 96
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->setAttribute()V

    .line 98
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    .line 81
    return-void
.end method

.method private blacklist setAttribute()V
    .registers 4

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    const-string v2, "interrupt_gyro"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const/16 v1, 0x30

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 117
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .registers 3

    .line 106
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;->mEnabled:I

    if-ltz v0, :cond_9

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    .line 110
    :cond_8
    return v1

    .line 107
    :cond_9
    :goto_9
    const-string v0, "SemContextInterruptedGyroAttribute"

    const-string v1, "The interrupt gyro value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return v0
.end method
