.class public Lcom/samsung/android/knox/analytics/service/EventQueue$2;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/analytics/service/EventQueue;->restartMessageHandler()V
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

    .line 194
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$2;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$2;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$msaveCachedLogs(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    return-void
.end method
