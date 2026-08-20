.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 3

    .line 192
    new-instance p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>(Landroid/os/Parcel;Lcom/android/server/display/AdaptiveBrightnessWeightStats-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    .registers 2

    .line 197
    new-array p0, p1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;->newArray(I)[Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object p0

    return-object p0
.end method
