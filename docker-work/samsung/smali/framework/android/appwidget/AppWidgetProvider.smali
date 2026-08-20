.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .line 140
    return-void
.end method

.method public whitelist onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .line 156
    return-void
.end method

.method public whitelist onDisabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    return-void
.end method

.method public whitelist onEnabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 175
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "appWidgetIds"

    if-eqz v1, :cond_26

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 63
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_24

    .line 64
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 65
    .local v2, "appWidgetIds":[I
    if-eqz v2, :cond_24

    array-length v3, v2

    if-lez v3, :cond_24

    .line 66
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 69
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "appWidgetIds":[I
    :cond_24
    goto/16 :goto_b5

    :cond_26
    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "appWidgetId"

    if-eqz v1, :cond_4a

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_49

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 72
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, "appWidgetId":I
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-virtual {p0, p1, v3}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 75
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "appWidgetId":I
    :cond_49
    goto :goto_b5

    :cond_4a
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_75

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 78
    const-string v2, "appWidgetOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 79
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "appWidgetId":I
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 81
    .local v2, "widgetExtras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v3, v2}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 84
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "widgetExtras":Landroid/os/Bundle;
    .end local v3    # "appWidgetId":I
    :cond_75
    goto :goto_b5

    :cond_76
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 85
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_b5

    .line 86
    :cond_82
    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 87
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_b5

    .line 88
    :cond_8e
    const-string v1, "android.appwidget.action.APPWIDGET_RESTORED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 90
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_b5

    .line 91
    const-string v3, "appWidgetOldIds"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 92
    .local v3, "oldIds":[I
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 93
    .local v2, "newIds":[I
    if-eqz v3, :cond_b5

    array-length v4, v3

    if-lez v4, :cond_b5

    .line 94
    invoke-virtual {p0, p1, v3, v2}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 95
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 99
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "newIds":[I
    .end local v3    # "oldIds":[I
    :cond_b5
    :goto_b5
    return-void
.end method

.method public whitelist onRestored(Landroid/content/Context;[I[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldWidgetIds"    # [I
    .param p3, "newWidgetIds"    # [I

    .line 213
    return-void
.end method

.method public whitelist onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .line 121
    return-void
.end method
