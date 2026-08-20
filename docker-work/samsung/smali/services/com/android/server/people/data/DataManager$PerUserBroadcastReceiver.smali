.class public Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerUserBroadcastReceiver"
.end annotation


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .registers 3

    .line 1385
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1386
    iput p2, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$PerUserBroadcastReceiver-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1391
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    iget v0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 1395
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 1396
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1398
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    goto :goto_32

    .line 1400
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 1399
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 1401
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {p0, p1}, Lcom/android/server/people/data/DataManager;->-$$Nest$mupdateDefaultSmsApp(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V

    :cond_32
    :goto_32
    return-void
.end method
