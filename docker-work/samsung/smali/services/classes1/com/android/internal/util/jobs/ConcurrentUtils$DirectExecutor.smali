.class public Lcom/android/internal/util/jobs/ConcurrentUtils$DirectExecutor;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/jobs/ConcurrentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectExecutor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/jobs/ConcurrentUtils$DirectExecutor-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/jobs/ConcurrentUtils$DirectExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 141
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "DIRECT_EXECUTOR"

    return-object p0
.end method
