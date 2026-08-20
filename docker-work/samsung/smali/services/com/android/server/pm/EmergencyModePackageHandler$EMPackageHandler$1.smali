.class public Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;
.super Landroid/content/IIntentReceiver$Stub;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, -0x1

    const-string p3, "EMPkgHandler"

    if-nez p1, :cond_c

    const-string/jumbo p1, "intent is null!"

    .line 99
    invoke-static {p3, p1}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_c
    const-string p4, "EM_PKG_HADNLER_ID"

    .line 101
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 103
    :goto_12
    iget-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    iget p1, p1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    const-string p4, "]"

    if-ne p1, p2, :cond_3d

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "performReceive sending EM_SEND_PENDING_BROADCAST id["

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->this$0:Lcom/android/server/pm/EmergencyModePackageHandler;

    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_61

    .line 107
    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "performReceive canceled emID["

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler$1;->this$1:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    iget p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->emID:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]  thisID["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    return-void
.end method
