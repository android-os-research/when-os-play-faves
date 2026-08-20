.class public final Lcom/android/server/trust/TrustManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

.field public final TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mIsAutomotive:Z

.field public mLockWhenTrustLost:Z

.field public mTrustAgentsNonrenewableTrust:Z

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V
    .registers 4

    .line 317
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 318
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p2, "trust_agents_extend_unlock"

    .line 302
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    const-string p2, "lock_screen_when_trust_lost"

    .line 305
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    .line 320
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.type.automotive"

    .line 321
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    .line 323
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    return-void
.end method


# virtual methods
.method public getLockWhenTrustLost()Z
    .registers 1

    .line 371
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    return p0
.end method

.method public getTrustAgentsNonrenewableTrust()Z
    .registers 1

    .line 367
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsNonrenewableTrust:Z

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 345
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 348
    iget-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mIsAutomotive:Z

    xor-int/2addr p1, v0

    .line 350
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    const-string/jumbo v3, "trust_agents_extend_unlock"

    .line 351
    invoke-static {p2, v3, p1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mTrustAgentsNonrenewableTrust:Z

    goto :goto_3f

    .line 356
    :cond_23
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 357
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result p2

    const-string v2, "lock_screen_when_trust_lost"

    .line 358
    invoke-static {p1, v2, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mLockWhenTrustLost:Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateContentObserver()V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 333
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 339
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->TRUST_AGENTS_EXTEND_UNLOCK:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->LOCK_SCREEN_WHEN_TRUST_LOST:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
