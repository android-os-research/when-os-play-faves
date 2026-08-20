.class public Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextStepLevelMonitorAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextStepLevelMonitorAttribute"


# instance fields
.field private blacklist mDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 83
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->setAttribute()V

    .line 85
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    .line 68
    return-void
.end method

.method private blacklist setAttribute()V
    .registers 4

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const/16 v1, 0x21

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .registers 3

    .line 93
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;->mDuration:I

    if-gez v0, :cond_d

    .line 94
    const-string v0, "SemContextStepLevelMonitorAttribute"

    const-string v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_d
    const/4 v0, 0x1

    return v0
.end method
