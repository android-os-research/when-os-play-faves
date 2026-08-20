.class public Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;
.super Ljava/lang/Object;
.source "SemPSIAvailableMem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
    .registers 3

    .line 24
    new-instance p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;-><init>(Landroid/os/Parcel;Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
    .registers 2

    .line 28
    new-array p0, p1, [Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;->newArray(I)[Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;

    move-result-object p0

    return-object p0
.end method
