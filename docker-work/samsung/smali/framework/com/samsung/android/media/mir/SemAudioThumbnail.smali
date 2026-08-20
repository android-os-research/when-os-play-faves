.class public Lcom/samsung/android/media/mir/SemAudioThumbnail;
.super Ljava/lang/Object;
.source "SemAudioThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_ARG:I = -0x4

.field public static final whitelist ERROR_INVALID_PATH:I = -0x7

.field public static final whitelist ERROR_UNKNOWN:I = -0x1

.field public static final whitelist ERROR_UNSUPPORTED:I = -0x3

.field private static final blacklist SMAT_ERR:I = -0x1

.field private static final blacklist SMAT_ERR_INSUFF_MEM:I = -0x2

.field private static final blacklist SMAT_ERR_INVALID_ARG:I = -0x4

.field private static final blacklist SMAT_ERR_NOT_OPEN_FILE:I = -0x7

.field private static final blacklist SMAT_ERR_UNSUPPORT:I = -0x3

.field private static final blacklist SMAT_EXTRACT_DONE:I = 0x5

.field private static final blacklist SMAT_OK:I = 0x0

.field private static final blacklist SMAT_QUIT_DONE:I = 0x6

.field private static final blacklist SMAT_READY:I = 0x1

.field private static blacklist isNativeLibraryReady:Z


# instance fields
.field private blacklist lastError:I

.field private blacklist mHandle:I

.field private blacklist mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlastError(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Lcom/samsung/android/media/mir/SemAudioThumbnail;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/media/mir/SemAudioThumbnail;)Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeinit(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->deinit(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInfo(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->getInfo(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStat(Lcom/samsung/android/media/mir/SemAudioThumbnail;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->getStat(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 438
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 440
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 442
    iput v0, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 62
    const/4 v0, 0x0

    :try_start_c
    const-string/jumbo v1, "smat"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z
    :try_end_15
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_15} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_1d

    .line 66
    :catch_16
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    goto :goto_1e

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    .line 68
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_1d
    nop

    .line 69
    :goto_1e
    return-void
.end method

.method private native blacklist deinit(I)I
.end method

.method private native blacklist extract(I)I
.end method

.method private native blacklist getInfo(I)J
.end method

.method private native blacklist getStat(I)I
.end method

.method private native blacklist init(Ljava/lang/String;I)I
.end method

.method private native blacklist initialize(Ljava/io/FileDescriptor;I)I
.end method

.method private blacklist sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;
    .param p2, "errorType"    # I

    .line 468
    iput-object p1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 469
    iput p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 470
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$4;->start()V

    .line 482
    return-void
.end method


# virtual methods
.method public whitelist checkFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    if-nez p1, :cond_8

    goto :goto_19

    .line 85
    :cond_8
    :try_start_8
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "handle":I
    if-ltz v0, :cond_13

    .line 87
    invoke-direct {p0, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->deinit(I)I
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_11} :catch_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_15

    .line 88
    const/4 v1, 0x1

    return v1

    .line 94
    .end local v0    # "handle":I
    :cond_13
    nop

    .line 96
    return v1

    .line 92
    :catch_15
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    return v1

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_17
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    return v1

    .line 81
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_19
    :goto_19
    return v1
.end method

.method public whitelist extract(Ljava/io/FileDescriptor;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 338
    if-eqz p2, :cond_4c

    .line 342
    const/4 v0, -0x4

    if-nez p1, :cond_9

    .line 343
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 344
    return-void

    .line 347
    :cond_9
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_12

    .line 348
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 349
    return-void

    .line 353
    :cond_12
    const/4 v1, 0x0

    :try_start_13
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->initialize(Ljava/io/FileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 354
    iput-object p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 355
    if-ltz v1, :cond_32

    .line 356
    invoke-direct {p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result v0

    if-nez v0, :cond_2e

    .line 357
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$3;->start()V

    goto :goto_4a

    .line 413
    :cond_2e
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_4a

    .line 416
    :cond_32
    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 417
    sparse-switch v1, :sswitch_data_54

    .line 425
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_4a

    .line 422
    :sswitch_3b
    const/4 v0, -0x3

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 423
    goto :goto_4a

    .line 419
    :sswitch_40
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_43
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_43} :catch_46
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_43} :catch_44

    .line 420
    goto :goto_4a

    .line 431
    :catch_44
    move-exception v0

    goto :goto_4b

    .line 429
    :catch_46
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 433
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_4a
    nop

    .line 434
    :goto_4b
    return-void

    .line 339
    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_54
    .sparse-switch
        -0x7 -> :sswitch_40
        -0x3 -> :sswitch_3b
    .end sparse-switch
.end method

.method public whitelist extract(Ljava/lang/String;ILcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 115
    if-eqz p3, :cond_52

    .line 119
    const/4 v0, -0x7

    if-nez p1, :cond_9

    .line 120
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 121
    return-void

    .line 124
    :cond_9
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_12

    .line 125
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 126
    return-void

    .line 129
    :cond_12
    if-gez p2, :cond_19

    .line 130
    const/4 v0, -0x4

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 131
    return-void

    .line 135
    :cond_19
    :try_start_19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 136
    iput-object p3, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 137
    if-ltz v1, :cond_38

    .line 138
    invoke-direct {p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result v0

    if-nez v0, :cond_34

    .line 139
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$1;->start()V

    goto :goto_50

    .line 195
    :cond_34
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_50

    .line 198
    :cond_38
    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 199
    sparse-switch v1, :sswitch_data_5a

    .line 207
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_50

    .line 204
    :sswitch_41
    const/4 v0, -0x3

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 205
    goto :goto_50

    .line 201
    :sswitch_46
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_49
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_49} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_49} :catch_4a

    .line 202
    goto :goto_50

    .line 213
    :catch_4a
    move-exception v0

    goto :goto_51

    .line 211
    :catch_4c
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 215
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_50
    nop

    .line 216
    :goto_51
    return-void

    .line 116
    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_5a
    .sparse-switch
        -0x7 -> :sswitch_46
        -0x3 -> :sswitch_41
    .end sparse-switch
.end method

.method public whitelist extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 229
    if-eqz p2, :cond_4c

    .line 233
    const/4 v0, -0x7

    if-nez p1, :cond_9

    .line 234
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 235
    return-void

    .line 238
    :cond_9
    sget-boolean v1, Lcom/samsung/android/media/mir/SemAudioThumbnail;->isNativeLibraryReady:Z

    const/4 v2, -0x1

    if-nez v1, :cond_12

    .line 239
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 240
    return-void

    .line 244
    :cond_12
    const/4 v1, 0x0

    :try_start_13
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->init(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mHandle:I

    .line 245
    iput-object p2, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->mListener:Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;

    .line 246
    if-ltz v1, :cond_32

    .line 247
    invoke-direct {p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(I)I

    move-result v0

    if-nez v0, :cond_2e

    .line 248
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;

    const-string v1, "SemAudioThumbnail thread"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;-><init>(Lcom/samsung/android/media/mir/SemAudioThumbnail;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail$2;->start()V

    goto :goto_4a

    .line 304
    :cond_2e
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_4a

    .line 307
    :cond_32
    iput v1, p0, Lcom/samsung/android/media/mir/SemAudioThumbnail;->lastError:I

    .line 308
    sparse-switch v1, :sswitch_data_54

    .line 316
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    goto :goto_4a

    .line 313
    :sswitch_3b
    const/4 v0, -0x3

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 314
    goto :goto_4a

    .line 310
    :sswitch_40
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V
    :try_end_43
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_43} :catch_46
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_43} :catch_44

    .line 311
    goto :goto_4a

    .line 322
    :catch_44
    move-exception v0

    goto :goto_4b

    .line 320
    :catch_46
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->sendErrorMessage(Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;I)V

    .line 324
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_4a
    nop

    .line 325
    :goto_4b
    return-void

    .line 230
    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_54
    .sparse-switch
        -0x7 -> :sswitch_40
        -0x3 -> :sswitch_3b
    .end sparse-switch
.end method
