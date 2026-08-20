.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;
.super Landroid/util/SparseIntArray;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 3

    .line 2145
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 2146
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$9;->put(II)V

    return-void
.end method
