.class Lcom/android/ims/RcsPresenceInfo$1;
.super Ljava/lang/Object;
.source "RcsPresenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsPresenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/RcsPresenceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/RcsPresenceInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 284
    new-instance v0, Lcom/android/ims/RcsPresenceInfo;

    invoke-direct {v0, p1}, Lcom/android/ims/RcsPresenceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/ims/RcsPresenceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/RcsPresenceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/RcsPresenceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 288
    new-array v0, p1, [Lcom/android/ims/RcsPresenceInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/ims/RcsPresenceInfo$1;->newArray(I)[Lcom/android/ims/RcsPresenceInfo;

    move-result-object p1

    return-object p1
.end method
