.class public Lcom/samsung/android/mcf/delegation/BleScanRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    }
.end annotation


# static fields
.field public static final API_GET_ALL:Ljava/lang/String; = "getAll"

.field public static final API_GET_ALL_BY_PKG:Ljava/lang/String; = "getAllByPkg"

.field public static final API_GET_COUNT:Ljava/lang/String; = "getScanRequestCount"

.field public static final API_REGISTER:Ljava/lang/String; = "registerScanRequest"

.field public static final API_UNREGISTER:Ljava/lang/String; = "unregisterScanRequest"

.field public static final API_UNREGISTER_ALL:Ljava/lang/String; = "unregisterAll"

.field public static final API_UNREGISTER_ALL_BY_PKG:Ljava/lang/String; = "unregisterAllByPkg"

.field public static final KEY_APP_DATA:Ljava/lang/String; = "appData"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_JSON_STRING:Ljava/lang/String; = "objString"

.field public static final KEY_LIST:Ljava/lang/String; = "reqList"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final KEY_RETURN:Ljava/lang/String; = "return"

.field public static final KEY_SCAN_ACTION:Ljava/lang/String; = "scanAction"

.field public static final KEY_SCAN_ERROR:Ljava/lang/String; = "scanError"

.field public static final KEY_SCAN_OFF_FILTER:Ljava/lang/String; = "bleScanOffFilter"

.field public static final KEY_SCAN_ON_FILTER:Ljava/lang/String; = "bleScanOnFilter"

.field public static final KEY_SCAN_RESULT:Ljava/lang/String; = "scanResults"

.field public static final KEY_SCAN_SETTINGS:Ljava/lang/String; = "scanSettings"

.field public static final TAG:Ljava/lang/String; = "BleScanRequest"

.field public static final URI_API:Landroid/net/Uri;


# instance fields
.field public final packageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final requestId:I

.field public final scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final screenOffFilters:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final screenOnFilters:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.samsung.android.mcfserver.provider/api"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/ble/BleScanSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/mcf/delegation/BleScanAction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/delegation/BleScanAction;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    iput-object p3, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    iput-object p6, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanRequest;
    .registers 13

    const-string/jumbo v0, "scanAction"

    const-string/jumbo v1, "scanSettings"

    const-string v2, "bleScanOffFilter"

    const-string v3, "bleScanOnFilter"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "packageName"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo p0, "requestId"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v9, 0x0

    if-eqz p0, :cond_4a

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    move v3, v9

    :goto_34
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_4a

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/mcf/ble/BleScanFilter;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v10

    if-eqz v10, :cond_47

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_4a
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_54
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_6a

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v2

    if-eqz v2, :cond_67

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    :cond_6a
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7a

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/ble/BleScanSettings;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object p0

    move-object v9, p0

    goto :goto_7b

    :cond_7a
    move-object v9, v11

    :goto_7b
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8b

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction;

    move-result-object p0

    move-object v10, p0

    goto :goto_8c

    :cond_8b
    move-object v10, v11

    :goto_8c
    new-instance p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/mcf/delegation/BleScanRequest;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_92} :catch_93

    return-object p0

    :catch_93
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanRequest"

    const-string v1, "fromJsonString - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public convertScreenOffFilters()Ljava/util/List;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ble/BleScanFilter;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public covertScreenOnFilters()Ljava/util/List;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ble/BleScanFilter;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    const-string/jumbo v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "objString"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s/%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFilterCount()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_11

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    goto :goto_13

    :cond_11
    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    :goto_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestId()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    return p0
.end method

.method public getScanAction()Lcom/samsung/android/mcf/delegation/BleScanAction;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    return-object p0
.end method

.method public getScanSettings()Lcom/samsung/android/mcf/ble/BleScanSettings;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    return-object p0
.end method

.method public getScreenOffFilters()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getScreenOnFilters()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isValidRegisterScanInfo()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "isValidRegisterScanInfo "

    const-string v3, "BleScanRequest"

    if-eqz v0, :cond_14

    const-string v0, "PackageName is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v0, " BleScanFilter is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_2b
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-nez v4, :cond_35

    const-string v0, " BleScanSettings is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_35
    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-nez p0, :cond_3f

    const-string p0, " Scan action is empty"

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_3f
    move v1, v0

    :goto_40
    return v1
.end method

.method public sendScanError(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    const-string/jumbo v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "scanError"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public sendScanResult(Landroid/content/Context;Landroid/bluetooth/le/ScanResult;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    const-string/jumbo v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "scanResults"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "requestId"

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    invoke-virtual {v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_28

    :cond_3c
    const-string v2, "bleScanOnFilter"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    invoke-virtual {v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_54

    :cond_68
    const-string v2, "bleScanOffFilter"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6d
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-eqz v1, :cond_7b

    const-string/jumbo v2, "scanSettings"

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7b
    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-eqz p0, :cond_89

    const-string/jumbo v1, "scanAction"

    invoke-virtual {p0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->toJsonString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8d} :catch_8e

    return-object p0

    :catch_8e
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanRequest"

    const-string/jumbo v1, "toJsonObject : "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleScanRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/16 v3, 0x9

    if-nez v2, :cond_5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screenOnFilters - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/ble/BleScanFilter;

    const-string v5, "\t\t\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_5f
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screenOffFilters - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/ble/BleScanFilter;

    const-string v5, "\t\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_82

    :cond_9e
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-eqz v2, :cond_b1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b1
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-eqz v2, :cond_c4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
