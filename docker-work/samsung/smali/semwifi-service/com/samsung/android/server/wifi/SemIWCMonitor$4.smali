.class Lcom/samsung/android/server/wifi/SemIWCMonitor$4;
.super Landroid/database/ContentObserver;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/os/Handler;)V
    .registers 3

    .line 426
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 430
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return-void
.end method
