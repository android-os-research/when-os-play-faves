.class public Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;,
        Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field public final FIREWALL_POLICY_SERVICE:Ljava/lang/String;

.field public final NUM_OF_CONTAINER:I

.field public mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;",
            ">;>;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 91
    iput v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->NUM_OF_CONTAINER:I

    const-string v0, "FirewallPolicy"

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->FIREWALL_POLICY_SERVICE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 162
    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 164
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->loadProxySettings()V

    return-void
.end method

.method public static validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 543
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_59

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_59

    .line 548
    :cond_e
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_59

    if-lez p1, :cond_59

    const v0, 0xffff

    if-le p1, v0, :cond_1a

    goto :goto_59

    :cond_1a
    const-string p1, "a-zA-Z0-9\\_"

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^$|^["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]+(\\-["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]+)*(\\.["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]+)*)*$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 562
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 564
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 566
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_57

    return v1

    :cond_57
    const/4 p0, 0x1

    return p0

    :catch_59
    :cond_59
    :goto_59
    return v1
.end method


# virtual methods
.method public clearHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 446
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 447
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 448
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 451
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BrowserPolicy"

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 453
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "BROWSER_PROXY"

    invoke-virtual {v2, v4, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 456
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 458
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 461
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_9d
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string p1, "BrowserPolicy/getHttpProxy"

    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p0, "clearHttpProxy() : SecContentProvider updated."

    .line 465
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :cond_aa
    const/4 v0, 0x0

    .line 469
    :cond_ab
    :goto_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "clearHttpProxy() : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1220
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    const-string p0, "Permission Denial: can\'t dump SecurityPolicy"

    .line 1222
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1225
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string p1, "browserSettings"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "BROWSER"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 212
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 231
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceBrowserProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 238
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 219
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 225
    invoke-virtual {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 7

    const-string v0, "BrowserPolicy"

    .line 330
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v1, 0x1

    .line 338
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "BROWSER"

    const-string v3, "browserSettings"

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 341
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 342
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1b

    and-int/2addr p1, p2

    if-eq p2, p1, :cond_1b

    const/4 p0, 0x0

    move v1, p0

    goto :goto_3f

    :cond_33
    const-string p0, "getBrowserSettingStatus() : No Policy in BrowserPolicy."

    .line 363
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception p0

    const-string p1, "getBrowserSettingStatus() : failed. "

    .line 366
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :cond_3f
    :goto_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBrowserSettingStatus("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 201
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 203
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 5

    .line 479
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 480
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 482
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 483
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-static {p0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->-$$Nest$fgetmProxySetting(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;

    move-result-object p0

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    .line 485
    :goto_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHttpProxy() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrowserPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 5

    .line 665
    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 666
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-eqz p2, :cond_e

    .line 669
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 672
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object p2

    .line 673
    iget-boolean p3, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    if-nez p3, :cond_24

    const-string p3, "filtering"

    .line 674
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    const/4 p1, 0x1

    .line 676
    iput-boolean p1, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 677
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 679
    :cond_24
    iget-boolean p0, p2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    return p0
.end method

.method public getURLFilterEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 7

    if-eqz p3, :cond_7

    .line 650
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_1a

    .line 652
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1a

    .line 657
    :catch_c
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "getURLFilterEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result p0

    return p0
.end method

.method public getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 7

    if-eqz p3, :cond_7

    .line 629
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_1a

    .line 631
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1a

    .line 636
    :catch_c
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "getURLFilterEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result p0

    return p0
.end method

.method public final getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 763
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p3

    const-string v0, "BrowserPolicy"

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getURLFilterList => userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " allAdmins "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_63

    .line 772
    iget-object p2, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter p2

    .line 773
    :try_start_37
    iget-boolean v1, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    if-nez v1, :cond_5c

    .line 774
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 775
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, "BrowserPolicy"

    const-string/jumbo v1, "getUrlBlackList - synchronized"

    .line 776
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object p1, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 778
    iget-object p1, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 779
    iput-boolean v0, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    goto :goto_5e

    .line 782
    :cond_5c
    iget-object p0, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 784
    :cond_5e
    :goto_5e
    monitor-exit p2

    goto :goto_68

    :catchall_60
    move-exception p0

    monitor-exit p2
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_60

    throw p0

    :cond_63
    const/4 p2, 0x0

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object p0

    :goto_68
    return-object p0
.end method

.method public getURLFilterListEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 746
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_1a

    .line 748
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1a

    .line 753
    :catch_c
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "getURLFilterList"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 726
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_1a

    .line 728
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1a

    .line 733
    :catch_c
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "getURLFilterList"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BrowserPolicy"

    const-string/jumbo v1, "getURLFilterReport()"

    .line 1033
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "time"

    .line 1036
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 1037
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const-string v5, "containerID"

    const-string/jumbo v6, "userID"

    .line 1040
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1045
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1046
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 1048
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WebFilterLogTable"

    invoke-virtual {p0, p1, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_47

    const-string/jumbo p0, "getURLFilterReport - cvList is null"

    .line 1051
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1055
    :cond_47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1057
    :cond_4b
    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1058
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1059
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_4b

    const-string v3, ":"

    .line 1062
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_71
    return-object v4
.end method

.method public final getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 5

    .line 1008
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p2

    .line 1010
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object p3

    .line 1011
    iget-boolean v0, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    if-nez v0, :cond_33

    const-string/jumbo v0, "logging"

    .line 1012
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    const/4 p1, 0x1

    .line 1014
    iput-boolean p1, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache.mUrlFilterReportState=> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebFilteringCache"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 1019
    :cond_33
    iget-boolean p0, p3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    return p0
.end method

.method public getURLFilterReportEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 7

    if-eqz p3, :cond_7

    .line 992
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_1a

    .line 994
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1a

    .line 999
    :catch_c
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "getURLFilterReportEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result p0

    return p0
.end method

.method public getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 7

    if-eqz p3, :cond_7

    .line 974
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_1a

    .line 976
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1a

    .line 981
    :catch_c
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "getURLFilterReportEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :goto_1a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result p0

    return p0
.end method

.method public getURLFilterReportEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1028
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1029
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getURLFilterReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1023
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1024
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReport(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUrlBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1122
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1123
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v2, "url"

    .line 1126
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 1127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getUrlBlackList - uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BrowserPolicy"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WebFilterTable"

    const/4 v7, 0x0

    if-nez p2, :cond_80

    .line 1130
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v5, v0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_3b

    const-string/jumbo p0, "getUrlBlackList - Cursor is null"

    .line 1134
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 1138
    :cond_3b
    :try_start_3b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1141
    :cond_41
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 1140
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_50} :catch_72
    .catch Landroid/database/SQLException; {:try_start_3b .. :try_end_50} :catch_58
    .catchall {:try_start_3b .. :try_end_50} :catchall_56

    if-nez p1, :cond_41

    .line 1150
    :cond_52
    :goto_52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_c4

    :catchall_56
    move-exception p1

    goto :goto_7c

    :catch_58
    move-exception p1

    .line 1148
    :try_start_59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurred accessing Enterprise db "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catch_72
    const-string/jumbo p1, "getUrlBlackList - IllegalArgumentException"

    .line 1145
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_56

    .line 1150
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v7

    :goto_7c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1151
    throw p1

    .line 1153
    :cond_80
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 1154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Getting URLList called by server for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v5, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_ac

    const-string/jumbo p0, "getUrlBlackList - cv is null"

    .line 1161
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 1166
    :cond_ac
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1167
    :goto_b0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 1168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1169
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_c4
    :goto_c4
    return-object v4
.end method

.method public final getUrlFilterState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUrlFilterState - uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " containerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " column:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BrowserPolicy"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1079
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getUrlFilterState - userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "WebFilterSettingsTable"

    invoke-virtual {p0, p1, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_76

    .line 1085
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1087
    :cond_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 1088
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1089
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5a

    const-string/jumbo v1, "true"

    .line 1090
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_77

    :cond_76
    move v0, v2

    .line 1097
    :goto_77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getUrlFilterState - ret: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .registers 7

    .line 1176
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    const/4 v1, 0x0

    if-nez v0, :cond_29

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move v3, v1

    :goto_13
    if-ge v3, v0, :cond_1f

    .line 1181
    new-instance v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    invoke-direct {v4, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;-><init>(I)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1183
    :cond_1f
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1186
    :cond_29
    aget-object p0, v0, v1

    return-object p0
.end method

.method public isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 800
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v2

    const-string v3, "BrowserPolicy"

    if-nez v2, :cond_11

    const-string/jumbo p0, "isUrlBlocked - Policy disabled"

    .line 803
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 807
    :cond_11
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterList(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v2

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "urlBlacklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_df

    .line 810
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_df

    .line 811
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    .line 812
    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 813
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    const-string v7, ".*"

    .line 814
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 816
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, "/"

    .line 817
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 818
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 820
    :cond_64
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 821
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_73
    const-string/jumbo v8, "http://"

    .line 823
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const-string/jumbo v12, "https://"

    if-eqz v9, :cond_87

    .line 824
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_91

    .line 825
    :cond_87
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 826
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 828
    :cond_91
    :goto_91
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 829
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a6

    .line 831
    :cond_9c
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 832
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 836
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 837
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 838
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_d3

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d3

    const/16 v7, 0x2f

    .line 840
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 841
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 842
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4
    :try_end_cc
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a6 .. :try_end_cc} :catch_cd

    goto :goto_d3

    :catch_cd
    const-string/jumbo v5, "isUrlBlocked - Regex is not valid"

    .line 845
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    :goto_d3
    if-ne v4, v0, :cond_37

    .line 850
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :cond_de
    move v1, v4

    .line 858
    :cond_df
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isUrlBlocked: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 5

    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isUrlBlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrowserPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 795
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadProxySettings()V
    .registers 11

    const-string v0, "adminUid"

    const-string/jumbo v1, "proxyServer"

    .line 170
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 172
    :try_start_9
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "BROWSER_PROXY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 175
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 177
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_36

    .line 178
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 180
    :cond_36
    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getContainerIdFromLUID(J)I

    move-result v3

    .line 181
    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result v5

    .line 182
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 184
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 185
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_5c
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 188
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v9, v6, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_8a
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a3} :catch_a5

    goto/16 :goto_16

    :catch_a5
    move-exception p0

    const-string v0, "BrowserPolicy"

    const-string/jumbo v1, "loadProxySettings() : failed"

    .line 193
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ae
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 6

    .line 495
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 498
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {p1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 500
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 503
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6

    .line 523
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 524
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    .line 525
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result p2

    if-eqz p2, :cond_89

    .line 526
    iget-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {p2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 528
    iget-object p2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 531
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4

    .line 514
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy;->removeAdmin(Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3

    return-void
.end method

.method public final refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V
    .registers 6

    .line 1190
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 1194
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1195
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    if-eqz v0, :cond_32

    .line 1197
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1198
    aput-object p1, v0, v1

    .line 1199
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-void
.end method

.method public final removeAdmin(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    .line 1205
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object p0

    .line 1207
    iget-object p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 1208
    iput-boolean p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 1209
    iput-boolean p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 1210
    iput-boolean p1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    return-void
.end method

.method public final saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 8

    const-string v0, "BrowserPolicy"

    const-string/jumbo v1, "saveURLBlockedReport"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 894
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveURLBlockedReport > userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 897
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "url"

    .line 898
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "time"

    invoke-virtual {v3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 900
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "containerID"

    invoke-virtual {v3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "userID"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "WebFilterLogTable"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    if-nez p0, :cond_62

    const-string/jumbo p0, "isUrlBlocked - Failed on inserting log"

    .line 904
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void
.end method

.method public saveURLBlockedReportEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6

    .line 882
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_19

    :catch_4
    const-string v0, "BrowserPolicy"

    const-string v1, "Enforcing Chrome permission"

    .line 884
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :goto_19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method public saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 6

    .line 868
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermissionByContext(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_19

    :catch_4
    const-string v0, "BrowserPolicy"

    const-string v1, "Enforcing Chrome permission"

    .line 870
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    const-string v1, "FirewallPolicy"

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final saveUrlBlackList(IILjava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1102
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 1103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1105
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WebFilterTable"

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(Ljava/lang/String;II)Z

    .line 1106
    :goto_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1108
    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "adminUid"

    .line 1107
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveUrlBlackList - cv: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BrowserPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_50

    const/4 p0, 0x0

    return p0

    .line 1115
    :cond_50
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_10

    :cond_54
    const/4 p0, 0x1

    return p0
.end method

.method public setBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .registers 15

    const-string/jumbo v0, "setBrowserSettingStatus("

    const-string v1, "browserSettings"

    const-string v2, "BROWSER"

    const-string v3, "BrowserPolicy"

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 254
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 255
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 262
    :try_start_18
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_22
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    goto :goto_3c

    :catchall_1f
    move-exception p0

    goto/16 :goto_ff

    :catch_22
    move-exception v7

    .line 265
    :try_start_23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") : EdmStorageProvider failed to read Data. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v7, 0x1f

    :goto_3c
    if-ne v6, p2, :cond_40

    or-int/2addr v7, p3

    goto :goto_42

    :cond_40
    not-int v8, p3

    and-int/2addr v7, v8

    .line 270
    :goto_42
    iget-object v8, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p1, v2, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_48} :catch_4c
    .catchall {:try_start_23 .. :try_end_48} :catchall_1f

    .line 275
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_68

    :catch_4c
    move-exception v1

    .line 273
    :try_start_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") : failed. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_1f

    .line 275
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    .line 278
    :goto_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrowserSettingStatus() : = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",  setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_fe

    if-eq p3, v6, :cond_f1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_e9

    const/4 v1, 0x4

    if-eq p3, v1, :cond_a4

    const/16 p1, 0x10

    if-eq p3, p1, :cond_9c

    goto :goto_f8

    .line 310
    :cond_9c
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string p1, "BrowserPolicy/getJavaScriptSetting"

    invoke-static {p0, p1, v10}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_f8

    .line 294
    :cond_a4
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string p3, "BrowserPolicy/getAutoFillSetting"

    .line 295
    invoke-static {p0, p3, v10}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 301
    :try_start_b2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "BrowserPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Admin "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_cf

    const-string p1, "enabled"

    goto :goto_d1

    :cond_cf
    const-string p1, "disabled"

    .line 302
    :goto_d1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Auto Fill Setting "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 300
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e0
    .catchall {:try_start_b2 .. :try_end_e0} :catchall_e4

    .line 306
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f8

    :catchall_e4
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    throw p0

    .line 288
    :cond_e9
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string p1, "BrowserPolicy/getCookiesSetting"

    .line 289
    invoke-static {p0, p1, v10}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_f8

    .line 283
    :cond_f1
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string p1, "BrowserPolicy/getPopupsSetting"

    .line 284
    invoke-static {p0, p1, v10}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_f8
    const-string/jumbo p0, "setBrowserSettingStatus() : SecContentProvider updated."

    .line 315
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    return v0

    .line 275
    :goto_ff
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    throw p0
.end method

.method public setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 12

    const-string v0, "BrowserPolicy"

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 379
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 380
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 381
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_12

    return v3

    :cond_12
    const-string v4, ":"

    .line 388
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 389
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 390
    aget-object v5, v4, v3

    const/4 v6, 0x1

    .line 391
    aget-object v4, v4, v6

    goto :goto_27

    :cond_24
    const-string v4, "80"

    move-object v5, p2

    .line 396
    :goto_27
    invoke-static {v5, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;->validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    return v3

    .line 400
    :cond_2e
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_39

    return v3

    .line 404
    :cond_39
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 405
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_53
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 408
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v7, v2, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_81
    :try_start_81
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 412
    invoke-virtual {v5}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isAlreadySet()Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v6

    if-eqz v6, :cond_a4

    goto :goto_a6

    :cond_a4
    move p1, v3

    goto :goto_be

    .line 413
    :cond_a6
    :goto_a6
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "proxyServer"

    .line 414
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v7, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BROWSER_PROXY"

    invoke-virtual {v7, v1, p1, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 418
    invoke-virtual {v5, v1, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;)V

    :cond_be
    :goto_be
    if-eqz p1, :cond_cd

    .line 425
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "BrowserPolicy/getHttpProxy"

    invoke-static {p0, v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo p0, "setHttpProxy() : SecContentProvider updated."

    .line 427
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_cd} :catch_cf

    :cond_cd
    move v3, p1

    goto :goto_d6

    :catch_cf
    move-exception p0

    const-string/jumbo p1, "setHttpProxy() : failed."

    .line 431
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    :goto_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setHttpProxy("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 8

    const-string v0, "BrowserPolicy"

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setURLFilterEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 592
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 593
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 595
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "filtering"

    .line 596
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v3, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WebFilterSettingsTable"

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_66

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v2

    .line 603
    iget-object v3, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v3

    .line 604
    :try_start_44
    iget-object v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    .line 605
    iput-boolean v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 606
    iput-boolean v4, v2, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 607
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    if-nez p2, :cond_5a

    .line 609
    iget-object v2, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WebFilterTable"

    invoke-virtual {v2, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    .line 611
    :cond_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_63

    .line 614
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "FirewallPolicy/getURLFilterEnabled"

    invoke-static {p0, v1, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_66

    :catchall_63
    move-exception p0

    .line 611
    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0

    :cond_66
    :goto_66
    const-string p0, "BrowserPolicy"

    .line 618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setURLFilterEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setURLFilterEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 3

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    return p0
.end method

.method public setURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 3

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    return p0
.end method

.method public final setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 694
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 695
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 696
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    const/4 v2, 0x0

    if-nez p2, :cond_c

    return v2

    .line 702
    :cond_c
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveUrlBlackList(IILjava/util/List;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_30

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 706
    iget-object v1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v1

    .line 707
    :try_start_1a
    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 708
    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 709
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 710
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2d

    .line 713
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v0, "FirewallPolicy/getURLFilterList"

    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_30

    :catchall_2d
    move-exception p0

    .line 710
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    :goto_30
    return p2
.end method

.method public setURLFilterListEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public setURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 684
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 10

    .line 922
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 923
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 924
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 926
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 927
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "logging"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v4, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WebFilterSettingsTable"

    invoke-virtual {v4, v1, v0, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    const-string v1, "BrowserPolicy"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4c

    .line 932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v5

    .line 935
    iput-boolean v4, v5, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 936
    iput-boolean v4, v5, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 937
    invoke-virtual {p0, v5, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 940
    iget-object v5, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v6, "FirewallPolicy/getURLFilterReportEnabled"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 946
    :cond_4c
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result p1

    if-eqz p2, :cond_54

    if-nez p1, :cond_79

    :cond_54
    const-string/jumbo p1, "setURLFilterReportEnabled - Clean url report"

    .line 948
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "containerID"

    const-string/jumbo p2, "userID"

    .line 951
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 956
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v4

    .line 957
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    .line 959
    iget-object p0, p0, Lcom/android/server/enterprise/browser/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "WebFilterLogTable"

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 963
    :cond_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setURLFilterReportEnabled - return = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingBrowserPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 3

    .line 917
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    return p0
.end method

.method public setURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 3

    .line 911
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 912
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->setURLFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0

    return p0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
