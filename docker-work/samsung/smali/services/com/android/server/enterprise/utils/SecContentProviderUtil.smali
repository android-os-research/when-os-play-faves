.class public Lcom/android/server/enterprise/utils/SecContentProviderUtil;
.super Ljava/lang/Object;
.source "SecContentProviderUtil.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field public static final TAG:Ljava/lang/String; = "SecContentProviderUtil"


# direct methods
.method public static synthetic $r8$lambda$Fwk20uwVRMGgttfWEd3wmQSjWjg(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->lambda$notifyPolicyChangesAsUser$0(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$notifyPolicyChangesAsUser$0(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    return-void
.end method

.method public static notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 9

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 109
    :try_start_5
    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_2b
    .catchall {:try_start_5 .. :try_end_24} :catchall_29

    goto :goto_d

    .line 116
    :cond_25
    :goto_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44

    :catchall_29
    move-exception p0

    goto :goto_45

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string v2, "SecContentProviderUtil"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyPolicyChangesAllUser() : failed to notify. uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_29

    goto :goto_25

    :goto_44
    return-void

    .line 116
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 8

    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 97
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 102
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    :catchall_11
    move-exception p0

    goto :goto_35

    :catch_13
    move-exception p0

    :try_start_14
    const-string v2, "SecContentProviderUtil"

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyPolicyChangesAsUser() : failed to notify. userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uri = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_11

    goto :goto_d

    :goto_34
    return-void

    .line 102
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    throw p0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.knox.provider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
