.class public final synthetic Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$StampedLockVisitor$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->asReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    return-object p0
.end method
