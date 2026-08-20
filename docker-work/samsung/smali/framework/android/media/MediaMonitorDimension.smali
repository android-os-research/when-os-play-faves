.class public Landroid/media/MediaMonitorDimension;
.super Ljava/lang/Object;
.source "MediaMonitorDimension.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaMonitorDimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_NUM:I = 0x1

.field public static final blacklist TYPE_TEXT:I = 0x0

.field public static final blacklist TYPE_UNKNOWN:I = -0x1


# instance fields
.field public final blacklist mName:Ljava/lang/String;

.field private blacklist mNumber:J

.field private blacklist mText:Ljava/lang/String;

.field public final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/media/MediaMonitorDimension$1;

    invoke-direct {v0}, Landroid/media/MediaMonitorDimension$1;-><init>()V

    sput-object v0, Landroid/media/MediaMonitorDimension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    .line 56
    if-nez v0, :cond_20

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    goto :goto_29

    .line 58
    :cond_20
    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    .line 61
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNumber()J
    .registers 3

    .line 92
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 95
    iget-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    return-wide v0

    .line 93
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .registers 2

    .line 85
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    if-nez v0, :cond_7

    .line 88
    iget-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    return-object v0

    .line 86
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroid/media/MediaMonitorDimension;->mType:I

    if-nez v0, :cond_14

    .line 78
    iget-object v0, p0, Landroid/media/MediaMonitorDimension;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1c

    .line 79
    :cond_14
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 80
    iget-wide v0, p0, Landroid/media/MediaMonitorDimension;->mNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    :cond_1c
    :goto_1c
    return-void
.end method
