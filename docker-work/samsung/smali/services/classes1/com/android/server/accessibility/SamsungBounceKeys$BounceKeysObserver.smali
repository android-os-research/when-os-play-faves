.class public final Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;
.super Landroid/database/ContentObserver;
.source "SamsungBounceKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungBounceKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BounceKeysObserver"
.end annotation


# instance fields
.field public final mBounceKeysSettingsUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungBounceKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungBounceKeys;ILandroid/os/Handler;)V
    .registers 4

    .line 122
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 123
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bounce_keys_period"

    .line 118
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    .line 124
    iput p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    .line 149
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 150
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    const-string v2, "bounce_keys_period"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/accessibility/SamsungBounceKeys;->-$$Nest$fputmBounceKeysPeriod(Lcom/android/server/accessibility/SamsungBounceKeys;F)V

    .line 152
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungBounceKeys;->-$$Nest$fgetmBounceKeysPeriod(Lcom/android/server/accessibility/SamsungBounceKeys;)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/SamsungBounceKeys;->-$$Nest$fputmBounceKeysPeriodMilli(Lcom/android/server/accessibility/SamsungBounceKeys;J)V

    :cond_26
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1f

    if-eqz p1, :cond_17

    .line 135
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mUserId:I

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mBounceKeysSettingsUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 132
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ContentResolver is not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer has already been started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_8

    .line 144
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 142
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BounceKeysObserver has not been started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
