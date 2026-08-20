.class public Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;
.super Ljava/lang/Object;
.source "IWSpeechRecognizerWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/speech/MMUIRecognizer;
    .registers 3

    const-class v0, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;

    monitor-enter v0

    .line 16
    :try_start_3
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;

    if-nez v1, :cond_24

    .line 17
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : make new MMUIRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/samsung/android/speech/MMUIRecognizer;->init()I

    move-result v2

    if-nez v2, :cond_1c

    .line 19
    new-instance v1, Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-direct {v1}, Lcom/samsung/android/speech/MMUIRecognizer;-><init>()V

    sput-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;

    goto :goto_2b

    .line 22
    :cond_1c
    const-string v2, "cannot load libsasr-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2f

    .line 23
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 26
    :cond_24
    :try_start_24
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : get existed MMUIRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_2b
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2f

    monitor-exit v0

    return-object v1

    .line 15
    :catchall_2f
    move-exception v1

    monitor-exit v0

    throw v1
.end method
