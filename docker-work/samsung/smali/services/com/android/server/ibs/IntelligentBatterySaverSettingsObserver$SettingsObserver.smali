.class public Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "IntelligentBatterySaverSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    .line 44
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "ibs_switch"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_21

    .line 45
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->-$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainActionEnable(Z)V

    goto :goto_2c

    .line 47
    :cond_21
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->-$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Lcom/android/server/ibs/IntelligentBatterySaverService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainActionEnable(Z)V

    :goto_2c
    return-void
.end method
