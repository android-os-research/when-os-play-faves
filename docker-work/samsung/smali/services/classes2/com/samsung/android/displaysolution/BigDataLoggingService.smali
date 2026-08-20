.class public Lcom/samsung/android/displaysolution/BigDataLoggingService;
.super Ljava/lang/Object;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final BDL_ON:Ljava/lang/String; = "sys.bigdatalogging.bdlon"

.field public static final TAG:Ljava/lang/String; = "BigDataLoggingService"


# instance fields
.field public final DEBUG:Z

.field public final mContext:Landroid/content/Context;

.field public mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mUseBigDataLoggingServiceConfig:Z


# direct methods
.method public static bridge synthetic -$$Nest$mreceive_boot_completed_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_boot_completed_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_off_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_screen_on_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_user_present_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->receive_user_present_intent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->DEBUG:Z

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    .line 75
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BigDataLoggingServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 78
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mHandler:Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    const-string/jumbo v0, "sys.bigdatalogging.bdlon"

    const-string v1, "false"

    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    new-instance v2, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver-IA;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz p0, :cond_6c

    const-string/jumbo p0, "true"

    .line 94
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "File Close error"

    const-string v0, "BigDataLoggingService"

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    .line 175
    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 178
    :try_start_12
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_63
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_44
    .catchall {:try_start_12 .. :try_end_1c} :catchall_42

    .line 180
    :try_start_1c
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eqz p1, :cond_2c

    .line 182
    new-instance v5, Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, p1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v5

    .line 184
    :cond_2c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2f} :catch_3a
    .catchall {:try_start_1c .. :try_end_2f} :catchall_37

    .line 195
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_83

    .line 197
    :catch_33
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :catchall_37
    move-exception p1

    move-object v1, v4

    goto :goto_84

    :catch_3a
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_46

    :catch_3e
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_65

    :catchall_42
    move-exception p1

    goto :goto_84

    :catch_44
    move-exception p1

    move-object v2, v1

    .line 190
    :goto_46
    :try_start_46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_42

    if-eqz v1, :cond_82

    .line 195
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_7f

    goto :goto_82

    :catch_63
    move-exception p1

    move-object v2, v1

    .line 188
    :goto_65
    :try_start_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_42

    if-eqz v1, :cond_82

    .line 195
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_82

    .line 197
    :catch_7f
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    move-object v1, v2

    :goto_83
    return-object v1

    :goto_84
    if-eqz v1, :cond_8d

    .line 195
    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8d

    .line 197
    :catch_8a
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_8d
    :goto_8d
    throw p1
.end method

.method public final receive_boot_completed_intent()V
    .registers 1

    return-void
.end method

.method public final receive_screen_off_intent()V
    .registers 1

    return-void
.end method

.method public final receive_screen_on_intent()V
    .registers 1

    return-void
.end method

.method public final receive_user_present_intent()V
    .registers 1

    return-void
.end method
