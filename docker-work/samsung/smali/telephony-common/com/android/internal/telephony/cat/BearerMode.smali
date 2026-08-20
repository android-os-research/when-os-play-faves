.class Lcom/android/internal/telephony/cat/BearerMode;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist isAutoReconnect:Z

.field public blacklist isBackgroundMode:Z

.field public blacklist isOnDemand:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Lcom/android/internal/telephony/cat/BearerMode$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerMode$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    const/4 v1, 0x1

    new-array v1, v1, [Z

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v2, v1, v0

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v2, v1, v0

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean p1, v1, v0

    .line 103
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerMode-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 114
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    .line 115
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 117
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    aput-boolean v0, p2, v1

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 120
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    aput-boolean p0, p2, v1

    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
