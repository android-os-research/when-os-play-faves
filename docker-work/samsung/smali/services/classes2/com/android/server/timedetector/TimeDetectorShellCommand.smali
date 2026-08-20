.class public Lcom/android/server/timedetector/TimeDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeDetectorShellCommand.java"


# instance fields
.field public final mInterface:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const-string v0, "is_auto_detection_enabled"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 48
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 46
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runIsAutoDetectionEnabled()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 6

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "time_detector"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Time Detector (%s) commands:\n"

    .line 65
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "  help\n"

    .line 66
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "    Print this help text.\n"

    .line 67
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "is_auto_detection_enabled"

    aput-object v2, v1, v3

    const-string v2, "  %s\n"

    .line 68
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    Prints true/false according to the automatic time detection setting.\n"

    .line 69
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 70
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "system_time"

    aput-object v4, v1, v3

    const-string v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    .line 71
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "time_detector_lower_bound_millis_override"

    aput-object v4, v1, v3

    .line 73
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    The lower bound used to validate time suggestions when they are received.\n"

    .line 74
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "    Specified in milliseconds since the start of the Unix epoch.\n"

    .line 76
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "time_detector_origin_priorities_override"

    aput-object v1, v0, v3

    .line 77
    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "    A comma separated list of origins. See TimeDetectorStrategy for details.\n"

    .line 78
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 79
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    .line 80
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 81
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runIsAutoDetectionEnabled()I
    .registers 2

    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 55
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/app/time/TimeCapabilitiesAndConfig;->getTimeConfiguration()Landroid/app/time/TimeConfiguration;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/app/time/TimeConfiguration;->isAutoDetectionEnabled()Z

    move-result p0

    .line 58
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method
