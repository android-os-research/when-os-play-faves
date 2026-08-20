.class Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;
.super Ljava/lang/Object;
.source "DsmsInfoCache.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {p2}, Lcom/samsung/android/dsms/aidl/IDsmsInfoService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;->this$1:Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->-$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
