.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;
.super Landroid/database/ContentObserver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 2

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-$$Nest$mupdateSubStatus(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    return-void
.end method
