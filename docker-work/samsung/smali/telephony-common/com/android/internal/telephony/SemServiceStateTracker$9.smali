.class Lcom/android/internal/telephony/SemServiceStateTracker$9;
.super Ljava/lang/Object;
.source "SemServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .registers 2

    .line 1142
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$9;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1145
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$9;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p2, "sendMessage(EVENT_SEM_LU_REJECT_CAUSE)"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 1146
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$9;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/16 p1, 0x3fd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
