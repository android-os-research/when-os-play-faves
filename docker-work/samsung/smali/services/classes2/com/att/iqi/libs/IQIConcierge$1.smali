.class public Lcom/att/iqi/libs/IQIConcierge$1;
.super Landroid/content/BroadcastReceiver;
.source "IQIConcierge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIConcierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIConcierge;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIConcierge;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/att/iqi/libs/IQIConcierge$1;->this$0:Lcom/att/iqi/libs/IQIConcierge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

    .line 106
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x0

    const-string p1, "disabled"

    .line 107
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 108
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    const-string p2, "disable_mcc_mnc_validation"

    .line 109
    invoke-virtual {p1, p2, p0}, Lcom/att/iqi/libs/PreferenceStore;->setBoolean(Ljava/lang/String;Z)V

    :cond_1c
    return-void
.end method
