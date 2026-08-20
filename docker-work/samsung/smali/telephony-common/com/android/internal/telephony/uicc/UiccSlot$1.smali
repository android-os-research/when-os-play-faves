.class Lcom/android/internal/telephony/uicc/UiccSlot$1;
.super Ljava/lang/Object;
.source "UiccSlot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .registers 2

    .line 696
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2e

    .line 702
    :try_start_a
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result p2

    if-eqz p2, :cond_17

    if-eqz p1, :cond_15

    .line 704
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 707
    :cond_15
    monitor-exit v0

    return-void

    .line 709
    :cond_17
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p2, "Reboot due to SIM swap"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 710
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/internal/telephony/uicc/UiccSlot$1$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 717
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_38

    :catchall_2c
    move-exception p0

    goto :goto_3a

    :cond_2e
    const/4 p1, -0x2

    if-ne p2, p1, :cond_38

    .line 719
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p1, "Do not reboot device"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 721
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_2c

    throw p0
.end method
