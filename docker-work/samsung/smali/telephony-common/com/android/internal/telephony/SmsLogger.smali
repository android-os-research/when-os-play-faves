.class public final Lcom/android/internal/telephony/SmsLogger;
.super Ljava/lang/Object;
.source "SmsLogger.java"


# static fields
.field private static final blacklist LOG_BUFFER_SIZE:I

.field private static final blacklist TIMELINE_LOG_BUFFER_SIZE:I

.field private static blacklist mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/android/internal/telephony/SmsLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x64

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    sput v0, Lcom/android/internal/telephony/SmsLogger;->LOG_BUFFER_SIZE:I

    .line 47
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    sput v1, Lcom/android/internal/telephony/SmsLogger;->TIMELINE_LOG_BUFFER_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist currentTime()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/android/internal/telephony/SmsLogger;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/SmsLogger;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/SmsLogger;->sInstance:Lcom/android/internal/telephony/SmsLogger;

    if-nez v1, :cond_e

    .line 53
    new-instance v1, Lcom/android/internal/telephony/SmsLogger;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsLogger;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SmsLogger;->sInstance:Lcom/android/internal/telephony/SmsLogger;

    .line 55
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/SmsLogger;->sInstance:Lcom/android/internal/telephony/SmsLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist add(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 86
    sget-object v0, Lcom/android/internal/telephony/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 87
    monitor-enter v0

    .line 88
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsLogger;->currentTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PhoneId : ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_36
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    sget p2, Lcom/android/internal/telephony/SmsLogger;->LOG_BUFFER_SIZE:I

    if-le p0, p2, :cond_42

    .line 91
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_36

    .line 93
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_49

    .line 94
    sget-object p0, Lcom/android/internal/telephony/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_49
    move-exception p0

    .line 93
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public blacklist addTimeline(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsLogger;->addTimeline(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist addTimeline(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 118
    sget-object v0, Lcom/android/internal/telephony/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "Timeline"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 120
    monitor-enter v0

    .line 121
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsLogger;->currentTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PhoneId : ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_40
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    sget p1, Lcom/android/internal/telephony/SmsLogger;->TIMELINE_LOG_BUFFER_SIZE:I

    if-le p0, p1, :cond_4c

    .line 124
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_40

    .line 126
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_55

    .line 127
    sget-object p0, Lcom/android/internal/telephony/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p1, "Timeline"

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_55
    move-exception p0

    .line 126
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 161
    new-instance p0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "Dump of SMS :"

    .line 162
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 165
    sget-object p1, Lcom/android/internal/telephony/SmsLogger;->mEventLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 168
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 170
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 174
    monitor-enter v0

    .line 175
    :try_start_38
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3c

    .line 178
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_51

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_19

    :catchall_51
    move-exception p0

    .line 178
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0

    .line 181
    :cond_54
    invoke-virtual {p0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 143
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PhoneId : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
