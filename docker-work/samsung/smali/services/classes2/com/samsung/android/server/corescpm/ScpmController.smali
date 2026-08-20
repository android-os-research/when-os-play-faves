.class public interface abstract Lcom/samsung/android/server/corescpm/ScpmController;
.super Ljava/lang/Object;
.source "ScpmController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
    }
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method

.method public abstract registerScpm(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Set;Ljava/util/function/Consumer;Lcom/samsung/android/server/util/CoreLogger;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/server/util/CoreLogger;",
            ")V"
        }
    .end annotation
.end method
