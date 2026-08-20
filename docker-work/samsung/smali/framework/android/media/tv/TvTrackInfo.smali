.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_AUDIO:I = 0x0

.field public static final whitelist TYPE_SUBTITLE:I = 0x2

.field public static final whitelist TYPE_VIDEO:I = 0x1


# instance fields
.field private final greylist-max-o mAudioChannelCount:I

.field private final blacklist mAudioDescription:Z

.field private final greylist-max-o mAudioSampleRate:I

.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final blacklist mEncoding:Ljava/lang/String;

.field private final blacklist mEncrypted:Z

.field private final greylist-max-o mExtra:Landroid/os/Bundle;

.field private final blacklist mHardOfHearing:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final blacklist mSpokenSubtitle:Z

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVideoActiveFormatDescription:B

.field private final greylist-max-o mVideoFrameRate:F

.field private final greylist-max-o mVideoHeight:I

.field private final greylist-max-o mVideoPixelAspectRatio:F

.field private final greylist-max-o mVideoWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 416
    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V
    .registers 34
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "encoding"    # Ljava/lang/String;
    .param p6, "encrypted"    # Z
    .param p7, "audioChannelCount"    # I
    .param p8, "audioSampleRate"    # I
    .param p9, "audioDescription"    # Z
    .param p10, "hardOfHearing"    # Z
    .param p11, "spokenSubtitle"    # Z
    .param p12, "videoWidth"    # I
    .param p13, "videoHeight"    # I
    .param p14, "videoFrameRate"    # F
    .param p15, "videoPixelAspectRatio"    # F
    .param p16, "videoActiveFormatDescription"    # B
    .param p17, "extra"    # Landroid/os/Bundle;

    .line 82
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    move/from16 v1, p1

    iput v1, v0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 84
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 85
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 86
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 87
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    .line 88
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    .line 89
    move/from16 v7, p7

    iput v7, v0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 90
    move/from16 v8, p8

    iput v8, v0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 91
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    .line 92
    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    .line 93
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    .line 94
    move/from16 v12, p12

    iput v12, v0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 95
    move/from16 v13, p13

    iput v13, v0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 96
    move/from16 v14, p14

    iput v14, v0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 97
    move/from16 v15, p15

    iput v15, v0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 98
    move/from16 v1, p16

    iput-byte v1, v0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 99
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo-IA;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    goto :goto_43

    :cond_42
    move v0, v2

    :goto_43
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    move v0, v2

    :goto_4e
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    iput-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 120
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 362
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 363
    return v0

    .line 366
    :cond_4
    instance-of v1, p1, Landroid/media/tv/TvTrackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 367
    return v2

    .line 370
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 372
    .local v1, "obj":Landroid/media/tv/TvTrackInfo;
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v3, v4, :cond_97

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 373
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 374
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    .line 375
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    if-eq v3, v4, :cond_42

    goto :goto_97

    .line 380
    :cond_42
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    packed-switch v3, :pswitch_data_98

    .line 399
    return v0

    .line 396
    :pswitch_48
    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v3, v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v2

    :goto_50
    return v0

    .line 389
    :pswitch_51
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_74

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_74

    iget-byte v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    iget-byte v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    if-ne v3, v4, :cond_74

    goto :goto_75

    :cond_74
    move v0, v2

    :goto_75
    return v0

    .line 382
    :pswitch_76
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    if-ne v3, v4, :cond_95

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    if-ne v3, v4, :cond_95

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v3, v4, :cond_95

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    if-ne v3, v4, :cond_95

    goto :goto_96

    :cond_95
    move v0, v2

    :goto_96
    return v0

    .line 377
    :cond_97
    :goto_97
    return v2

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_76
        :pswitch_51
        :pswitch_48
    .end packed-switch
.end method

.method public final whitelist getAudioChannelCount()I
    .registers 3

    .line 184
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 187
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    return v0

    .line 185
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getAudioSampleRate()I
    .registers 3

    .line 196
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 199
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    return v0

    .line 197
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getExtra()Landroid/os/Bundle;
    .registers 2

    .line 324
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getId()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getLanguage()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getType()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return v0
.end method

.method public final whitelist getVideoActiveFormatDescription()B
    .registers 3

    .line 314
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 317
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    return v0

    .line 315
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoFrameRate()F
    .registers 3

    .line 285
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 288
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    return v0

    .line 286
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoHeight()I
    .registers 3

    .line 272
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 275
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    return v0

    .line 273
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoPixelAspectRatio()F
    .registers 3

    .line 298
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 301
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    return v0

    .line 299
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoWidth()I
    .registers 3

    .line 259
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 262
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    return v0

    .line 260
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 404
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 406
    .local v1, "result":I
    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v2, :cond_40

    .line 407
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    goto :goto_6f

    .line 408
    :cond_40
    if-ne v2, v4, :cond_6f

    .line 409
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 410
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    .line 409
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 413
    :cond_6f
    :goto_6f
    return v1
.end method

.method public whitelist isAudioDescription()Z
    .registers 3

    .line 213
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 216
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    return v0

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isEncrypted()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    return v0
.end method

.method public whitelist isHardOfHearing()Z
    .registers 3

    .line 230
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_10

    .line 231
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio or a subtitle track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_10
    :goto_10
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    return v0
.end method

.method public whitelist isSpokenSubtitle()Z
    .registers 3

    .line 246
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 249
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    return v0

    .line 247
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 340
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 355
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 356
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 357
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 358
    return-void
.end method
