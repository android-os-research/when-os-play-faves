.class public final synthetic Lcom/samsung/android/server/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    invoke-static {p1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->$r8$lambda$ntrOVvXEAe-nDsQWNnBh-aiq09I(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
