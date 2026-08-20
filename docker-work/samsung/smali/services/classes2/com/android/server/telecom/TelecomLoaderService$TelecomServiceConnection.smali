.class public Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 67
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telecom/ITelecomLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomLoader;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p2}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmServiceRepo(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/InternalServiceRepository;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/telecom/ITelecomLoader;->createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p2}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmContext(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    const-string/jumbo p2, "telecom"

    .line 71
    invoke-interface {p1}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 73
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p1}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmLock(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_8a

    .line 74
    :try_start_29
    const-class p2, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 75
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 76
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 77
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 78
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmContext(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "telecom"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 80
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 82
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 84
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    :goto_6a
    if-ltz v1, :cond_85

    .line 86
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v3}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$fgetmDefaultSimCallManagerRequests(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 89
    invoke-interface {p2, v0, v2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6a

    .line 95
    :cond_85
    monitor-exit p1

    goto :goto_91

    :catchall_87
    move-exception p0

    monitor-exit p1
    :try_end_89
    .catchall {:try_start_29 .. :try_end_89} :catchall_87

    :try_start_89
    throw p0
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8a} :catch_8a

    :catch_8a
    const-string p0, "TelecomLoaderService"

    const-string p1, "Failed linking to death."

    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_91
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {p0}, Lcom/android/server/telecom/TelecomLoaderService;->-$$Nest$mconnectToTelecom(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method
