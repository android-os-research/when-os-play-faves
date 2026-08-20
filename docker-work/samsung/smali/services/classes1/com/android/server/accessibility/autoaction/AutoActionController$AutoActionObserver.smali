.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;
.super Landroid/database/ContentObserver;
.source "AutoActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoaction/AutoActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoActionObserver"
.end annotation


# instance fields
.field public mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final mAutoActionDelaySettingUri:Landroid/net/Uri;

.field public final mAutoActionTypeSettingUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mCornerActionEnabledSettingUri:Landroid/net/Uri;

.field public final mPauseAutoClickWithSettingUri:Landroid/net/Uri;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .registers 3

    .line 177
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p2, "accessibility_auto_action_type"

    .line 163
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    const-string p2, "accessibility_auto_action_delay"

    .line 165
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    const-string p2, "accessibility_corner_action_enabled"

    .line 167
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    const-string p2, "accessibility_pause_auto_click_with"

    .line 169
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 178
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 238
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 239
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    const-string v1, "accessibility_auto_action_type"

    invoke-static {p1, v1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 242
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateType(I)V

    goto :goto_6d

    .line 243
    :cond_19
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 244
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/16 p2, 0x258

    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    const-string v1, "accessibility_auto_action_delay"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 247
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateDelay(I)V

    goto :goto_6d

    .line 248
    :cond_33
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4f

    .line 249
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    const-string v2, "accessibility_corner_action_enabled"

    invoke-static {p1, v2, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_49

    move v0, v1

    .line 251
    :cond_49
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->-$$Nest$msetCornerActionController(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Z)V

    goto :goto_6d

    .line 252
    :cond_4f
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 253
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    const-string v2, "accessibility_pause_auto_click_with"

    invoke-static {p1, v2, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_65

    goto :goto_66

    :cond_65
    move v1, v0

    :goto_66
    if-eqz v1, :cond_6d

    .line 256
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-nez v0, :cond_59

    if-eqz p1, :cond_51

    if-eqz p2, :cond_49

    .line 204
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 205
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 206
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 212
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 216
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 217
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 218
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 219
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 201
    :cond_49
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "actionScheduler not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_51
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v1, :cond_c

    .line 233
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 230
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AutoActionObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
