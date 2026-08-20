.class Lcom/android/internal/telephony/cat/ChannelStatus$1;
.super Ljava/lang/Object;
.source "ChannelStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/ChannelStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/cat/ChannelStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/ChannelStatus;
    .registers 3

    .line 48
    new-instance p0, Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/ChannelStatus-IA;)V

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/ChannelStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/ChannelStatus;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/cat/ChannelStatus;
    .registers 2

    .line 52
    new-array p0, p1, [Lcom/android/internal/telephony/cat/ChannelStatus;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/ChannelStatus$1;->newArray(I)[Lcom/android/internal/telephony/cat/ChannelStatus;

    move-result-object p0

    return-object p0
.end method
