.class Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;
.super Ljava/lang/Object;
.source "SemNitzStateMachineImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->showMultitimezonePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

.field final synthetic blacklist val$r:Landroid/content/res/Resources;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Landroid/content/res/Resources;)V
    .registers 3

    .line 485
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;->val$r:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 488
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.DATE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x14200000

    .line 489
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "timezone"

    .line 494
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_args"

    .line 495
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 497
    iget-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time_zone"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    iget-object p2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;->val$r:Landroid/content/res/Resources;

    const v1, 0x1040723

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 500
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$3;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
