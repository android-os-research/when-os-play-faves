.class public Lcom/android/server/storage/CacheQuotaStrategy$1;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/storage/CacheQuotaStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 131
    new-instance p1, Lcom/android/server/storage/CacheQuotaStrategy$1$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/storage/CacheQuotaStrategy$1$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V

    .line 149
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 155
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->-$$Nest$fgetmLock(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 156
    :try_start_7
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->-$$Nest$fputmRemoteService(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)V

    .line 157
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method
