.class public Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;
.super Landroid/telephony/TelephonyCallback;
.source "TelephonySubscriptionTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/TelephonySubscriptionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveDataSubscriptionIdListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V
    .registers 2

    .line 554
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .registers 2

    .line 558
    iget-object p0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    return-void
.end method
