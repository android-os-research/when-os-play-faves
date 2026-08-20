.class public Lcom/gsma/services/rcs/upload/FileUploadInfo;
.super Ljava/lang/Object;
.source "FileUploadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/upload/FileUploadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFile:Landroid/net/Uri;

.field private final mFileExpiration:J

.field private final mFileIconExpiration:J

.field private mFileicon:Landroid/net/Uri;

.field private final mFileiconMimeType:Ljava/lang/String;

.field private final mFileiconSize:J

.field private final mFileiconValidity:J

.field private final mFilename:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mSize:J

.field private final mValidity:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadInfo$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/upload/FileUploadInfo$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;JJ)V
    .registers 34
    .param p1, "file"    # Landroid/net/Uri;
    .param p2, "validity"    # J
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "size"    # J
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "fileicon"    # Landroid/net/Uri;
    .param p9, "fileiconValidity"    # J
    .param p11, "fileiconSize"    # J
    .param p13, "fileiconType"    # Ljava/lang/String;
    .param p14, "fileExpiration"    # J
    .param p16, "fileIconExpiration"    # J

    .line 84
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    .line 85
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    .line 86
    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    .line 87
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    .line 88
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    .line 89
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    .line 90
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    .line 91
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    .line 92
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    .line 93
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    .line 94
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    .line 95
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getFile()Landroid/net/Uri;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileExpiration()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    return-wide v0
.end method

.method public getFileIcon()Landroid/net/Uri;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileIconExpiration()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    return-wide v0
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileIconSize()J
    .registers 3

    .line 247
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    return-wide v0
.end method

.method public getFileIconValidity()J
    .registers 3

    .line 239
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    return-wide v0
.end method

.method public getValidity()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    return-void
.end method
