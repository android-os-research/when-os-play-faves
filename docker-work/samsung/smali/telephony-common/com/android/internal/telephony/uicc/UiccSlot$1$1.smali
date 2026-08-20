.class Lcom/android/internal/telephony/uicc/UiccSlot$1$1;
.super Ljava/lang/Object;
.source "UiccSlot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccSlot$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/uicc/UiccSlot$1;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot$1;)V
    .registers 2

    .line 710
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 712
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1$1;->this$1:Lcom/android/internal/telephony/uicc/UiccSlot$1;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "power"

    .line 713
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, "[Telephony] SIM is removed/added."

    .line 714
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
