.class Lcom/sec/ims/volte2/data/CallProfile$1;
.super Ljava/lang/Object;
.source "CallProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/CallProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/volte2/data/CallProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/volte2/data/CallProfile;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1702
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/CallProfile-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1694
    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/ims/volte2/data/CallProfile;
    .registers 3
    .param p1, "size"    # I

    .line 1712
    new-array v0, p1, [Lcom/sec/ims/volte2/data/CallProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1694
    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile$1;->newArray(I)[Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    return-object p1
.end method
