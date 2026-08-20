.class public final synthetic Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->bindService()V

    return-void
.end method
