.class public Lcom/android/server/pm/PackageManagerShellCommand$5;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->removeUserAndWait(Landroid/os/IUserManager;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;

.field public final synthetic val$userId:I

.field public final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;ILjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 3006
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .registers 3

    .line 3009
    iget v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$userId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p1, :cond_b

    .line 3010
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$5;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_b
    return-void
.end method
