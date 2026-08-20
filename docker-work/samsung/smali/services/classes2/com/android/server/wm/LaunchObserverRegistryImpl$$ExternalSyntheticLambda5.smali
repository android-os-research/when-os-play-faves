.class public final synthetic Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    check-cast p2, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-static {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->$r8$lambda$5X03k1LiJAKe-R59mmLFpk7iYzQ(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method
