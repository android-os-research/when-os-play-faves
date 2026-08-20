.class Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;
.super Ljava/lang/Object;
.source "SemLmsTokenCTC.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
    .registers 3

    .line 143
    new-instance p0, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;-><init>(Landroid/os/Parcel;Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC-IA;)V

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;
    .registers 2

    .line 147
    new-array p0, p1, [Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC$1;->newArray(I)[Lcom/samsung/android/telephony/cdma/SemLmsTokenCTC;

    move-result-object p0

    return-object p0
.end method
