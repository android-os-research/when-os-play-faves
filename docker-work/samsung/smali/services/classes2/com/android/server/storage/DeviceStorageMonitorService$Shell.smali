.class public Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
.super Landroid/os/ShellCommand;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Shell"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 1

    .line 611
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 612
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method
