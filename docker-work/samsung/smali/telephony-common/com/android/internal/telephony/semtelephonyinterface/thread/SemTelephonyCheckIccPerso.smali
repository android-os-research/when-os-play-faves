.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;
.super Ljava/lang/Thread;
.source "SemTelephonyCheckIccPerso.java"


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mResult:Z

.field private final blacklist mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mResult:Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mDone:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mResult:Z

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mSimCard:Lcom/android/internal/telephony/IccCard;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist checkPerso(Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    .line 83
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_59

    if-nez v0, :cond_11

    .line 85
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_59

    goto :goto_1

    .line 87
    :catch_9
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_11
    const/16 v1, 0x64

    .line 90
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_59

    .line 97
    :try_start_17
    const-class v1, Lcom/android/internal/telephony/IccCard;

    const-string v2, "supplyPerso"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Message;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mSimCard:Lcom/android/internal/telephony/IccCard;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_37} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_37} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_37} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_37} :catch_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_59

    .line 102
    :catch_37
    :goto_37
    :try_start_37
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mDone:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_59

    if-nez p1, :cond_4e

    :try_start_3b
    const-string p1, "SemTelephonyCheckIccPerso"

    const-string v0, "wait for done"

    .line 104
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_45} :catch_46
    .catchall {:try_start_3b .. :try_end_45} :catchall_59

    goto :goto_37

    .line 108
    :catch_46
    :try_start_46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_37

    :cond_4e
    const-string p1, "SemTelephonyCheckIccPerso"

    const-string v0, "done"

    .line 111
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mResult:Z
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_59

    monitor-exit p0

    return p1

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 56
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 57
    monitor-enter p0

    .line 58
    :try_start_4
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso$1;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCheckIccPerso;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 78
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_17
    move-exception v0

    .line 77
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
