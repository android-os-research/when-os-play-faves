.class public final synthetic Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/desktopmode/Injector$LazyDependencyCreator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/Injector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/Injector;

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/Injector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/Injector;

    invoke-static {p0}, Lcom/android/server/desktopmode/Injector;->$r8$lambda$AeN8ExN08rYP27GTMH5agZznWVw(Lcom/android/server/desktopmode/Injector;)Lcom/android/server/desktopmode/EmergencyModeBlocker;

    move-result-object p0

    return-object p0
.end method
