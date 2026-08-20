.class public Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "ImageSharingServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mMaxSize:J

.field private final mWarnSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "maxSize"    # J
    .param p3, "warnSize"    # J

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mMaxSize:J

    .line 41
    iput-wide p3, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mWarnSize:J

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mMaxSize:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mWarnSize:J

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSize()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mMaxSize:J

    return-wide v0
.end method

.method public getWarnSize()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mWarnSize:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mMaxSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->mWarnSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return-void
.end method
