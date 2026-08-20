.class public final synthetic Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->$r8$lambda$lRwhamz6yj41bJS2AhbdPkOBjTE(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V

    return-void
.end method
