.class public final synthetic Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->$r8$lambda$6llGNhb-3QxL5Ub8Vm01dzdDmw8(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
