.class public Lcom/android/server/pm/DataLoaderManagerService;
.super Lcom/android/server/SystemService;
.source "DataLoaderManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;,
        Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DataLoaderManager"


# instance fields
.field public final mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mServiceConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mThread:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 57
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DataLoaderManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mThread:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance p1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;-><init>(Lcom/android/server/pm/DataLoaderManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    const-string v1, "dataloader_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
