.class public Landroid/content/pm/PackageManager$SemPackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemPackageDataObserver"
.end annotation


# instance fields
.field private blacklist mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

.field final synthetic blacklist this$0:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/pm/PackageManager;
    .param p2, "listener"    # Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    .line 11606
    iput-object p1, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 11607
    iput-object p2, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    .line 11608
    return-void
.end method


# virtual methods
.method public blacklist onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 11612
    iget-object v0, p0, Landroid/content/pm/PackageManager$SemPackageDataObserver;->mListener:Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;

    if-eqz v0, :cond_7

    .line 11613
    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManager$SemFreeStorageNotifyListener;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 11615
    :cond_7
    return-void
.end method
