.class public Lcom/sec/ims/IMSAPCSInfo;
.super Ljava/lang/Object;
.source "IMSAPCSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSAPCSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mServiceStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/sec/ims/IMSAPCSInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSAPCSInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSAPCSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    move v0, v2

    :cond_e
    iput-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    .line 21
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSAPCSInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSAPCSInfo;

    .line 33
    .local v0, "clone":Lcom/sec/ims/IMSAPCSInfo;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/sec/ims/IMSAPCSInfo;->clone()Lcom/sec/ims/IMSAPCSInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 55
    iget-boolean v0, p0, Lcom/sec/ims/IMSAPCSInfo;->mServiceStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
