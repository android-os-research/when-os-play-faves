.class public final synthetic Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    iput-object p2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;

    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;->$r8$lambda$-qMgvUqR3ogzPrew_ABlrnSsg1c(Lcom/android/server/desktopmode/BleAdvertiserServiceManager$1;Landroid/content/ComponentName;)V

    return-void
.end method
