.class Lcom/samsung/android/server/wifi/SemIWCMonitor$10;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$10;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 638
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor$10;->accept(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 641
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$10;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->reportWifiControlHistory(Ljava/lang/String;Z)V

    return-void
.end method
