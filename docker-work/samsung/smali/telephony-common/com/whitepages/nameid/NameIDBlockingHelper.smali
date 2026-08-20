.class public Lcom/whitepages/nameid/NameIDBlockingHelper;
.super Ljava/lang/Object;
.source "NameIDBlockingHelper.java"


# static fields
.field private static blacklist s_options:Landroid/os/Bundle;


# direct methods
.method private static blacklist getActivePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.whitepages.nameid.NAME_ID_PACKAGE"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "com.whitepages.nameid.tmobile"

    :cond_12
    return-object p0
.end method

.method public static blacklist getLastOptions()Landroid/os/Bundle;
    .registers 2

    .line 56
    sget-object v0, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 57
    sput-object v1, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    return-object v0
.end method

.method public static blacklist getOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    const-string v0, "NAME_ID_ORIGINAL_INTENT"

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public static blacklist isNameIDInstalledAndEnabled(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "NameIDHelper"

    const/4 v1, 0x0

    .line 81
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 83
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_14

    return v1

    .line 86
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got package info. enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception p0

    const-string v2, "error trying to detect package -- we are probably not installed"

    .line 90
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static blacklist isNameIdAction(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    .line 66
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static blacklist wasAborted(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static blacklist wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 6

    .line 37
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 39
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object p2, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    const-string p2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    .line 42
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    return-object p1

    .line 45
    :cond_1e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_43

    new-array p2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "%s/com.whitepages.nameid.service.MmsReceiver"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_58

    :cond_43
    new-array p2, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "%s/com.whitepages.nameid.service.SmsReceiver"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_58
    const-string p0, "NAME_ID_ORIGINAL_INTENT"

    .line 51
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method
