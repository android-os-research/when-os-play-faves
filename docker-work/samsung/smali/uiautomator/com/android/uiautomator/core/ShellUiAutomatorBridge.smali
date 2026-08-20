.class public Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
.super Lcom/android/uiautomator/core/UiAutomatorBridge;
.source "ShellUiAutomatorBridge.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/UiAutomation;)V
    .registers 2
    .param p1, "uiAutomation"    # Landroid/app/UiAutomation;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiAutomatorBridge;-><init>(Landroid/app/UiAutomation;)V

    .line 50
    return-void
.end method

.method private static resolveCallingPackage()Ljava/lang/String;
    .registers 1

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 136
    :sswitch_9
    const-string v0, "com.android.shell"

    return-object v0

    .line 133
    :sswitch_c
    const-string v0, "root"

    return-object v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_c
        0x7d0 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getDefaultDisplay()Landroid/view/Display;
    .registers 3

    .line 53
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .registers 6

    .line 104
    nop

    .line 105
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 106
    .local v0, "wm":Landroid/view/IWindowManager;
    const/4 v1, -0x1

    .line 108
    .local v1, "ret":I
    :try_start_c
    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_13

    move v1, v2

    .line 112
    nop

    .line 113
    return v1

    .line 109
    :catch_13
    move-exception v2

    .line 110
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error getting screen rotation"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemLongPressTime()J
    .registers 17

    .line 58
    const-wide/16 v1, 0x0

    .line 60
    .local v1, "longPressTimeout":J
    const/4 v3, 0x0

    .line 61
    .local v3, "provider":Landroid/content/IContentProvider;
    const/4 v4, 0x0

    .line 62
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v5, v0

    .line 63
    .local v5, "activityManager":Landroid/app/IActivityManager;
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 64
    .local v6, "providerName":Ljava/lang/String;
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_89

    move-object v7, v0

    .line 66
    .local v7, "token":Landroid/os/IBinder;
    const/4 v8, 0x0

    :try_start_17
    const-string v0, "*uiautomator*"

    invoke-interface {v5, v6, v8, v7, v0}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 68
    .local v0, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v0, :cond_63

    .line 71
    iget-object v9, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object v3, v9

    .line 72
    new-instance v11, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 73
    invoke-static {}, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-direct {v11, v9, v10, v12}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v9, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "value"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v13

    const-string v10, "name=?"

    const-string v14, "long_press_timeout"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-static {v10, v14, v12}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    .line 72
    move-object v10, v3

    move-object v12, v9

    invoke-interface/range {v10 .. v15}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    move-object v4, v9

    .line 82
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 83
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_7c

    int-to-long v1, v9

    .line 86
    .end local v0    # "holder":Landroid/app/ContentProviderHolder;
    :cond_57
    if-eqz v4, :cond_5c

    .line 87
    :try_start_59
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_5c
    if-eqz v3, :cond_61

    .line 90
    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_61} :catch_89

    .line 98
    .end local v3    # "provider":Landroid/content/IContentProvider;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "activityManager":Landroid/app/IActivityManager;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v7    # "token":Landroid/os/IBinder;
    :cond_61
    nop

    .line 99
    return-wide v1

    .line 69
    .restart local v0    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v3    # "provider":Landroid/content/IContentProvider;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "activityManager":Landroid/app/IActivityManager;
    .restart local v6    # "providerName":Ljava/lang/String;
    .restart local v7    # "token":Landroid/os/IBinder;
    :cond_63
    :try_start_63
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find provider: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "longPressTimeout":J
    .end local v3    # "provider":Landroid/content/IContentProvider;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "activityManager":Landroid/app/IActivityManager;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v7    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
    throw v9
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_7c

    .line 86
    .end local v0    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "longPressTimeout":J
    .restart local v3    # "provider":Landroid/content/IContentProvider;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "activityManager":Landroid/app/IActivityManager;
    .restart local v6    # "providerName":Ljava/lang/String;
    .restart local v7    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
    :catchall_7c
    move-exception v0

    if-eqz v4, :cond_82

    .line 87
    :try_start_7f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_82
    if-eqz v3, :cond_87

    .line 90
    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 93
    :cond_87
    nop

    .end local v1    # "longPressTimeout":J
    .end local p0    # "this":Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
    throw v0
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_89} :catch_89

    .line 94
    .end local v3    # "provider":Landroid/content/IContentProvider;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "activityManager":Landroid/app/IActivityManager;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v7    # "token":Landroid/os/IBinder;
    .restart local v1    # "longPressTimeout":J
    .restart local p0    # "this":Lcom/android/uiautomator/core/ShellUiAutomatorBridge;
    :catch_89
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Error reading long press timeout setting."

    .line 96
    .local v3, "message":Ljava/lang/String;
    sget-object v4, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isScreenOn()Z
    .registers 6

    .line 118
    nop

    .line 119
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 120
    .local v0, "pm":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    .line 122
    .local v1, "ret":Z
    :try_start_c
    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_13

    move v1, v2

    .line 126
    nop

    .line 127
    return v1

    .line 123
    :catch_13
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/uiautomator/core/ShellUiAutomatorBridge;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error getting screen status"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
