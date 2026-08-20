.class Lcom/android/internal/telephony/SemChameleonHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SemChameleonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemChameleonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemChameleonHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemChameleonHelper;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CHAMELEON_TELEPHONY_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    const-string p1, "brandalpha"

    .line 128
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "networkcode"

    .line 129
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resellerid"

    .line 130
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "speeddial"

    .line 131
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Error: "

    if-nez v2, :cond_5f

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set ro.ril.cdma.home.operator.alpha to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    .line 136
    :try_start_42
    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_cdma_home_operator_alpha(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_5f

    :catch_46
    move-exception p1

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    .line 142
    :cond_5f
    :goto_5f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_98

    .line 143
    iget-object p1, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set ro.ril.cdma.home.operator.numeric to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    .line 145
    :try_start_7b
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_cdma_home_operator_numeric(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_98

    :catch_7f
    move-exception p1

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    .line 151
    :cond_98
    :goto_98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d1

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ro.ril.home.operator.carrierid to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    .line 154
    :try_start_b4
    invoke-static {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->ril_home_operator_carrierid(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/RuntimeException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_d1

    :catch_b8
    move-exception p1

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$mlog(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    .line 160
    :cond_d1
    :goto_d1
    iget-object p0, p0, Lcom/android/internal/telephony/SemChameleonHelper$1;->this$0:Lcom/android/internal/telephony/SemChameleonHelper;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberDom:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/SemChameleonHelper;->mVmNumberInt:Ljava/lang/String;

    .line 162
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SemChameleonHelper;->-$$Nest$msetVmNumber(Lcom/android/internal/telephony/SemChameleonHelper;Ljava/lang/String;)V

    :cond_dc
    return-void
.end method
