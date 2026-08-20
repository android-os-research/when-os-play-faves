.class Lcom/android/internal/telephony/uicc/UiccProfile$5;
.super Ljava/lang/Object;
.source "UiccProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;->makeVzwSsuNetworkLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 2

    .line 3385
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    .line 3389
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string p2, "Reboot due to VZW SSU Network Lock"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 3390
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/internal/telephony/uicc/UiccProfile$5$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/uicc/UiccProfile$5$1;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile$5;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3397
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2d

    :cond_18
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2d

    .line 3399
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const-string v0, "Do not reboot device"

    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 3401
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3404
    :cond_27
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$5;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmSsuNetworkLockDialogDisplayed(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    :cond_2d
    :goto_2d
    return-void
.end method
