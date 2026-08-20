.class Lcom/android/internal/telephony/data/PhoneSwitcher$2;
.super Lcom/android/internal/telephony/SubscriptionController$WatchedInt;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;I)V
    .registers 3

    .line 255
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist set(I)V
    .registers 2

    .line 258
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->set(I)V

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->invalidateActiveDataSubIdCaches()V

    return-void
.end method
