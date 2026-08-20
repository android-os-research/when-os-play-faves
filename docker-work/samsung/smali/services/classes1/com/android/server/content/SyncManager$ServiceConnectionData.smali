.class public Lcom/android/server/content/SyncManager$ServiceConnectionData;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceConnectionData"
.end annotation


# instance fields
.field public final activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

.field public final adapter:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .registers 4

    .line 2900
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2901
    iput-object p2, p0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 2902
    iput-object p3, p0, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    return-void
.end method
