.class public Lcom/android/internal/telephony/SemElevatorMonitor;
.super Landroid/os/Handler;
.source "SemElevatorMonitor.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mElevatorMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

.field private blacklist mElevatorMotionMgr:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemElevatorMonitor;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemElevatorMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/telephony/SemElevatorMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemElevatorMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/SemElevatorMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemElevatorMonitor$1;-><init>(Lcom/android/internal/telephony/SemElevatorMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionMgr:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 78
    new-instance v2, Lcom/android/internal/telephony/SemElevatorMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SemElevatorMonitor$2;-><init>(Lcom/android/internal/telephony/SemElevatorMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 101
    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.intent.action.elevator_mode_start"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist eventFinishElevatorMode(I)V
    .registers 7

    const-string v0, "exception during eventFinishElevatorMode #2: "

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventFinishElevatorMode - mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 140
    :try_start_22
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xa3

    .line 141
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 142
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-byte p1, p1

    .line 143
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 144
    iget-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3c} :catch_59
    .catchall {:try_start_22 .. :try_end_3c} :catchall_57

    .line 149
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 150
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    goto :goto_7c

    :catch_43
    move-exception p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V

    goto :goto_7c

    :catchall_57
    move-exception p1

    goto :goto_7d

    :catch_59
    move-exception p1

    .line 146
    :try_start_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception during eventFinishElevatorMode #1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_5a .. :try_end_6e} :catchall_57

    .line 149
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 150
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_74} :catch_75

    goto :goto_7c

    :catch_75
    move-exception p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_49

    :goto_7c
    return-void

    .line 149
    :goto_7d
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 150
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_97

    :catch_84
    move-exception v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V

    .line 154
    :goto_97
    throw p1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;Z)V
    .registers 4

    .line 166
    sget-object v0, Lcom/android/internal/telephony/SemElevatorMonitor;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_c

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 178
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemElevatorMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Local logs:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 183
    iget-object p0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 187
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x1000000

    const/4 v2, 0x1

    if-eq v0, v2, :cond_50

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    const-string v0, "EVENT_ELEVATOR_MODE_FINISH"

    .line 120
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionMgr:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_33

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 124
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemElevatorMonitor;->eventFinishElevatorMode(I)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;Z)V

    :cond_33
    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionMgr:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    goto :goto_8a

    .line 130
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message arrives. msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    const-string p1, "EVENT_ELEVATOR_MODE_START"

    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionMgr:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez p1, :cond_8a

    .line 111
    iget-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionMgr:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz p1, :cond_8a

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mElevatorMotionListener:Lcom/samsung/android/gesture/SemMotionEventListener;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starts by slot"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemElevatorMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/SemElevatorMonitor;->log(Ljava/lang/String;Z)V

    :cond_8a
    :goto_8a
    return-void
.end method
