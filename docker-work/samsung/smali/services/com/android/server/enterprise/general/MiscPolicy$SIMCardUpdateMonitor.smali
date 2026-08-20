.class public Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIMCardUpdateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CURRENT_SIM_COUNTRY_ISO:Ljava/lang/String; = "CurrentSimCountryIso"

.field public static final CURRENT_SIM_OPERATOR:Ljava/lang/String; = "CurrentSimOperator"

.field public static final CURRENT_SIM_OPERATOR_NAME:Ljava/lang/String; = "CurrentSimOperatorName"

.field public static final CURRENT_SIM_PHONE_NUMBER:Ljava/lang/String; = "CurrentSimPhoneNumber"

.field public static final CURRENT_SIM_SERIAL_NUMBER:Ljava/lang/String; = "CurrentSimSerialNumber"

.field public static final PREVIOUS_SIM_COUNTRY_ISO:Ljava/lang/String; = "PreviousSimCountryIso"

.field public static final PREVIOUS_SIM_OPERATOR:Ljava/lang/String; = "PreviousSimOperator"

.field public static final PREVIOUS_SIM_OPERATOR_NAME:Ljava/lang/String; = "PreviousSimOperatorName"

.field public static final PREVIOUS_SIM_PHONE_NUMBER:Ljava/lang/String; = "PreviousSimPhoneNumber"

.field public static final PREVIOUS_SIM_SERIAL_NUMBER:Ljava/lang/String; = "PreviousSimSerialNumber"

.field public static final SIM_CARD_PREF:Ljava/lang/String; = "/data/system/SimCard.dat"

.field public static final SIM_CHANGE_OPERATION:Ljava/lang/String; = "SimChangeOperation"

.field public static final SIM_CHANGE_TIME:Ljava/lang/String; = "SimChangeTime"


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mCtxt:Landroid/content/Context;

.field public final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCtxt(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaveSimState(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->saveSimState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V
    .registers 4

    .line 569
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SIMCardUpdateMonitor "

    .line 547
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;

    .line 550
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver-IA;)V

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    iput-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    .line 572
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 573
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->startSIMCardUpdates()V

    .line 574
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final saveSimState()V
    .registers 9

    const-string v0, "CurrentSimSerialNumber"

    const-string v1, "/data/system/SimCard.dat"

    .line 590
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 594
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 595
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-void

    :cond_1f
    const-string v2, "CurrentSimCountryIso"

    .line 601
    invoke-static {v2, v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreviousSimCountryIso"

    .line 600
    invoke-static {v4, v3, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "CurrentSimOperator"

    .line 603
    invoke-static {v3, v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreviousSimOperator"

    .line 602
    invoke-static {v5, v4, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "CurrentSimOperatorName"

    .line 605
    invoke-static {v4, v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PreviousSimOperatorName"

    .line 604
    invoke-static {v6, v5, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 608
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PreviousSimSerialNumber"

    .line 607
    invoke-static {v6, v5, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "CurrentSimPhoneNumber"

    .line 611
    invoke-static {v5, v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PreviousSimPhoneNumber"

    .line 610
    invoke-static {v7, v6, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 616
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 618
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 619
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-static {v4, v2, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 621
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-static {v0, v2, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1a0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method

.method public final startSIMCardUpdates()V
    .registers 3

    .line 633
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 634
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
