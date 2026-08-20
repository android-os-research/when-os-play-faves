.class public Lcom/android/server/alarm/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellCmd"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 6583
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$ShellCmd-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public getBinderService()Landroid/app/IAlarmManager;
    .registers 1

    .line 6586
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 9

    if-nez p1, :cond_7

    .line 6592
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6595
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 6597
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7e64175c

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_39

    const v3, 0x519f2558

    if-eq v2, v3, :cond_2e

    const v3, 0x7895dd04

    if-eq v2, v3, :cond_23

    goto :goto_43

    :cond_23
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v5

    goto :goto_44

    :cond_2e
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v6

    goto :goto_44

    :cond_39
    const-string v2, "get-config-version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v2, v4

    goto :goto_44

    :cond_43
    :goto_43
    move v2, v1

    :goto_44
    if-eqz v2, :cond_67

    if-eq v2, v5, :cond_5b

    if-eq v2, v4, :cond_4f

    .line 6610
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6606
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IAlarmManager;->getConfigVersion()I

    move-result p0

    .line 6607
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V

    return v6

    .line 6602
    :cond_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 6603
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    return v6

    .line 6599
    :cond_67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 6600
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_77} :catch_7b

    if-eqz p0, :cond_7a

    move v1, v6

    :cond_7a
    return v1

    :catch_7b
    move-exception p0

    .line 6613
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v1
.end method

.method public onHelp()V
    .registers 2

    .line 6620
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Alarm manager service (alarm) commands:"

    .line 6621
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 6622
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 6623
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-time TIME"

    .line 6624
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set the system clock time to TIME where TIME is milliseconds"

    .line 6625
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    since the Epoch."

    .line 6626
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-timezone TZ"

    .line 6627
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set the system timezone to TZ where TZ is an Olson id."

    .line 6628
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-config-version"

    .line 6629
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns an integer denoting the version of device_config keys the service is sync\'ed to. As long as this returns the same version, the values of the config are guaranteed to remain the same."

    .line 6630
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
