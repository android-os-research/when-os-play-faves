.class public final Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
.super Landroid/database/ContentObserver;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TouchBlockingObserver"
.end annotation


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mTapDurationSettingsUri:Landroid/net/Uri;

.field public final mTouchBlockingSettingsUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILandroid/os/Handler;)V
    .registers 4

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 33
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "touch_blocking_period"

    .line 26
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    const-string/jumbo p1, "tap_duration_enabled"

    .line 28
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    .line 34
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 61
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 62
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    const-string/jumbo v2, "touch_blocking_period"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p2

    iput p2, p1, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    .line 64
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    goto :goto_42

    .line 65
    :cond_25
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 66
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    const-string/jumbo v0, "tap_duration_enabled"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_3f

    move v1, p2

    :cond_3f
    invoke-static {p1, v1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->-$$Nest$fputmTapDurationEnabled(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V

    :cond_42
    :goto_42
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_2d

    if-eqz p1, :cond_25

    .line 45
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 49
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 42
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ContentResolver is not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    .line 56
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 54
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TouchBlockingObserver has not been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
