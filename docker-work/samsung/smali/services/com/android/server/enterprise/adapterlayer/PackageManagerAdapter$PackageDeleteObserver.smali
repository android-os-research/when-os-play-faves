.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field public finished:Z

.field public result:Z

.field public final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 3

    .line 302
    monitor-enter p0

    const/4 p1, 0x1

    .line 303
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z

    if-ne p2, p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 304
    :goto_8
    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw p1
.end method
