.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;
.super Landroid/os/ShellCommand;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V
    .registers 2

    .line 1376
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9

    if-nez p1, :cond_7

    .line 1380
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1383
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1385
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "enable"

    .line 1386
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "Invalid sensor"

    const/4 v6, 0x4

    if-nez v2, :cond_43

    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1408
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1398
    :cond_2d
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    .line 1400
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 1404
    :cond_3d
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0, v0, v6, p1, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    goto :goto_59

    .line 1388
    :cond_43
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_53

    .line 1390
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 1394
    :cond_53
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v6, p1, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    :goto_59
    return v3
.end method

.method public onHelp()V
    .registers 3

    .line 1416
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Sensor privacy manager (sensor_privacy) commands:"

    .line 1418
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 1420
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 1421
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 1422
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  enable USER_ID SENSOR"

    .line 1423
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable privacy for a certain sensor."

    .line 1424
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  disable USER_ID SENSOR"

    .line 1426
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Disable privacy for a certain sensor."

    .line 1427
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
