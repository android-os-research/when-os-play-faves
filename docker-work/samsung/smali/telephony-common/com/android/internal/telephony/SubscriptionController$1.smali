.class Lcom/android/internal/telephony/SubscriptionController$1;
.super Lcom/android/internal/telephony/SubscriptionController$WatchedInt;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist set(I)V
    .registers 2

    .line 311
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->set(I)V

    .line 312
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->-$$Nest$sminvalidateDefaultSubIdCaches()V

    .line 313
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateSlotIndexCaches()V

    return-void
.end method
