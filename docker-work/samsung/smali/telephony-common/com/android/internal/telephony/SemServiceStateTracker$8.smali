.class Lcom/android/internal/telephony/SemServiceStateTracker$8;
.super Ljava/lang/Object;
.source "SemServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;->showCallUnblockFailDialog()V
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

    .line 1132
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1134
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fputmCallUnblockDialog(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/app/AlertDialog;)V

    return-void
.end method
