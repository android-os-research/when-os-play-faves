.class public final Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
.super Landroid/database/ContentObserver;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTapDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TapDurationObserver"
.end annotation


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mRemoveAnimationSettingUri:Landroid/net/Uri;

.field public final mTapDurationSettingUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V
    .registers 4

    .line 288
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 289
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "tap_duration_threshold"

    .line 280
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const-string/jumbo p1, "remove_animations"

    .line 282
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    .line 290
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 335
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 336
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    const-string/jumbo v2, "tap_duration_threshold"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p2

    iput p2, p1, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    .line 339
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    goto :goto_57

    .line 340
    :cond_25
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 341
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "remove_animations"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3b

    goto :goto_3c

    :cond_3b
    move p2, v0

    :goto_3c
    const/4 p1, 0x4

    if-ge v0, p1, :cond_57

    .line 344
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_54

    .line 345
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungTapDuration;->-$$Nest$fgetmDurationProgress(Lcom/android/server/accessibility/SamsungTapDuration;)[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setRemoveAnimationEnabled(Z)V

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_57
    :goto_57
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_2d

    if-eqz p1, :cond_25

    .line 310
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 311
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 313
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 316
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    .line 317
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 307
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    .line 330
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 328
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ClickDelayObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
