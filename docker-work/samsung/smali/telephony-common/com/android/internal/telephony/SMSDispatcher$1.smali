.class Lcom/android/internal/telephony/SMSDispatcher$1;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->makeBlockedSmsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 2

    .line 3966
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p0, 0x0

    .line 3969
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher;->-$$Nest$sfputmIsBlockedDialogDisplayed(Z)V

    .line 3970
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
