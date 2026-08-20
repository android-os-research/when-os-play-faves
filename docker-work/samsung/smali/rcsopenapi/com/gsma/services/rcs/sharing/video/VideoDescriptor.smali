.class public Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
.super Ljava/lang/Object;
.source "VideoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    .line 42
    iput p2, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 102
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
