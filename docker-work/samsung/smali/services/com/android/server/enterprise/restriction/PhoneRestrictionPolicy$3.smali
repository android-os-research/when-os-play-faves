.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v0, "subscription"

    const/4 v1, -0x1

    .line 336
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 337
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p2

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5e

    .line 339
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p2

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "PhoneRestrictionPolicy"

    if-nez p2, :cond_40

    const/4 v3, 0x0

    :try_start_20
    const-string/jumbo v4, "sem_wifi"

    .line 346
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_3b

    .line 349
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_37

    const/16 v5, 0xc

    if-ne v4, v5, :cond_40

    .line 352
    :cond_37
    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_40

    :cond_3b
    const-string p1, "Mobile Hotspot cannot be disabled"

    .line 355
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    const/4 p1, 0x0

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_51} :catch_54
    .catchall {:try_start_20 .. :try_end_51} :catchall_52

    goto :goto_5b

    :catchall_52
    move-exception p0

    goto :goto_5f

    :catch_54
    move-exception p0

    :try_start_55
    const-string/jumbo p1, "setCellularDataAllowed failed "

    .line 362
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    .line 364
    :goto_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5e
    return-void

    :goto_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    throw p0
.end method
