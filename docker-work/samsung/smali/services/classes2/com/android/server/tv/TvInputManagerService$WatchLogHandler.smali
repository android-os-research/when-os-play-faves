.class public final Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatchLogHandler"
.end annotation


# static fields
.field public static final MSG_LOG_WATCH_END:I = 0x2

.field public static final MSG_LOG_WATCH_START:I = 0x1

.field public static final MSG_SWITCH_CONTENT_RESOLVER:I = 0x3


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 3

    .line 3696
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3697
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 3762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3763
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3764
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3765
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 3766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3767
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_d

    .line 3771
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 3772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3773
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3774
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ", "

    .line 3775
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 3778
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 3702
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string/jumbo v2, "session_token"

    const-string v3, "TvInputManagerService"

    if-eq v0, v1, :cond_69

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    .line 3755
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unhandled message code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 3751
    :cond_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    goto/16 :goto_cb

    .line 3732
    :cond_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3733
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 3734
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3736
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3738
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "watch_end_time_utc_millis"

    .line 3737
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3740
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3739
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    :try_start_57
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception p0

    const-string v0, "error in insert db for MSG_LOG_WATCH_END"

    .line 3745
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3747
    :goto_65
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_cb

    .line 3704
    :cond_69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3705
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3706
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3707
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3708
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 3709
    iget-object v8, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v8, Landroid/os/IBinder;

    .line 3711
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "package_name"

    .line 3712
    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3714
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v4, "watch_start_time_utc_millis"

    .line 3713
    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3715
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "channel_id"

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v1, :cond_b3

    .line 3718
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tune_params"

    .line 3717
    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3721
    :cond_b3
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3720
    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    :try_start_ba
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_c1} :catch_c2

    goto :goto_c8

    :catch_c2
    move-exception p0

    const-string v0, "error in insert db for MSG_LOG_WATCH_START"

    .line 3726
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3728
    :goto_c8
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_cb
    return-void
.end method

.method public final replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 3784
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3785
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_22

    aget-char v2, p1, v1

    const-string v3, "%=,"

    .line 3786
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1c

    const/16 v3, 0x25

    .line 3787
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3789
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3791
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
