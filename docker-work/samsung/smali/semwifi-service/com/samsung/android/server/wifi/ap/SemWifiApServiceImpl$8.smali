.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;
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

    .line 2141
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p1, 0x2

    const/16 v0, 0x95

    .line 2142
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$8;->put(II)V

    return-void
.end method
