.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field public finished:Z

.field public packageName:Ljava/lang/String;

.field public success:Z

.field public final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4

    .line 159
    monitor-enter p0

    const/4 v0, 0x1

    .line 160
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z

    .line 161
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    .line 162
    iput-boolean p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw p1
.end method
