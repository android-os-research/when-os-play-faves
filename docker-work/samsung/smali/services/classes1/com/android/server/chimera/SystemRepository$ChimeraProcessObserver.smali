.class public interface abstract Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;
.super Ljava/lang/Object;
.source "SystemRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SystemRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChimeraProcessObserver"
.end annotation


# virtual methods
.method public abstract onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
