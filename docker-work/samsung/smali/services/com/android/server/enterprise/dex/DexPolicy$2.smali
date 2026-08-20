.class public Lcom/android/server/enterprise/dex/DexPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "DexPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dex/DexPolicy;-><init>(Lcom/android/server/enterprise/dex/DexPolicy$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DexPolicyService"

    if-nez p1, :cond_e

    const-string p0, "action is null!"

    .line 152
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, -0x1

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_a8

    goto :goto_38

    :sswitch_18
    const-string v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_38

    :cond_21
    const/4 v0, 0x2

    goto :goto_38

    :sswitch_23
    const-string v1, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v0, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    :goto_38
    packed-switch v0, :pswitch_data_b6

    goto :goto_a6

    :pswitch_3c
    const-string p0, "dex exit "

    .line 160
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    :pswitch_42
    const-string p0, "dex enter "

    .line 157
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    :pswitch_48
    const-string p1, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 163
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result p1

    if-eqz p1, :cond_82

    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 165
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I

    move-result v0

    invoke-direct {p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fputmContext_temp(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)V

    .line 167
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmContext_temp(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mapplyEthernetOnly(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 169
    :cond_82
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_93

    .line 170
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mexitDexModeSetPackageState(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 172
    :cond_93
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p1

    if-eqz p1, :cond_a6

    invoke-static {}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$sfgetisBlockerRegistered()Z

    move-result p1

    if-nez p1, :cond_a6

    .line 173
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$2;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mregisterDexBlocker(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_a6
    :goto_a6
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x35f22cb2 -> :sswitch_2e
        0x8a75b96 -> :sswitch_23
        0x6c272afe -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_48
        :pswitch_42
        :pswitch_3c
    .end packed-switch
.end method
