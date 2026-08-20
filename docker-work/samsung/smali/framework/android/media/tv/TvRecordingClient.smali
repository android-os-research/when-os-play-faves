.class public Landroid/media/tv/TvRecordingClient;
.super Ljava/lang/Object;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvRecordingClient$MySessionCallback;,
        Landroid/media/tv/TvRecordingClient$RecordingCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvRecordingClient"


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mIsPaused:Z

.field private greylist-max-o mIsRecordingStarted:Z

.field private blacklist mIsRecordingStopping:Z

.field private greylist-max-o mIsTuned:Z

.field private final greylist-max-o mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private greylist-max-o mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

.field private final greylist-max-o mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTuned(Landroid/media/tv/TvRecordingClient;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/tv/TvRecordingClient$RecordingCallback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/tv/TvRecordingClient$RecordingCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    .line 67
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient;->mCallback:Landroid/media/tv/TvRecordingClient$RecordingCallback;

    .line 68
    if-nez p4, :cond_18

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_19

    :cond_18
    move-object v0, p4

    :goto_19
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    .line 69
    const-string/jumbo v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 70
    return-void
.end method

.method private greylist-max-o resetInternal()V
    .registers 3

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 154
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 155
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_1a

    .line 156
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    .line 158
    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    .line 159
    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    .line 160
    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    .line 161
    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    .line 163
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist pauseRecording()V
    .registers 2

    .line 264
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvRecordingClient;->pauseRecording(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public whitelist pauseRecording(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 283
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_38

    .line 287
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iget-object v1, v1, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    .line 288
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->canPauseRecording()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 292
    iget-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-eqz v1, :cond_25

    .line 293
    const-string v1, "TvRecordingClient"

    const-string v2, "pauseRecording failed - recording already paused"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_25
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_2f

    .line 296
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$Session;->pauseRecording(Landroid/os/Bundle;)V

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    .line 299
    :cond_2f
    return-void

    .line 289
    :cond_30
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "pauseRecording failed - operation not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    .end local v0    # "info":Landroid/media/tv/TvInputInfo;
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pauseRecording failed - recording not yet started or stopping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 1

    .line 149
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    .line 150
    return-void
.end method

.method public whitelist resumeRecording()V
    .registers 2

    .line 313
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvRecordingClient;->resumeRecording(Landroid/os/Bundle;)V

    .line 314
    return-void
.end method

.method public whitelist resumeRecording(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;

    .line 330
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-eqz v0, :cond_22

    .line 335
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_17

    .line 336
    const-string v0, "TvRecordingClient"

    const-string v1, "resumeRecording failed - recording not yet paused"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_17
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_21

    .line 339
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->resumeRecording(Landroid/os/Bundle;)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    .line 342
    :cond_21
    return-void

    .line 331
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resumeRecording failed - recording not yet started or stopping or not yet tuned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 357
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_e

    .line 358
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_35

    .line 360
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" pending)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRecordingClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_35
    return-void

    .line 355
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startRecording(Landroid/net/Uri;)V
    .registers 3
    .param p1, "programUri"    # Landroid/net/Uri;

    .line 186
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/TvRecordingClient;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public whitelist startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 213
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_23

    .line 217
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_18

    .line 218
    const-string v0, "TvRecordingClient"

    const-string/jumbo v1, "startRecording failed - recording already started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_18
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_22

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    .line 224
    :cond_22
    return-void

    .line 214
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording failed -recording not yet stopped or not yet tuned or paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopRecording()V
    .registers 3

    .line 239
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-nez v0, :cond_c

    .line 240
    const-string v0, "TvRecordingClient"

    const-string/jumbo v1, "stopRecording failed - recording not yet started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_c
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1a

    .line 243
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->stopRecording()V

    .line 244
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_1a

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStopping:Z

    .line 248
    :cond_1a
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvRecordingClient;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 119
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsRecordingStarted:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-eqz v0, :cond_f

    goto :goto_18

    .line 120
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tune failed - recording already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    if-eqz v0, :cond_3e

    iget-object v0, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 123
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_32

    .line 124
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 125
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_3a

    .line 127
    :cond_32
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 128
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    .line 130
    :goto_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsTuned:Z

    goto :goto_55

    .line 132
    :cond_3e
    iget-boolean v0, p0, Landroid/media/tv/TvRecordingClient;->mIsPaused:Z

    if-nez v0, :cond_56

    .line 135
    invoke-direct {p0}, Landroid/media/tv/TvRecordingClient;->resetInternal()V

    .line 136
    new-instance v0, Landroid/media/tv/TvRecordingClient$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvRecordingClient$MySessionCallback;-><init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvRecordingClient;->mSessionCallback:Landroid/media/tv/TvRecordingClient$MySessionCallback;

    .line 137
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v1, :cond_55

    .line 138
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/tv/TvInputManager;->createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 141
    :cond_55
    :goto_55
    return-void

    .line 133
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tune failed - inputId is changed during pause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
