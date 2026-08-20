.class public Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DB_IBS_SWITCH:Ljava/lang/String; = "ibs_switch"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field public mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIBSService(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)Lcom/android/server/ibs/IntelligentBatterySaverService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IntelligentBatterySaverSettingsObserver"

    .line 13
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 7

    .line 24
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    const/4 v1, 0x0

    const-string/jumbo v2, "ibs_switch"

    if-nez v0, :cond_1f

    .line 25
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 26
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 27
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 30
    :cond_1f
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_34

    .line 31
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainActionEnable(Z)V

    goto :goto_3b

    .line 33
    :cond_34
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainActionEnable(Z)V

    :goto_3b
    return-void
.end method
