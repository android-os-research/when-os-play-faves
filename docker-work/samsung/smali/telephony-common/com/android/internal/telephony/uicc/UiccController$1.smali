.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Ljava/lang/Object;
.source "UiccController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccController;->onSimCountMismatched(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .registers 2

    .line 1677
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_17

    .line 1681
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string p2, "Reboot due to SIM count mismatched"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 1682
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/internal/telephony/uicc/UiccController$1$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/uicc/UiccController$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1689
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_17
    return-void
.end method
