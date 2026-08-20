.class public Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
.super Ljava/lang/Object;
.source "FileUploadServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final maxSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "maxSize"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->maxSize:J

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->maxSize:J

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSize()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->maxSize:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->maxSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return-void
.end method
