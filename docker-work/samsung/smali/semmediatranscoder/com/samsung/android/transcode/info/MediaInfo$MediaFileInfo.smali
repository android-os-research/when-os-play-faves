.class public Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/info/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileInfo"
.end annotation


# instance fields
.field public Author:I

.field public Bitdepth:I

.field public Bitrate:I

.field public Duration:J

.field public EditedDuration:J

.field public Framerate:I

.field public HDR10:Z

.field public Height:I

.field public Is360:Z

.field public IsLocationAvailable:Z

.field public MimeType:Ljava/lang/String;

.field public NumOfSVCLayers:I

.field public RecordingFramerate:I

.field public RecordingMode:I

.field public Rotation:I

.field public VideoCodecType:Ljava/lang/String;

.field public Width:I

.field public Writer:Ljava/lang/String;

.field public latitude:F

.field public longitude:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    .line 19
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    .line 20
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    .line 21
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    .line 22
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    .line 25
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    .line 26
    iput-wide v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    .line 29
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 30
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    .line 31
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    .line 32
    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    .line 34
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    .line 35
    iput-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    .line 36
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    .line 37
    iput-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    return-void
.end method
