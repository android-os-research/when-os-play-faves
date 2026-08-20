.class public final Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;
.super Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 2

    .line 908
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelStateRequest()V
    .registers 4

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 957
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$massertCanControlDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 959
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 961
    :try_start_d
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 963
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 964
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 976
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "DeviceStateManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 978
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 980
    :try_start_13
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 983
    throw p0
.end method

.method public getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 2

    .line 911
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 912
    :try_start_7
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 913
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 970
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 971
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .registers 5

    if-eqz p1, :cond_18

    .line 922
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 925
    :try_start_a
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 927
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    throw p0

    .line 919
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device state callback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestState(Landroid/os/IBinder;II)V
    .registers 7

    .line 933
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 937
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$massertCanRequestDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;II)V

    if-eqz p1, :cond_1d

    .line 943
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 945
    :try_start_f
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p2, p3, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIILandroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 947
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    throw p0

    .line 940
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
