.class public Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
.super Ljava/lang/Object;
.source "VideoSharingServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "maxTime"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->maxTime:J

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

    iput-wide v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->maxTime:J

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTime()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->maxTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget-wide v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;->maxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return-void
.end method
