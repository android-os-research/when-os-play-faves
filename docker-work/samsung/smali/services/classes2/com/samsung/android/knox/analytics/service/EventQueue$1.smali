.class public Lcom/samsung/android/knox/analytics/service/EventQueue$1;
.super Landroid/content/BroadcastReceiver;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$msaveCachedLogs(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    return-void
.end method
