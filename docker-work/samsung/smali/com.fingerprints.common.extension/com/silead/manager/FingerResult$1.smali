.class Lcom/silead/manager/FingerResult$1;
.super Ljava/lang/Object;
.source "FingerResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/manager/FingerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/silead/manager/FingerResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/silead/manager/FingerResult;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    new-instance v0, Lcom/silead/manager/FingerResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/silead/manager/FingerResult;-><init>(Landroid/os/Parcel;Lcom/silead/manager/FingerResult$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lcom/silead/manager/FingerResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/silead/manager/FingerResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/silead/manager/FingerResult;
    .registers 3
    .param p1, "size"    # I

    .line 39
    new-array v0, p1, [Lcom/silead/manager/FingerResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lcom/silead/manager/FingerResult$1;->newArray(I)[Lcom/silead/manager/FingerResult;

    move-result-object p1

    return-object p1
.end method
