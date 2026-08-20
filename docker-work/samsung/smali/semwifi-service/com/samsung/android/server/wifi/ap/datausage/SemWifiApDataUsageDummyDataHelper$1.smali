.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;
.super Ljava/lang/Object;
.source "SemWifiApDataUsageDummyDataHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->generate6MonthsData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

.field final synthetic val$maxClientPerDay:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;I)V
    .registers 3

    .line 214
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;->val$maxClientPerDay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 217
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    move-result-object v0

    if-nez v0, :cond_14

    .line 218
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfputmSemWifiApDataUsageDbHelper(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;)V

    .line 220
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-result-object v0

    if-nez v0, :cond_28

    .line 221
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfputmSemWifiApClientUsageSettingDbHelper(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V

    .line 223
    :cond_28
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->resetTable()V

    .line 224
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->resetTable()V

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3b
    const/16 v2, 0xb4

    if-ge v1, v2, :cond_64

    .line 228
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;->val$maxClientPerDay:I

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$mgenerateTodayRandomData(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;IIIILcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V

    const/4 v3, -0x1

    .line 229
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 231
    :cond_64
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->deleteClientSettingIfLastUpdateIsBeforeNMonth(I)V

    .line 232
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->-$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->deleteDataBeforeNMonths(I)V

    return-void
.end method
