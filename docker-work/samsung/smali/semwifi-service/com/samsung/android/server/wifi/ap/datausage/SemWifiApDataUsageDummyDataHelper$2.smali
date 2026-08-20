.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$2;
.super Ljava/lang/Object;
.source "SemWifiApDataUsageDummyDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->deleteAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 241
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    move-result-object v0

    if-nez v0, :cond_14

    .line 242
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfputmSemWifiApDataUsageDbHelper(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;)V

    .line 244
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-result-object v0

    if-nez v0, :cond_28

    .line 245
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfputmSemWifiApClientUsageSettingDbHelper(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V

    .line 247
    :cond_28
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->resetTable()V

    .line 248
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->resetTable()V

    return-void
.end method
