.class Lcom/android/internal/telephony/uicc/UiccProfile$5$1;
.super Ljava/lang/Object;
.source "UiccProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccProfile$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/uicc/UiccProfile$5;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile$5;)V
    .registers 2

    .line 3390
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5$1;->this$1:Lcom/android/internal/telephony/uicc/UiccProfile$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 3392
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5$1;->this$1:Lcom/android/internal/telephony/uicc/UiccProfile$5;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "power"

    .line 3393
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, "SIM count mismatch"

    .line 3394
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
