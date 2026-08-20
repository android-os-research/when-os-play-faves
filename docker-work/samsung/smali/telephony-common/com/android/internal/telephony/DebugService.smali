.class public Lcom/android/internal/telephony/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String; = "DebugService"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "DebugService:"

    .line 37
    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 76
    sget-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DebugService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    if-eqz p3, :cond_61

    .line 44
    array-length p0, p3

    if-lez p0, :cond_61

    const/4 p0, 0x0

    .line 45
    aget-object v0, p3, p0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8e

    :goto_13
    move p0, v1

    goto :goto_3f

    :sswitch_15
    const-string p0, "--metricsproto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 p0, 0x3

    goto :goto_3f

    :sswitch_20
    const-string p0, "--saveatoms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_13

    :cond_29
    const/4 p0, 0x2

    goto :goto_3f

    :sswitch_2b
    const-string p0, "--metricsprototext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_13

    :cond_34
    const/4 p0, 0x1

    goto :goto_3f

    :sswitch_36
    const-string v2, "--metrics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_13

    :cond_3f
    :goto_3f
    packed-switch p0, :pswitch_data_a0

    goto :goto_61

    :pswitch_43
    const-string p0, "Saving atoms.."

    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->flushAtoms()V

    return-void

    :pswitch_54
    const-string p0, "Collecting telephony metrics.."

    .line 49
    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 59
    :cond_61
    :goto_61
    new-instance p0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v0, " "

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v0, "TelephonyDebugService Logging Start"

    .line 60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    const-string v0, "Dump telephony."

    .line 63
    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 64
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/PhoneFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "TelephonyDebugService Logging End"

    .line 66
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    const-string p0, "Dump SMS."

    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/SmsLogger;->getInstance()Lcom/android/internal/telephony/SmsLogger;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SmsLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x746ad8dd -> :sswitch_36
        0x1ea00b52 -> :sswitch_2b
        0x28324445 -> :sswitch_20
        0x38a4a0a5 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_54
        :pswitch_54
        :pswitch_43
        :pswitch_54
    .end packed-switch
.end method
