.class Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewMessageNotificationActionReceiver"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 2900
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2903
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$sfgetACTION_OPEN_SMS_APP()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const-string p0, "user"

    .line 2906
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 2907
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 2908
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2909
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 2908
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2b
    return-void
.end method
