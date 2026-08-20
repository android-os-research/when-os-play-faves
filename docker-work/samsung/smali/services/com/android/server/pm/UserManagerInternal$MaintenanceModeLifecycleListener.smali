.class public interface abstract Lcom/android/server/pm/UserManagerInternal$MaintenanceModeLifecycleListener;
.super Ljava/lang/Object;
.source "UserManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MaintenanceModeLifecycleListener"
.end annotation


# virtual methods
.method public onPostprocessing(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
