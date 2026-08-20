.class public Lcom/samsung/android/mcf/delegation/BleScanAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    }
.end annotation


# static fields
.field public static final KEY_ACTION_NAME:Ljava/lang/String; = "action"

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final KEY_EXTRA:Ljava/lang/String; = "appData"

.field public static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TAG:Ljava/lang/String; = "BleScanAction"

.field public static final TYPE_ACTIVITY:I = 0x2

.field public static final TYPE_BROADCAST:I = 0x1

.field public static final TYPE_SERVICE:I


# instance fields
.field public final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction;
    .registers 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "type"

    const-string v1, "className"

    const-string/jumbo v2, "packageName"

    const-string v3, "appData"

    const-string v4, "flags"

    const-string v5, "action"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :try_start_13
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v6, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v6, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_47
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    new-instance p0, Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-direct {p0, v6}, Lcom/samsung/android/mcf/delegation/BleScanAction;-><init>(Landroid/os/Bundle;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_59} :catch_5a

    return-object p0

    :catch_5a
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanAction"

    const-string v1, "BleScanAction - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public send(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "BleScanAction"

    const-string/jumbo v1, "send"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v4, "className"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_31
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "flags"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_44
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "appData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_57
    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_68

    :try_start_62
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_7b

    :catch_66
    move-exception p0

    goto :goto_78

    :cond_68
    const/4 v2, 0x2

    if-ne p0, v2, :cond_6f

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7b

    :cond_6f
    const/4 v2, 0x1

    if-ne p0, v2, :cond_7b

    const-string p0, "com.samsung.android.mcfserver.permission.USE_PROVIDER_API"

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_77} :catch_66

    goto :goto_7b

    :goto_78
    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "appData"

    const-string v1, "flags"

    const-string v2, "action"

    const-string/jumbo v3, "type"

    const-string v4, "className"

    const-string/jumbo v5, "packageName"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    :try_start_14
    iget-object v8, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_46

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_46
    iget-object p0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {v6, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_51
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_55} :catch_56

    return-object p0

    :catch_56
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanAction"

    const-string/jumbo v1, "toJsonObject : "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
