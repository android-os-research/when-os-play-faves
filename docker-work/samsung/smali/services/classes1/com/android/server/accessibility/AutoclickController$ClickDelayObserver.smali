.class public final Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;
.super Landroid/database/ContentObserver;
.source "AutoclickController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClickDelayObserver"
.end annotation


# instance fields
.field public final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field public mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .registers 3

    .line 167
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p2, "accessibility_autoclick_delay"

    .line 159
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 168
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 219
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 220
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/16 p2, 0x258

    iget v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    const-string v1, "accessibility_autoclick_delay"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 223
    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->updateDelay(I)V

    :cond_19
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/AutoclickController$ClickScheduler;)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-nez v0, :cond_2f

    if-eqz p1, :cond_27

    if-eqz p2, :cond_1f

    .line 194
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 195
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 196
    iget-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 200
    iget-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 191
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "clickScheduler not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    if-eqz v1, :cond_c

    .line 214
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 211
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ClickDelayObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
